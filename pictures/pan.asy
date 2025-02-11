picture back(real k = 1, pen col = gray, pen handle = brown, real width = 6) {
    picture pic;
    pen border = black+2*k;
    pen darkcol = black*0.4 + col*0.6;
    path ell = ellipse((0, 0), width, 1);
    real len = 1.5;
    pair side = (width, 1)*0.1;
    path p = -side -- (-len*width, len)-side {(-width,1)}.. (-(len+0.1)*width, len+0.1) ..{(width,-1)} (-len*width, len)+side -- side -- cycle;
    filldraw(pic, shift(0, -0.1*width)*p, handle, border);
    filldraw(pic, ell, col, border);
    return scale(k)*pic;
}

picture front(real k = 1, pen col = gray, pen handle = brown, real width = 6) {
    picture pic;
    pen border = black+2*k;
    pen darkcol = black*0.4 + col*0.6;
    filldraw(pic, (-width, 0){down} .. (0, -1-0.25*width) .. {up}(width, 0) -- xscale(width)*arc((0,0), 1, 360, 180) -- cycle, darkcol, border);
    return scale(k)*pic;
}

picture drawing(real k = 1, pen col = gray, pen handle = brown, real width = 6, picture content = new picture) {
    content = shift(-min(content, true))*content;
    content = shift(-max(content, true).x/2, 0)*content;
	picture pic = back(1, col, handle, width);

    add(pic, shift(0, -0.9-0.25*width)*content);

    add(pic, front(1, col, handle, width));
	return scale(k)*pic;
}
