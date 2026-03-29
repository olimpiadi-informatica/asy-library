import math;

picture drawing(real k=1, real len=2, pen col = rgb("9f6736")) {
    picture pic;
    path rect(pair a, pair b) {
        return a -- (a.x,b.y) -- b -- (b.x,a.y) -- cycle;
    }
    real w = 0.1;
    real d = w / sqrt(1+len*len);
    pen darcol = col*0.8 + deepgray*0.2;
    pen ligcol = col*0.3 + palegray*0.7;
    fill(pic, rect((0,0), (len,1)), ligcol);
    filldraw(pic, (d,0) -- (len,1-d*len) -- (len-d,1) -- (0,d*len) -- cycle, col, darcol+k*2);
    filldraw(pic, rect((0,0), (w,1)), col, darcol+k*2);
    filldraw(pic, rect((len-w,0), (len,1)), col, darcol+k*2);
    filldraw(pic, rect((0,0), (len,w)), col, darcol+k*2);
    filldraw(pic, rect((0,1-w), (len,1)), col, darcol+k*2);
    path p = (0,1) -- (len,1) -- (len*0.8,1.4) -- (len*0.2,1.4) -- cycle;
    real f = 0.2*len - 0.4*w;
    path q = (w+f*w,1+0.4*w) -- (len-w-f*w,1+0.4*w) -- (len*0.8-0.6*w+f*w,1.4-0.4*w) -- (len*0.2+0.6*w-f*w,1.4-0.4*w) -- cycle;
    fill(pic, p, ligcol);
    filldraw(pic, p ^^ reverse(q), col, darcol+k*2);
    return scale(3*k)*pic;
}
