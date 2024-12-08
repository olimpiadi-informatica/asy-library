picture drawing(real k = 1, int len = 2, bool dishes = true, pen color = rgb("deb887")) {
    picture pic;
    real TAB_H = 10;
    real TAB_DIAG = 5;
    real TAB_Y = 30;
    real TAB_PLATE = 12;
    real PLATE_W = 10;
    real PLATE_H = 6;

    path rect(pair p, pair q) {
        return p -- (p.x, q.y) -- q -- (q.x, p.y) -- cycle;
    }
    pair[] table = {
        (TAB_DIAG, TAB_Y + TAB_H),
        (TAB_DIAG + len * TAB_PLATE, TAB_Y + TAB_H),
        (TAB_DIAG + len * TAB_PLATE + TAB_DIAG, TAB_Y),
        (0, TAB_Y),
    };

    for (pair p : table) {
        fill(pic, shift(p) * rect((-0.4,0), (0.4, -15)), brown);
    }
    filldraw(pic, table[0] -- table[1] -- table[2] -- table[3] -- cycle, color, brown + 20*k);

    if (dishes) for (int i=0; i<len; ++i) {
        real x = TAB_DIAG + i * TAB_PLATE + TAB_PLATE / 2;
        real y = TAB_Y + TAB_H / 2;
        filldraw(pic, shift((x, y))*xscale(PLATE_W/2)*yscale(PLATE_H/2)*unitcircle, palegray*1.001, black+8*k);
    }
    return scale(k)*pic;
}
