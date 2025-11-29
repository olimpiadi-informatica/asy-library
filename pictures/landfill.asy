picture drawing(pen col = black, real width = 1) {
    pair randvec(real r) {
        return (unitrand()-.5,unitrand()-.5)*r;
    }
    path rect(pair p, real w, real h, real r = 0) {
        return p+randvec(r) -- (p.x + w, p.y)+randvec(r) -- (p.x + w, p.y + h)+randvec(r) -- (p.x, p.y + h)+randvec(r) -- cycle;
    }
    path fuzzyline(pair p, pair q, int n = 4, real delta = 0.1) {
        path r = p;
        q = q - p;
        for (int i=1; i<n; ++i) r = r -- p+(i/n)*q+randvec(delta);
        return r -- p+q;
    }
    picture pic;
    real x = 0;
    pen ligcol = col*0.2 + lightgray*0.8;
    pen darcol = col*0.4 + black*0.6;
    pair p1 = (x+.7+.2*unitrand(), .2+.5*unitrand());
    pair p2 = (x+.1+.2*unitrand(), .2+.5*unitrand());
    real shrink = ((p2.x-x) + (x+1-p1.x))/2;
    path box = fuzzyline((x+1, 0), p1) -- fuzzyline(p1, p2) -- fuzzyline(p2, (x, 0)) -- cycle;
    filldraw(pic, box, ligcol, darcol+width);
    int n_win = (4 + rand() % 5);
    for (int i = 0; i < n_win; ++i) {
        real win_w = .05 + unitrand() * .1;
        real win_h = win_w * (unitrand() + 0.3);
        real win_y = .3/n_win * i + 0.05;
        if (win_h + win_y > .5)
            win_y = .5 - win_h;
        real win_x = x + shrink * (i+1) / n_win + unitrand() * (1 - 2 * shrink * (i+1) / n_win - win_w);

        fill(pic, rect((win_x, win_y), win_w, win_h, .1), col*0.3 + gray*0.7);
    }
    path esse = (0,0) .. (0.3,1) .. (-0.2,1.6) .. (0.1,2.2);
    real y = (p1.y+p2.y)/2 + 0.1;
    draw(pic, shift(0.5,y)*rotate(20*unitrand()-10)*scale(0.2)*esse, darcol+width);
    draw(pic, shift(0.6,y)*rotate(20*unitrand()-30)*scale(0.15)*esse, darcol+width);
    draw(pic, shift(0.35,y)*rotate(20*unitrand()+20)*scale(0.12)*esse, darcol+width);
    return scale(width)*shift(-0.5,0)*pic;
}
