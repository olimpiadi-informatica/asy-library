pen border = black+2;
pen wood = rgb("#CD9D6F");
pen steel = rgb("#A9A9A9");
pen gold = rgb("#D4AF37");
pen darkgold = rgb("#BD9B16");

picture dish(real height = 8, real width = 6, picture content) {
    picture pic;
    pair pos = (0,0);
    pair center = pos + (0, -height);
    path ell = ellipse(center, width, 1);

    filldraw(pic, ell, gold, border);

    draw(pic, pos -- point(ell, 0.2), border);
    draw(pic, pos -- point(ell, 1.2), border);
    draw(pic, pos -- point(ell, 2.3), border);
    draw(pic, pos -- (pos + (0, .7)), border);

    center = pos + (1, 0.2-height);
    add(pic, shift(center)*content);

    center = pos + (0, -height);
    filldraw(pic, (center - (width, 0)){down} .. (center - (0, 1+0.25*width)) .. {up}(center + (width, 0)) -- shift(center)*xscale(width)*arc((0,0), 1, 360, 180) -- cycle, darkgold, border);
    return pic;
}

picture scale(real angle = 0, real height = 5, real width = 5, picture left, picture right) {
    picture pic;

    pair offset = (0, -height);
    pair p1 = offset + rotate(angle) * (-width, 0);
    pair p2 = offset + rotate(angle) * ( width, 0);

    path giogo = (-width, 0) .. (0, -0.4) .. ( width, 0)
              -- ( width, 1) .. (0,  1.4) .. (-width, 1) -- cycle;
    filldraw(pic, shift(offset + (0, .4)) * rotate(angle) * scale(1.1, .6) * giogo, wood, border);

    pair hole_left  = shift(offset + (0, .7)) * rotate(angle) * (-width, 0);
    pair hole_right = shift(offset + (0, .7)) * rotate(angle) * ( width, 0);
    filldraw(pic, circle(hole_left,  .2), white, border);
    filldraw(pic, circle(hole_right, .2), white, border);

    add(pic, shift(p1)*left);
    add(pic, shift(p2)*right);

    filldraw(pic, circle(offset + (0, 0.7), 0.25), wood, border);
    draw(pic, shift(0, 0.7) * (offset -- (0, 0)), border);

    return pic;
}

picture drawing(real angle, real height = 15, real width = 6, picture l, picture r) {
    picture pic = scale(angle, 0, width, l, r);

    path fulcro = (-0.5, -height) -- (0.5, -height) -- (0.5, 2) -- (-0.5, 2) -- cycle;
    filldraw(pic, fulcro, wood, border);
    filldraw(pic, circle((0, 0.7), 0.25), wood, border);

    path decoration = ( 0.1, 2) .. ( 0.3, 2.5) .. ( 0.1, 3)
                   -- (-0.1, 3) .. (-0.3, 2.5) .. (-0.1, 2) -- cycle;
    filldraw(pic, decoration, wood, border);
    filldraw(pic, circle((0, 3.4), 0.4), wood, border);

    path base = ( 1.5, -height - 1){left} ..   {up}( 0.7, -height - 0)
             -- (-0.7, -height - 0){down} .. {left}(-1.5, -height - 1) -- cycle;
    filldraw(pic, base, wood, border);
    return pic;
}
