picture drawing(real k = 1, pen col = palegray) {
	picture pic;
	path[] p;
    filldraw(pic, (-5,-7) -- (5,-7) -- (5,5) -- (3,7) -- (-5,7) -- cycle, col, black+4*k);
    draw(pic, (5,5) -- (3,5) -- (3,7), black+4*k);
    path p;
    int NUM = 10;
    for (int i=0; i<2*NUM; ++i) {
        p = p -- dir(i*180/NUM)*(1.1+(i%2)*0.1);
    }
    draw(pic, shift(3,-5)*(p -- cycle), black+2*k);
    draw(pic, shift(3,-5)*scale(0.9)*unitcircle, black+3*k);
	return scale(k/2)*pic;
}

unitsize(1cm);
add(drawing());
