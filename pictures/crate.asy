picture drawing(real k = 1, picture subpic = new picture) {
	picture pic;
	path[] p;
	p = (-87.5, 50) -- (0, 0) -- (87.5, 50) -- (0, 100.0) -- cycle ^^ (-75.6, -44.4) -- (-12.4, -81.6) -- (-11.6, -8.4) -- (-75.2, 29.0) -- cycle;
	fill(pic, p, rgb("ca9867")+evenodd);
	p = (-63.4, 50.1) -- (0.3, 12.6) -- (63.6, 49.2) -- (1.3, 86.3) -- cycle ^^ (-57.8, 50.3) -- (0.3, 15.6) -- (58.2, 48.9) -- (1.4, 83.4) -- cycle ^^ (-87.5, -50) -- (0, -100) -- (0, 0) -- (-87.5, 50) -- cycle ^^ (-75.6, -44.4) -- (-12.4, -81.6) -- (-11.6, -8.4) -- (-75.2, 29.0) -- cycle ^^ (75.8, 29.0) -- (13.7, -6.9) -- (12.2, -80.6) -- (76.5, -44.8) -- (76.3, 29.1) -- cycle ^^ (-64.9, 19.9) -- (-44.0, -16.3) -- (-23.2, -4.7) -- cycle ^^ (-73.2, -33.4) -- (-53.1, -21.7) -- (-72.4, 14.1) -- cycle ^^ (-35.2, -30.9) -- (-14.3, -66.2) -- (-14.1, -18.7) -- cycle ^^ (-64.9, -48.1) -- (-22.8, -72.5) -- (-43.5, -36.1) -- cycle;
	fill(pic, p, rgb("986c3f")+evenodd);
	p = (0, 0) -- (0, -100) -- (87.5, -50) -- (87.5, 50) -- cycle ^^ (75.8, 29.0) -- (13.7, -6.9) -- (12.2, -80.6) -- (76.5, -44.8) -- cycle ^^ (23.9, -3.8) -- (44.3, -16.9) -- (64.5, 19.5) -- cycle ^^ (52.6, -21.6) -- (73.0, -33.6) -- (73.8, 14.8) -- cycle ^^ (14.7, -67.5) -- (35.4, -32.2) -- (16.2, -19.5) -- cycle ^^ (23.5, -71.8) -- (66.6, -47.9) -- (44.5, -36.1) -- cycle;
	fill(pic, p, rgb("7f4d32")+evenodd);
    pic = scale(k/32)*pic;
    add(pic, shift(0,50/32)*subpic);
	return pic;
}
