picture drawing(pen col = black, real width = 1, real height = 1, real shrink = .4*unitrand()-.1, real antenna_h = .5*unitrand(), real antenna_r = .03+.03*unitrand()) {
    pair randvec(real r) {
        return (unitrand()-.5,unitrand()-.5)*r;
    }
    path rect(pair p, real w, real h, real r = 0) {
        return p+randvec(r) -- (p.x + w, p.y)+randvec(r) -- (p.x + w, p.y + h)+randvec(r) -- (p.x, p.y + h)+randvec(r) -- cycle;
    }
    picture pic;
    real x = 0;
    pen ligcol = col*0.2 + lightgray*0.8;
    pen darcol = col*0.4 + black*0.6;
	path box = (x, 0) -- (x + 1, 0) -- (x + 1 - shrink, height) -- (x + shrink, height) -- cycle;
	filldraw(pic, box, ligcol, darcol + width);

    if (antenna_h * antenna_r > 0.006) {
        draw(pic, (x + .5, height) -- (x + .5, height + antenna_h), darcol);
        fill(pic, circle((x+.5, height + antenna_h), antenna_r), darcol);
    }

	int n_win = (2 + rand() % 3) * (int)(height+1);
	for (int i = 0; i < n_win; ++i) {
		real win_w = .1 + unitrand() * .1;
		real win_h = win_w * (unitrand() + 1);
		real win_y = height/n_win * i;
		if (win_h + win_y > height)
			win_y = height - win_h;
		real win_x = x + shrink * (i+1) / n_win + unitrand() * (1 - 2 * shrink * (i+1) / n_win - win_w);
		filldraw(pic, rect((win_x, win_y), win_w, win_h), white, col*0.3 + gray*0.7 + width);
	}
    return scale(width)*pic;
}
