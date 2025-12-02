void fitlabel(picture pic=currentpicture, Label L, pair position, pair align=(0,0), pen p=currentpen, pen b=currentpen, filltype filltype=Fill) {
    picture temp;
    if (filltype == Fill)
        fill(temp, texpath(L), p);
    else if (filltype == Draw)
        draw(temp, texpath(L), p);
    else if (filltype == FillDraw)
        filldraw(temp, texpath(L), p, b);
    pair bb_min = min(temp, true);
    pair bb_max = max(temp, true);
    align = (align + (1,1))/2;
    position -= (bb_min.x*align.x + bb_max.x*(1-align.x), bb_min.y*align.y + bb_max.y*(1-align.y));
    add(pic, shift(position)*temp);
}

path rect(pair p, pair q) {
    return p -- (p.x,q.y) -- q -- (q.x,p.y) -- cycle;
}
