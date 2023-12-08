import math;
import roundedpath;

real BLOCK_PADDING = .3; // padding between block content and borders
real BLOCK_BORDER = 3;   // border size for blocks
pair ALIGN = (0.5, 0.5); // default align position
real TEXT_SIZE = 2;      // default text size


// layout element that can be fit to a given size above a minimum
struct element {
    // minimum size of the layout element
    pair min_size;

    // builds the element into a given size above the minimum
    picture fit_to_size(pair size);

    // draws the element to its minimum size
    picture drawing() {
        return fit_to_size(min_size);
    }

    // generic initialiser
    void operator init(pair min_size, picture fit_to_size(pair)) {
        this.min_size = min_size;
        this.fit_to_size = fit_to_size;
    }
    
    // picture initialiser
    void operator init(picture pic, pair align=ALIGN) {
        unitsize(pic, 1cm);
        pic = shift(-min(pic, true))*pic;
        this.min_size = max(pic, true);
        this.fit_to_size = new picture(pair size) {
            picture p;
            unitsize(p, 1cm);
            pair extra = size - this.min_size;
            add(p, shift(extra.x*align.x, extra.y*align.y)*pic);
            return p;
        };
    }

    // text initialiser
    void operator init(string text, real size=TEXT_SIZE, pen p=currentpen, pair align=ALIGN) {
        picture pic;
        label(pic, scale(size)*text, (0,0), p);
        this.operator init(pic, align);
    }
};


// layout element composed of multiple elements in a row
element row(real padding=0, real fill_space=1, pair align=ALIGN ... element[] elements) {
    assert(elements.length > 1, "row requires multiple elements");
    real w = -padding, h = 0;
    for (element e : elements) {
        h = max(h, e.min_size.y);
        w += e.min_size.x + padding;
    }
    return element(
        (w, h),
        new picture(pair size) {
            assert(size.x >= w && size.y >= h, "cannot fit element in given size");
            picture pic;
            unitsize(pic, 1cm);
            real extra = size.x - w;
            real offs = extra*(1-fill_space)*align.x;
            for (element e : elements) {
                real sx = e.min_size.x + extra/elements.length*fill_space;
                picture p = e.fit_to_size((sx, size.y));
                unitsize(p, 1cm);
                add(pic, shift(offs, 0)*p);
                offs += sx + padding;
            }
            return pic;
        }
    );
}

// layout element composed of multiple elements in a column
element column(real padding=0, real fill_space=1, pair align=ALIGN ... element[] elements) {
    assert(elements.length > 1, "column requires multiple elements");
    real w = 0, h = -padding;
    for (element e : elements) {
        w = max(w, e.min_size.x);
        h += e.min_size.y + padding;
    }
    return element(
        (w, h),
        new picture(pair size) {
            assert(size.x >= w && size.y >= h, "cannot fit element in given size");
            picture pic;
            unitsize(pic, 1cm);
            real extra = size.y - h;
            real offs = extra*(1-fill_space)*align.y;
            for (int i=elements.length-1; i>=0; --i) {
                element e = elements[i];
                real sy = e.min_size.y + extra/elements.length*fill_space;
                picture p = e.fit_to_size((size.x, sy));
                unitsize(p, 1cm);
                add(pic, shift(0, offs)*p);
                offs += sy + padding;
            }
            return pic;
        }
    );
}


// draws the usual block shape
void draw_block(picture pic, pair size, pen color, real block_padding = BLOCK_PADDING, real block_border = BLOCK_BORDER) {
    path dent = (0,0) -- (2,0) -- (3,-1) -- (4,0);
    dent = scale(block_padding) * dent;
    path p = dent -- (size.x, 0) -- size -- reverse(shift(0, size.y)*dent) -- cycle;
    p = roundedpath(p, 0.3*block_padding);
    filldraw(pic, p, 0.3*color + 0.7*white, 0.7*color + 0.3*black + block_border);
}


// generates a single block given the content
element block(element content, pen color, real block_padding = BLOCK_PADDING, real block_border = BLOCK_BORDER) {
    real w = content.min_size.x + 2*block_padding;
    real h = content.min_size.y + 2*block_padding;
    return element(
        (w, h),
        new picture(pair size) {
            assert(size.x >= w && size.y >= h, "cannot fit block in given size");
            picture pic;
            unitsize(pic, 1cm);
            draw_block(pic, size, color, block_padding, block_border);
            add(pic, shift(block_padding, block_padding) * content.fit_to_size(size - (block_padding,block_padding)*2));
            return pic;
        }
    );
}

// concatenate blocks in a vertical sequence
element block_sequence(real block_border = BLOCK_BORDER ... element[] blocks) {
    real w = 0, h = 0;
    for (element b : blocks) {
        w = max(w, b.min_size.x);
        h += b.min_size.y + 0.017*block_border;
    }
    h -= 0.017*block_border;
    return element(
        (w, h),
        new picture(pair size) {
            assert(size.x >= w && size.y >= h, "cannot fit block in given size");
            picture pic;
            unitsize(pic, 1cm);
            real yoffs = 0;
            for (int i=blocks.length-1; i>=0; --i) {
                picture p = blocks[i].fit_to_size((size.x, blocks[i].min_size.y + (size.y-h)/blocks.length));
                unitsize(p, 1cm);
                add(pic, shift(0, yoffs)*p);
                yoffs += max(p, true).y + 0.017*block_border;
            }
            return pic;
        }
    );
}

// nests multiple block sequences into a single block
element nested_blocks(pen color, real block_padding = BLOCK_PADDING, real block_border = BLOCK_BORDER ... element[] elements) {
    assert(elements.length >= 2, "empty nested blocks");
    assert(elements.length % 2 == 0, "odd number of nested elements");
    real w = 0, h = (1.5*elements.length+1)*block_padding;
    for (element e : elements) {
        w = max(w, e.min_size.x + 2*block_padding);
        h += e.min_size.y;
    }
    element[] headers;
    element[] blocks;
    for (int i=0; i<elements.length; i+=2) headers[i#2] = elements[i];
    for (int i=1; i<elements.length; i+=2) blocks[i#2] = elements[i];
    return element(
        (w, h),
        new picture(pair size) {
            assert(size.x >= w && size.y >= h, "cannot fit block in given size");
            picture pic;
            unitsize(pic, 1cm);
            draw_block(pic, size, color, block_padding, block_border);
            real yoffs = block_padding;
            for (int i=blocks.length-1; i>=0; --i) {
                yoffs += block_padding;
                picture p = blocks[i].fit_to_size((size.x - 2*block_padding, blocks[i].min_size.y + (size.y-h)/blocks.length/2));
                unitsize(p, 1cm);
                add(pic, shift(3*block_padding, yoffs)*p);
                yoffs += max(p, true).y + block_padding;
                p = headers[i].fit_to_size((size.x - 2*block_padding, headers[i].min_size.y + (size.y-h)/blocks.length/2));
                add(pic, shift(block_padding, yoffs)*p);
                yoffs += max(p, true).y + block_padding;
            }
            return pic;
        }
    );
}