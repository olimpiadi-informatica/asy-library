picture drawing(real k = 1, pen color = rgb("2296ff")) {
    picture pic;
    path p = dir(30) -- (0,0) -- dir(150);
    p = shift(0,2)*p;
    for (int i=0; i<6; ++i) {
        draw(pic, rotate(60*i)*p, color+k*15);
        draw(pic, rotate(60*i)*((0,0) -- (0,3)), color+k*15);
    }
    return scale(k)*pic;
}
