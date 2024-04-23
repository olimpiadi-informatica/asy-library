picture drawing(real length, real width, pair start = (0,0), real angle = 0, pen pf, pen pd) {
    picture pic;
    path p = (0,width/2) -- (length, width/2) {dir(300)}..{dir(240)} (length, -width/2) -- (0, -width/2) {dir(120)}..{dir(60)} cycle;
    filldraw(pic, shift(start)*rotate(angle)*p, pf, pd);
    return pic;
}
