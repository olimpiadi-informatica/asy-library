#!/usr/bin/env python3

import ast

class PseudoCode(ast.NodeVisitor):
    def generate(self, tree):
        self.lines = ['```srs']
        self.indent = 0
        self.visit(tree)
        self.lines.append('```')
        return "\n".join(self.lines)

    def emit(self, line):
        self.lines.append("    " * self.indent + line)

    def visit_Module(self, node):
        for stmt in node.body:
            self.visit(stmt)

    def visit_FunctionDef(self, node):
        params = []
        for arg in node.args.args:
            t = "integer"
            if arg.annotation:
                t = self.render_type(arg.annotation)
            params.append(f"{arg.arg}: {t}")
        func_name = node.name[1:] if node.name[0] == '_' else node.name
        if node.returns:
            ret_type = self.render_type(node.returns)
            self.emit(f"function {func_name}({', '.join(params)}) -> {ret_type}")
        else:
            self.emit(f"function {func_name}({', '.join(params)})")
        self.indent += 1
        for stmt in node.body:
            self.visit(stmt)
        self.indent -= 1
        self.emit("end function")

    def visit_Assign(self, node):
        # swap detection: a, b = b, a
        if isinstance(node.targets[0], ast.Tuple) and isinstance(node.value, ast.Tuple):
            left = [self.render_expr(t) for t in node.targets[0].elts]
            right = [self.render_expr(v) for v in node.value.elts]
            if len(left) == 2 and left[::-1] == right:
                self.emit(f"({left[0]}, {left[1]}) ← ({right[0]}, {right[1]})")
                return
        target = self.render_expr(node.targets[0])
        value = self.render_expr(node.value)
        self.emit(f"{target} <- {value}")

    def visit_AugAssign(self, node):
        target = self.render_expr(node.target)
        op = node.op
        val = self.render_expr(node.value)
        op_symbol = self.render_op(op)
        self.emit(f"{target} <- {target} {op_symbol} {val}")

    def visit_AnnAssign(self, node):
        assert isinstance(node.target, ast.Name)
        var = node.target.id
        t = self.render_type(node.annotation)
        self.emit(f"variable {var}: {t}")

    def visit_Expr(self, node):
        if isinstance(node.value, ast.Constant) and isinstance(node.value.value, str):
            val = node.value.value
        else:
            val = self.render_expr(node.value)
        self.emit(val)

    def visit_If(self, node):
        cond = self.render_expr(node.test)
        self.emit(f"if {cond} then")
        self.indent += 1
        for stmt in node.body:
            self.visit(stmt)
        self.indent -= 1
        if node.orelse:
            self.emit("else")
            self.indent += 1
            for stmt in node.orelse:
                self.visit(stmt)
            self.indent -= 1
        self.emit("end if")

    def visit_While(self, node):
        cond = self.render_expr(node.test)
        self.emit(f"while {cond} do")
        self.indent += 1
        for stmt in node.body:
            self.visit(stmt)
        self.indent -= 1
        self.emit("end while")

    def visit_For(self, node):
        if isinstance(node.iter, ast.Call) and isinstance(node.iter.func, ast.Name) and node.iter.func.id == 'range':
            target = self.render_expr(node.target)
            args = node.iter.args
            if len(args) == 1:
                start = '0'
                stop = self.render_expr(args[0])
                step = '1'
            else:
                start = self.render_expr(args[0])
                stop = self.render_expr(args[1])
                step = '1' if len(args) == 2 else self.render_expr(args[2])
            close = ')' if step == '1' else '<'
            if stop.endswith(' + 1'):
                stop = stop[:-4]
                close = ']' if step == '1' else '<='
            if step != '1':
                self.emit(f"{target} <- {start}")
                self.emit(f"while {target} {close} {stop} do")
                self.indent += 1
                for stmt in node.body:
                    self.visit(stmt)
                self.emit(f"{target} <- {target} + {step}")
                self.indent -= 1
                self.emit("end while")
                return
            self.emit(f"for {target} in [{start}...{stop}{close} do")
            self.indent += 1
            for stmt in node.body:
                self.visit(stmt)
            self.indent -= 1
            self.emit("end for")
            return
        self.emit("<for???>")

    def visit_Return(self, node):
        if node.value:
            self.emit(f"return {self.render_expr(node.value)}")
        else:
            self.emit("return")

    def render_type(self, ann):
        if isinstance(ann, ast.Name):
            if ann.id == "int":
                return "integer"
        if isinstance(ann, ast.Subscript) and ann.value.id == "list":
            base = self.render_type(ann.slice)
            return f"{base}[]"
        return "<type???>"

    def render_expr(self, node):
        if isinstance(node, ast.Constant):
            if isinstance(node.value, int):
                return str(node.value)
            return "<const???>"
        if isinstance(node, ast.Name):
            return node.id[1:] if node.id[0] == "_" else node.id
        if isinstance(node, ast.Call):
            func = self.render_expr(node.func)
            if func == "print":
                func = "output"
            args = ", ".join(self.render_expr(a) for a in node.args)
            return f"{func}({args})"
        if isinstance(node, ast.Subscript):
            base = self.render_expr(node.value)
            index = self.render_expr(node.slice)
            return f"{base}[{index}]"
        if isinstance(node, ast.Compare):
            if len(node.ops) == len(node.comparators) == 1:
                left = self.render_expr(node.left)
                right = self.render_expr(node.comparators[0])
                return f"{left} {self.render_compare_op(node.ops[0])} {right}"
            return "<compare???>"
        if isinstance(node, ast.BinOp):
            op = self.render_op(node.op)
            return f"{self.render_expr(node.left)} {op} {self.render_expr(node.right)}"
        if isinstance(node, ast.BoolOp):
            op = self.render_op(node.op)
            return f" {op} ".join(f"({self.render_expr(v)})" for v in node.values)
        if isinstance(node, ast.UnaryOp):
            op = self.render_op(node.op)
            return f"{op} ({self.render_expr(node.operand)})"
        return "<expr???>"

    def render_op(self, op):
        if isinstance(op, ast.Add): return "+"
        if isinstance(op, ast.Sub) or isinstance(op, ast.USub): return "-"
        if isinstance(op, ast.Mult): return "*"
        if isinstance(op, ast.Div) or isinstance(op, ast.FloorDiv): return "/"
        if isinstance(op, ast.Mod): return "mod"
        if isinstance(op, ast.And): return "and"
        if isinstance(op, ast.Or): return "or"
        if isinstance(op, ast.Not): return "not"
        return "<op???>"

    def render_compare_op(self, op):
        if isinstance(op, ast.Eq): return "=="
        if isinstance(op, ast.NotEq): return "!="
        if isinstance(op, ast.Lt): return "<"
        if isinstance(op, ast.LtE): return "<="
        if isinstance(op, ast.Gt): return ">"
        if isinstance(op, ast.GtE): return ">="
        return "<comp???>"


