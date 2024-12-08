picture drawing(int k = 1, pen color = lightred, pen border = black + 2, Label text = "") {
    picture pic;
    path rect(pair a, pair b) {
        return a -- (a.x,b.y) -- b -- (b.x,a.y) -- cycle;
    }
    pair pos = (0,0);
    pen graycol = mediumgray;
    pen whitecol = palegray;
    pen woodcol = brown;

    draw(pic, pos-(1.5*k,0) -- pos+(1.5*k,0), border);
    real ybase = 1.5*k;
    filldraw(pic, rect(pos-(k,0), pos+(k,ybase)), color, border);
    label(pic, text, pos+(0,ybase/2), border);
    real table_offs = 0.2*k;
    filldraw(pic, rect(pos+(-k-table_offs,ybase), pos+(k+table_offs,ybase+table_offs)), graycol, border);
    ybase += table_offs;
    real pole_height = 1.5*k;
    real pole_offs = 0.1*k;
    filldraw(pic, rect(pos+(-k,ybase), pos+(-k+pole_offs,ybase+pole_height)), woodcol, border);
    filldraw(pic, rect(pos+(k,ybase), pos+(k-pole_offs,ybase+pole_height)), woodcol, border);
    real top_height = 0.6*k;
    real top_width = 0.4*k;
    ybase += pole_height;
    filldraw(pic, shift(pos)*((-k,ybase+top_height) -- (k,ybase+top_height) -- (k+top_width,ybase) -- (-k-top_width,ybase) -- cycle), color, border);
    int flap_num = 7;
    real flap_start = k+top_width;
    real flap_size = 2*(k+top_width) / flap_num;
    for (int i=0; i<flap_num; ++i)
        filldraw(pic, shift(pos) * ((-flap_start + i*flap_size, ybase) -- (-flap_start + (i+1)*flap_size, ybase) -- arc((-flap_start + (i+0.5)*flap_size, ybase-0.5*flap_size), 0.5*flap_size, 0, -180) -- cycle), whitecol, border);
    return pic;
}
