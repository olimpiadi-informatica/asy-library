picture drawing(real k = 1, real aspect = 1, int num=2, pen color = rgb("84240c")) {
    picture pic;

    path rect(pair a, pair b) {
        return a -- (a.x,b.y) -- b -- (b.x,a.y) -- cycle;
    }
    pen[] cols = {0.5*color + 0.5*darkgray, color, 0.5*color + 0.5*palegray};

    filldraw(pic, rect((0,0), (100*aspect,100)), cols[1], cols[0]+2);

    real bord = 5;
    real step = (100-bord)/num;
    for (int i=0; i<num; ++i)
        filldraw(pic, rect((bord,bord+i*step), (100*aspect-bord,(i+1)*step)), cols[2], cols[0]+2);

    return scale(k/32)*pic;
}