ASY_HEADER = """access "../../asy-library/structures/layout.asy" as layout;

unravel layout; // per evitare di scrivere layout.cose tutto il tempo

unitsize(1cm);

TEXT_SIZE = 2;
ALIGN = (0, 0.5);

element P = row(
    BLOCK_PADDING + 1,
    fill_space=0,
"""

class AsyBlocks(ast.NodeVisitor):
    def generate(self, tree):
        return self.visit(tree) + '\n'
 
    def e(self, s):
        """Helper to wrap strings in e("...")"""
        return f'e("{s}")'

    def data_block(self, content):
        return f'data_block({content})'

    def choice_block(self, content):
        return f'choice_block({content})'

    def cond_block(self, content):
        return f'cond_block({content})'

    def instr_block(self, *args):
        return f'instr_block({", ".join(args)})'

    def todo_block(self, arg):
        return f'todo_block({arg})'

    def indent(self, s, n = 1):
        return '    '*n + s.replace('\n', '\n' + '    '*n)

    def block_sequence(self, args):
        args = [a for a in args if a]
        if len(args) == 0:
            return None
        if len(args) == 1:
            return args[0]
        return "block_sequence(\n" + self.indent(',\n'.join(args)) + "\n)"

    def visit_Module(self, node):
        lines = []
        elements = []
        for n in node.body:
            if isinstance(n, ast.FunctionDef):
                if elements:
                    lines.append(self.block_sequence(elements))
                    elements = []
                lines.append(self.visit(n))
            else:
                elements.append(self.visit(n))
        if elements:
            lines.append(self.block_sequence(elements))
        return ASY_HEADER + self.indent(",\n".join(lines)) + "\n);\n\nadd(P.drawing());"

    def visit_FunctionDef(self, node):
        args_str = ""
        if node.args.args:
            arg_names = [self.choice_block(self.e(arg.arg)) for arg in node.args.args]
            args_str = f", {self.e("con")}, " + f", {self.e("e")}, ".join(arg_names)
        body_stmts = [self.visit(n) for n in node.body]

        name = node.name
        if name[0] == '_' and not node.args.args:
            name = name[1:].replace('_', ' ')
            body_stmts = [f"start_block({self.e(name)})"] + body_stmts
            return self.block_sequence(body_stmts)

        name = name.replace('_', ' ')
        return (f"def_block(\n"
                f"    block_content({self.e('per fare')}, {self.data_block(self.e(name))}{args_str}, {self.e(':')}),\n"
                f"{self.indent(self.block_sequence(body_stmts))}\n"
                f")")

    def visit_For(self, node):
        assert isinstance(node.iter, ast.Call) and node.iter.func.id == 'range'
        body_stmts = [self.visit(n) for n in node.body]
        body_str = self.indent(self.block_sequence(body_stmts))
        if node.target.id[0] == "_": # convention for ignored variable
            assert len(node.iter.args) == 1
            count = self.render_expr(node.iter.args[0])
            return (f"for_block(\n"
                    f"    block_content({self.e('ripeti')}, {self.data_block(count)}, {self.e('volte:')}),\n"
                    f"{body_str}\n"
                    f")")
        target = self.render_expr(node.target)
        args = node.iter.args
        if len(args) == 1:
            args = [self.e('0')] + args
        else:
            args = [self.render_expr(args[0])] + args[1:]
        if isinstance(args[1], ast.BinOp) and isinstance(args[1].op, ast.Add) and isinstance(args[1].right, ast.Constant) and args[1].right.value == 1:
            args[1] = self.render_expr(args[1].left)
        else:
            args[1] = f"{self.data_block(self.render_expr(args[1]))}, {self.e("$-$")}, {self.data_block(self.e("1"))}"
        if len(args) == 2:
            args.append(self.e('1'))
        else:
            args[2] = self.render_expr(args[2])    
        start, stop, step = args

        header = (f"block_content({self.e('conta con')}, {self.choice_block(target)}, "
                    f"{self.e('da')}, {self.data_block(start)}, "
                    f"{self.e('a')}, {self.data_block(stop)}, "
                    f"{self.e('per')}, {self.data_block(step)}, {self.e(':')})")
        
        return (f"for_block(\n"
                f"    {header},\n"
                f"{body_str}\n"
                f")")

    def visit_While(self, node):
        test_node = node.test
        # Check for "while not" -> "ripeti fino a che" 
        if isinstance(test_node, ast.UnaryOp) and isinstance(test_node.op, ast.Not):
            test_node = test_node.operand
            phrase = "ripeti fino a che"
        else:
            phrase = "ripeti mentre"
        cond_str = self.cond_block(self.render_expr(test_node))

        body_stmts = [self.visit(n) for n in node.body]
        body_str = self.indent(self.block_sequence(body_stmts))
        
        return (f"for_block(\n"
                f"    block_content({self.e(phrase)}, {cond_str}, {self.e(':')}),\n"
                f"{body_str}\n"
                f")")

    def visit_If(self, node):
        cond_str = self.cond_block(self.render_expr(node.test))
        body_stmts = [self.visit(n) for n in node.body]
        if node.orelse:
            # If/Else block 
            else_stmts = [self.visit(n) for n in node.orelse]
            return (f"else_block(\n"
                    f"    block_content({self.e('se')}, {cond_str}, {self.e('fai:')}),\n" +
                    self.indent(self.block_sequence(body_stmts)) +
                    f",\n    block_content({self.e('altrimenti: ')}),\n" +
                    self.indent(self.block_sequence(else_stmts)) +
                    f"\n)")
        else:
            # Simple If block 
            return (f"if_block(\n"
                    f"    block_content({self.e('se')}, {cond_str}, {self.e('fai:')}),\n" +
                    self.indent(self.block_sequence(body_stmts)) +
                    f"\n)")

    def visit_Assign(self, node):
        # Handle Swap: a, b = b, a 
        if len(node.targets) == 1 and isinstance(node.targets[0], ast.Tuple):
            target_tuple = node.targets[0]
            value_tuple = node.value
            assert isinstance(value_tuple, ast.Tuple) and len(target_tuple.elts) == 2
            var1 = self.render_expr(target_tuple.elts[0])
            var2 = self.render_expr(target_tuple.elts[1])
            return self.instr_block(self.e("scambia valore di"), self.choice_block(var1), self.e("e"), self.choice_block(var2))
        target = self.render_expr(node.targets[0])
        value = self.render_expr(node.value)
        return self.instr_block(self.e("imposta"), self.choice_block(target), self.e("a"), self.data_block(value))

    def visit_AugAssign(self, node):
        target = self.render_expr(node.target)
        if isinstance(node.op, ast.Sub):
            if isinstance(node.value, ast.Constant):
                value = self.e("%d" % (-node.value.value))
            else:
                value = f'{self.e("$-$")}, {self.data_block(self.render_expr(node.value))}' 
        elif isinstance(node.op, ast.Add):
            value = self.render_expr(node.value)
        else:
            op = self.render_op(node.op)
            value = f"{self.data_block(target)}, {self.e(op)}, {self.data_block(self.render_expr(node.value))}"
            return self.instr_block(self.e("imposta"), self.choice_block(target), self.e("a"), self.data_block(value))
        return self.instr_block(self.e("cambia"), self.choice_block(target), self.e("di"), self.data_block(value))

    def visit_Return(self, node):
        return self.instr_block(self.e("restituisci"), self.data_block(self.render_expr(node.value)))

    def visit_Expr(self, node):
        if isinstance(node.value, ast.Constant) and isinstance(node.value.value, str):
            return self.todo_block(self.e(node.value.value))
        return self.visit(node.value)

    def visit_Call(self, node, inexpr = False):
        func_name = node.func.id.replace('_', ' ')
        if func_name == "print":
            func_name = "stampa"
        if func_name == "max":
            func_name = "massimo tra"
        if func_name == "min":
            func_name = "minimo tra"
        args_formatted = [self.data_block(self.render_expr(a)) for a in node.args]
        args_formatted = f", {self.e("e")}, ".join(args_formatted)
        body = self.e(func_name)
        if args_formatted:
            body += f", {args_formatted}"
        return body if inexpr else self.instr_block(body)

    def visit_Name(self, node):
        if node.id[0] != "_":
            return self.e(node.id).replace('_', ' ')
        return "<var???>"

    def visit_Constant(self, node):
        if isinstance(node.value, int):
            return self.e(str(node.value))
        return "<const???>"

    def visit_Subscript(self, node):
        base = self.e(node.value.id)
        index = self.render_expr(node.slice)
        return f"{base}, {self.data_block(index)}" 

    def visit_BinOp(self, node):
        left = self.render_expr(node.left)
        right = self.render_expr(node.right)
        op = self.render_op(node.op)
        return f"{self.data_block(left)}, {self.e(op)}, {self.data_block(right)}"

    def render_expr(self, node):
        if isinstance(node, ast.Constant):
            return self.visit_Constant(node)
        if isinstance(node, ast.Name):
            return self.visit_Name(node)
        if isinstance(node, ast.Call):
            return self.visit_Call(node, inexpr=True)
        if isinstance(node, ast.Subscript):
            return self.visit_Subscript(node)
        if isinstance(node, ast.BinOp):
            return self.visit_BinOp(node)
        # Parity Checks 
        if isinstance(node, ast.Compare) and isinstance(node.left, ast.BinOp) and isinstance(node.left.op, ast.Mod):
             var = self.render_expr(node.left.left)
             assert isinstance(node.left.right, ast.Constant) and node.left.right.value == 2
             assert len(node.comparators) == 1 and isinstance(node.comparators[0], ast.Constant)
             if node.comparators[0].value == 0:
                 return f"{self.data_block(var)}, {self.e('è pari')}"
             else:
                 return f"{self.data_block(var)}, {self.e('è dispari')}"
        if isinstance(node, ast.Compare):
            if len(node.ops) == len(node.comparators) == 1:
                left = self.render_expr(node.left)
                right = self.render_expr(node.comparators[0])
                op = self.render_compare_op(node.ops[0])
                return f"{self.data_block(left)}, {self.e(op)}, {self.data_block(right)}"
            return "<compare???>"
        if isinstance(node, ast.BoolOp):
            values = [self.cond_block(self.render_expr(v)) for v in node.values]
            op = self.render_op(node.op)
            return f"{values[0]}, {self.e(op)}, {values[1]}"
        if isinstance(node, ast.UnaryOp):
            inner = self.render_expr(node.operand)
            op = self.render_op(node.op)
            return f"{self.e(op)}, {'cond_block' if isinstance(node.op, ast.Not) else 'data_block'}({inner})"
        return "<expr???>"

    def render_op(self, op):
        if isinstance(op, ast.Add): return "$+$"
        if isinstance(op, ast.Sub) or isinstance(op, ast.USub): return "$-$"
        if isinstance(op, ast.Mult): return r"$\times$"
        if isinstance(op, ast.Div) or isinstance(op, ast.FloorDiv): return r"$\div$"
        if isinstance(op, ast.And): return "e"
        if isinstance(op, ast.Or): return "o"
        if isinstance(op, ast.Not): return "non"
        return "<op???>"

    def render_compare_op(self, op):
        if isinstance(op, ast.Eq): return "$=$"
        if isinstance(op, ast.NotEq): return r"$\neq$"
        if isinstance(op, ast.Lt): return "$<$"
        if isinstance(op, ast.LtE): return r"$\le$"
        if isinstance(op, ast.Gt): return "$>$"
        if isinstance(op, ast.GtE): return r"$\ge$"
        return "<comp???>"


