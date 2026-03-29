picture drawing(real k=1, int len=4, pen col = rgb("9f6736"), pen col2 = rgb("56ae31")) {
    picture pic;
    path rect(pair a, pair b) {
        return a -- (a.x,b.y) -- b -- (b.x,a.y) -- cycle;
    }
    real w = 0.1;
    real d = w / sqrt(1+len*len);
    pen darcol = col*0.8 + deepgray*0.2;
    pen ligcol = col*0.3 + palegray*0.7;

    filldraw(pic, rect((0.2,0), (1.3,0.8)), col2, darcol+3*k);
    filldraw(pic, rect((0.3,0), (0.6,0.5)), grey, heavygray+3*k);
    draw(pic, (0.4,0.25), heavygray+5*k);
    filldraw(pic, shift(1,0.5)*xscale(0.15)*yscale(0.2)*unitcircle, palecyan, deepgray+5*k);
    path p = (0.2,-0.6) .. (0.03,-0.2) .. (0,0) -- (0.8,0) -- (0.9,0.2) -- (len,0.2) .. (len-0.2,-0.2) .. (len-1,-0.6);
    path wave = (0,0) {SE}..{E} (0.15,-0.05) {E}.. (0.4,0) ..{E} (0.85,0.05) {E}..{SE} (1,0);
    path q = (-0.6,0) ..{E} (-0.1,0.05) {E}..{SE} (0,0);
    for (int i=0; i<=len; ++i)
        q = q -- shift(i)*wave;
    q = shift(0.2,-0.6)*xscale((len-1.2)/len)*q;
    filldraw(pic, subpath(p, 1, length(p)-1) -- cycle, darcol, darcol+3*k);
    filldraw(pic, subpath(p, 0, 1) -- subpath(p, length(p)-1, length(p)) -- reverse(subpath(q, 3, length(q)-5)) -- cycle, col, darcol+3*k);
    filldraw(pic, rect((0.1,0.8), (1.4,0.9)), darcol, darcol+3*k);
    draw(pic, q, heavyblue+5*k);
    pen[] salvagente = {red, white};
    for (int i=1; i<len; ++i) {
        pair c = (i,-0.2);
        for (int j=0; j<8; ++j) {
            real a0 = -22.5+45*j, a1 = 22.5+45*j;
            filldraw(pic, arc(c, 0.2, a0, a1) -- arc(c, 0.06, a1, a0) -- cycle, salvagente[j%2], deepgray+2*k);
        }
    }
    return scale(3*k)*pic;
}
