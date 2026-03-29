import roundedpath;

picture drawing(real k=1, real len=2, pen col = rgb("fabd2e")) {
    picture pic;
    path rect(pair a, pair b) {
        return a -- (a.x,b.y) -- b -- (b.x,a.y) -- cycle;
    }
    pen darcol = col*0.5 + darkgray*0.5;
    pen ligcol = col*0.2 + white*0.8;
    path p;

    p = (len-0.8,1) -- (0,1) -- (0,0.1);
    p = roundedpath(p, 0.1) -- (len-0.8,0.1) -- cycle;
    filldraw(pic, p, ligcol, black+k*3);

    p = (len-0.25,0.5) -- (len-0.5,1) -- (len-0.8,1);
    p = roundedpath(p, 0.1) -- (len-0.8,0.1) -- (len,0.1) -- (len,0.25) -- arc((len-0.25,0.25), 0.25, 0, 90) -- cycle;
    filldraw(pic, p, col, black+k*3);

    p = (0,0.1) -- (0,0) -- (len,0) -- (len,0.1);
    filldraw(pic, roundedpath(p, 0.099) -- cycle, darcol, black+k*3);

    draw(pic, (len-0.7,0.4) -- (len-0.6,0.4), black+k*3);
    draw(pic, (0,0.45) -- (0.25,0.45), black+k*3);
    draw(pic, (0,0.6) -- (0.15,0.6), black+k*3);

    p = (len-0.25,0.5) -- (len-0.7,0.5) -- (len-0.7,0.85) -- (len-0.425,0.85);
    p = roundedpath(p, 0.1) -- cycle;
    filldraw(pic, p, lightcyan, black+k*3);

    p = (len,0.2) {W}..{N} (len-0.15,0.3) {N}..{E} (len-0.25,0.25)+0.25*dir(40) -- arc((len-0.25,0.25), 0.25, 40, 0) -- cycle;
    filldraw(pic, p, mediumred, black+k*3);

    real[] wheels = {len*0.2, len-0.4};
    for (real w: wheels) {
        p = shift(w,0)*scale(0.2)*unitcircle;
        filldraw(pic, p, gray, black+k*3);
        p = shift(w,0)*scale(0.07)*unitcircle;
        filldraw(pic, p, lightgray, black+k*3);
    }
    return scale(3*k)*pic;
}