if __name__ == "__main__":
    import sys
    if len(sys.argv) == 1:
        print("No file path specified. Enter python code here (use -h flag for help):")
        lines = sys.stdin.readlines()
    elif sys.argv[1] == '-h' or len(sys.argv) > 2:
        print("Generator of OII pseudocode and OII blockly (in asy) from python code.")
        print()
        print('CAVEATS:')
        print('- You can write preamble code before a line equal to "###", and it will be ignored (not translated).')
        print('- You can also write post-amble code after a second line equal to "###" to be ignored in translation.')
        print('- If the entire code is a single function that starts with "__", its body is rendered instead.')
        print('- Functions that starts with "_" and have no arguments are rendered in blockly as simple start blocks.')
        print('- A single string as a statement is rendered in pseudocode and blockly as a "TODO" part.')
        print('- If the upper bound of a for loop ends in "+1", it is rendered as a loop on a right-closed interval.')
        print('- For-loops with a step that is different from 1 are rendered as while statements in pseudocode.')
        print('- Variables starting with "_" are not rendered in blockly (in order to model "ripeti N" statements),')
        print('  and the starting "_" is removed in pseudocode. Other "_" characters are rendered as " " in blockly.')
        print('')
        exit(0)
    else:
        lines = open(sys.argv[1]).readlines()
    if '###\n' in lines:
        lines = lines[lines.index("###\n")+1:]
    if '###\n' in lines:
        lines = lines[:lines.index("###\n")]
    source = ''.join(lines)
    tree = ast.parse(source)
    if len(tree.body) == 1 and isinstance(tree.body[0], ast.FunctionDef) and tree.body[0].name[:2] == '__':
        tree.body = tree.body[0].body
    pc = PseudoCode()
    asy = AsyBlocks()
    print()
    print("---------------------------")
    print("---- PSEUDOCODE OUTPUT ----")
    print("---------------------------")
    print()
    print(pc.generate(tree))
    print()
    print("--------------------------------")
    print("---- ASYMPTOTE BLOCK OUTPUT ----")
    print("--------------------------------")
    print()
    print(asy.generate(tree))
    # print()
    # print(ast.dump(tree, indent=4))
