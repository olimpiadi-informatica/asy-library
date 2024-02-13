path pole(real length, real width, pair start = (0,0), real angle = 0) {
    path p = (0,width/2) -- (length, width/2) {dir(300)}..{dir(240)} (length, -width/2) -- (0, -width/2) {dir(120)}..{dir(60)} cycle;
    return shift(start)*rotate(angle)*p;
}

picture drawing(real k = 1, pen color = rgb("#954520"), int steps = 6, real thickness = 4, real aspect = 1.5) {
    picture pic;
    path p;

    p = (-thickness,0) -- (-thickness, (steps+1)*20) {dir(30)}..{dir(-30)} (0, (steps+1)*20) -- (0,0) {dir(210)}..{dir(150)} cycle;

    filldraw(pic, pole(20*(steps+1), thickness, (-thickness/2), 90), color, black+k);
    filldraw(pic, pole(20*(steps+1), thickness, (20*aspect+thickness/2), 90), color, black+k);
    for (int i=1; i<=steps; ++i)
        filldraw(pic, pole(20*aspect, thickness, (0,20*i), 0), color, black+k);
    return scale(k/32)*pic;
}
