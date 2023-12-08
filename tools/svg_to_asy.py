#!/usr/bin/env pypy3

from xml.etree import ElementTree
from sys import stderr
from string import ascii_lowercase, ascii_uppercase
import argparse
import re

APPROX = 0
CTHR = 32
SIZE = (0,0)
SCALE = 1

letters = set(ascii_lowercase + ascii_uppercase)

def point_add(p, q):
    if q == "cycle":
        return q
    return (p[0]+q[0], p[1]+q[1])

def print_point(p):
    if p == "cycle":
        return p
    p = (p[0]-SIZE[0]/2, SIZE[1]/2-p[1])
    p = tuple(round(SCALE*x, APPROX) for x in p)
    if APPROX == 0:
        p = tuple(int(x) for x in p)
    return str(p)

numargs = {
    'z' : 0,
    'h' : 1,
    'v' : 1,
    'm' : 2,
    'l' : 2,
    'c' : 6
}

def path_to_cmds(s):
    v = re.sub(r' *([a-df-zA-DF-Z]) *', r' \1 ', s)
    v = re.sub(r' *, *', r' ', v)
    v = v.strip().split()
    w = []
    curcmd = ''
    i = 0
    while i < len(v):
        if v[i] in letters:
            curcmd = v[i]
            i += 1
        try:
            args = map(float, v[i:i+numargs[curcmd.lower()]])
            w.append([curcmd] + list(args))
            i += numargs[curcmd.lower()]
        except Exception as e:
            print("COMANDO NON RICONOSCIUTO!", file=stderr)
            print("COMANDO:", curcmd, v[i:], file=stderr)
            print("PRECEDE:", v[:i], file=stderr)
            print("INTERPRETATO:", w, file=stderr)
            print("SORGENTE:", s, file=stderr)
            raise e
    return w

