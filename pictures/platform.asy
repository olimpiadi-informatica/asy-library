picture drawing(real length, real width, real dent, pair start = (0,0), real angle = 0, pen pf, pen pd) {
    picture pic;
    path p = (-length/2,width/2) {dir(240)}..{dir(300)} (-length/2,-width/2) -- (-dent,-width/2) {dir(20)}..{dir(-20)} (dent,-width/2) -- (length/2,-width/2) {dir(60)}..{dir(120)} (length/2,width/2) -- (dent,width/2) {dir(200)}..{dir(160)} (-dent,width/2) -- cycle;
    filldraw(pic, shift(start)*rotate(angle)*p, pf, pd);
    return pic;
}