def cmd_to_asy(cur, cmd, args):
    if cmd.lower() == 'z':
        return cur, " -- cycle"
    if cmd == 'h':
        cur = point_add(cur, (args[0],0))
        s = " -- " + print_point(cur)
        return cur, s
    if cmd == 'H':
        cur = (args[0],cur[1])
        s = " -- " + print_point(cur)
        return cur, s
    if cmd == 'v':
        cur = point_add(cur, (0,args[0]))
        s = " -- " + print_point(cur)
        return cur, s
    if cmd == 'V':
        cur = (cur[0],args[0])
        s = " -- " + print_point(cur)
        return cur, s
    args = [(args[2*i],args[2*i+1]) for i in range(len(args)//2)]
    if cmd == cmd.lower():
        args = list(point_add(cur,p) for p in args)
    s = ""
    if cmd.lower() in 'ml':
        s = " -- " + print_point(args[0])
    elif cmd.lower() == 'c':
        s =  " .. controls %s and %s .. %s" % tuple(map(print_point, args))
    cur = args[-1]
    return cur, s

def get_color_map():
    color_levels = [0, 12, 25, 64, 128, 192, 230, 243, 255]
    f = lambda t: tuple(color_levels[x] for x in t)
    color_values = [
        ('pale'   , (8,5)),
        ('light'  , (8,4)),
        ('medium' , (8,3)),
        (''       , (8,0)),
        ('heavy'  , (5,0)),
        ('deep'   , (4,0)),
        ('dark'   , (3,0))
    ]
    color_hues = {
        'red'       : (0,1,1),
        'green'     : (1,0,1),
        'blue'      : (1,1,0),
        'cyan'      : (1,0,0),
        'magenta'   : (0,1,0),
        'yellow'    : (0,0,1)
    }
    color_rename = {
        'heavyyellow'   : 'lightolive',
        'deepyellow'    : 'olive',
        'darkyellow'    : 'darkolive'
    }
    special_colors = {
        'black'         : (0,0,0),
        'white'         : (8,8,8),
        'orange'        : (8,4,0),
        'fuchsia'       : (8,0,4),
        'chartreuse'    : (4,8,0),
        'springgreen'   : (0,8,4),
        'purple'        : (4,0,8),
        'royalblue'     : (0,4,8)
    }
    
    m = {}
    for c, v in special_colors.items():
        m[f(v)] = c
    for i in range(1,8):
        m[f(i for _ in range(3))] = color_values[i-1][0]+'gray'
    for col, hue in color_hues.items():
        for shade, val in color_values:
            m[f(val[h] for h in hue)] = color_rename[shade+col] if shade+col in color_rename else shade+col
    return m
color_map = get_color_map()
gray_map = {
    tuple(i*2.55 for _ in range(3)) : 'gray(0.%02d)' % i for i in range(1,100)
}

def color_diff(c1, c2):
    return sum(abs(c1[i]-c2[i]) for i in range(3))

def parse_color(s):
    c = s.lower()
    if c == "none":
        return 'invisible'
    if not re.fullmatch("#[0-9a-f]{6}", c):
        raise RuntimeError("unrecognised color: " + s)
    c = [int(c[i:i+2], 16) for i in range(1,6,2)]
    d, best = min((color_diff(c,k), name) for k, name in color_map.items())
    if d < CTHR:
        return best
    d, best = min((color_diff(c,k), name) for k, name in gray_map.items())
    return best if d < CTHR else 'rgb("%s")' % s[1:]

def parse_style(s):
    if re.fullmatch("fill:[^;]*; *stroke:[^;]*;?", s):
        fill, stroke = re.split('; *', s)[:2]
        fill = parse_color(fill[5:])
        stroke = parse_color(stroke[7:])
        if fill is None:
            return "draw(pic, p, %s);" % stroke
        if stroke is None:
            return "fill(pic, p, %s);" % fill
        return "filldraw(pic, p, %s, %s);" % (fill, stroke)
    d = [i.strip() for i in s.split(';')]
    if d[-1] == "":
        d = d[:-1]
    d = [tuple(j.strip() for j in i.split(':')) for i in d]
    d = {k : v for k,v in d}
    fill = 'invisible'
    if 'fill' in d:
        fill = parse_color(d['fill'])
        del d['fill']
    if 'fill-opacity' in d:
        if fill != 'invisible' and d['fill-opacity'] != '1':
            fill += "+opacity(%s)" % d['fill-opacity']
        del d['fill-opacity']
    if 'fill-rule' in d:
        if fill != 'invisible' and d['fill-rule'] != 'nonzero':
            assert d['fill-rule'] == 'evenodd'
            fill += "+evenodd"
        del d['fill-rule']
    draw = 'invisible'
    if 'stroke' in d:
        draw = parse_color(d['stroke'])
        del d['stroke']
    if 'stroke-opacity' in d:
        if draw != 'invisible' and d['stroke-opacity'] != '1':
            draw += "+opacity(%s)" % d['stroke-opacity']
        del d['stroke-opacity']
    if 'stroke-width' in d:
        if draw != 'invisible':
            draw += "+%s*k" % d['stroke-width']
        del d['stroke-width']
    if 'stroke-dasharray' in d:
        if draw != 'invisible' and d['stroke-dasharray'].lower() != 'none':
            c = re.split('  *', d['stroke-dasharray'].replace(',', ' ').strip())
            draw += "+linetype(new real[] {" + ','.join(c) + "});"
        del d['stroke-dasharray']
    if 'stroke-linecap' in d:
        if draw != 'invisible' and d['stroke-linecap'] != 'round':
            c = {'butt':'square','square':'extend'}[d['stroke-linecap']]
            draw += "+%scap" % c
        del d['stroke-linecap']
    if draw != 'invisible' and 'stroke-linejoin' not in d:
        d['stroke-linejoin'] = 'miter'
    if draw != 'invisible' and 'stroke-miterlimit' in d and d['stroke-linejoin'] != 'miter':
        del d['stroke-miterlimit']
    if 'stroke-linejoin' in d:
        if draw != 'invisible' and d['stroke-linejoin'] != 'round':
            assert d['stroke-linejoin'] in ['miter', 'bevel']
            draw += "+%sjoin" % d['stroke-linejoin']
        del d['stroke-linejoin']
    if 'stroke-miterlimit' in d:
        if draw != 'invisible' and abs(float(d['stroke-miterlimit']) - 10) >= 0.1:
            draw += "+miterlimit(%s)" % d['stroke-miterlimit']
        del d['stroke-miterlimit']
    d = ';'.join(k+':'+v for k,v in d.items())
    if d != '':
        d = " //IGNORED: " + d
    if fill == 'invisible' and draw == 'invisible':
        return d
    if fill == 'invisible':
        return "draw(pic, p, %s);" % draw + d
    if draw == 'invisible':
        return "fill(pic, p, %s);" % fill + d
    return "filldraw(pic, p, %s, %s);" % (fill,draw) + d

def parse_path(p):
    cmds = path_to_cmds(p.attrib['d'])
    cur = (0,0)
    line = ''
    for cmd in cmds:
        cur, s = cmd_to_asy(cur, cmd[0], list(cmd[1:]))
        line += s
    style = parse_style(p.attrib['style'])
    return "\tp = %s;\n\t%s" % (line[4:],style)

def parse_xml_element(e):
    if e.tag == "{http://www.w3.org/2000/svg}path":
        print(parse_path(e))
    if e.tag == "{http://www.w3.org/2000/svg}g":
        for f in e:
            parse_xml_element(f)

def parse_svg(path, scale, approx):
    global SIZE, SCALE, APPROX
    APPROX = approx
    tree = ElementTree.parse(path)
    root = tree.getroot()
    if root.tag != "{http://www.w3.org/2000/svg}svg":
        raise RuntimeError("argument is not a valid svg file")
    SIZE = (float(root.attrib['width']),float(root.attrib['height']))
    if scale == 0:
        SCALE = 1
    else:
        SCALE = 2*scale/max(SIZE)
    print("picture drawing(real k = 1) {")
    print("\tpicture pic;")
    print("\tpath p;")
    for e in tree.getroot():
        parse_xml_element(e)
    print("\treturn scale(k/32)*pic;")
    print("}")
    print("add(drawing(1));")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "path",
        help="Path of the SVG file",
    )
    parser.add_argument(
        "-c",
        "--max-coord",
        help="Maximum coordinate allowed to appear in the ASY file (defaults to the same coordinates as in the SVG file)",
        type=int,
        default=0,
        nargs='?'
    )
    parser.add_argument(
        "-a",
        "--approx",
        help="Decimal places to which the numbers should be rounded (defaults to 0)",
        type=int,
        default=0,
        nargs='?'
    )
    parser.add_argument(
        "-t",
        "--color-threshold",
        help="Threshold after which colors are collapsed (defaults to %d)" % CTHR,
        type=int,
        default=CTHR,
        nargs='?'
    )
    args = parser.parse_args()
    parse_svg(args.path, args.max_coord, args.approx)
