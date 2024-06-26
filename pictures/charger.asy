picture drawing(real k = 1, pen color = white, pen theme = heavygreen) {
	picture pic;
	path[] p;
 
    // MAIN BOX
	p = (5, 100) -- (-25, 80) -- (-25, -80) -- (5, -100) -- (35, -80) -- (35, 80) -- cycle;
	fill(pic, p, color * 0.8);
	p = (-25, 80) -- (-25, -80) -- (5, -100) -- (5, 60) -- cycle;
	fill(pic, p, color * 0.6);
    p = (35, 80) -- (5, 100) -- (-25, 80) -- (5, 60) -- cycle;
    fill(pic, p, color * 0.9);

    // PLUG
    p = (-15.9, 62.6) -- (-15.9, 47.6) -- (-9, 43) -- (-9, 58) -- cycle;
    fill(pic, p, color * 0.25);
    p = (-13.5, 61) -- (-15.9, 62.6) -- (-15.9, 54) -- cycle;
    fill(pic, p, color * 0.4);
    
    pen darktheme = 0.6*theme;
    
    // SEPARATING LINES
    p = (-25, 20) -- (5, 0) -- (35, 20);
    for (int y=0; y<3; ++y)
        draw(pic, shift(0,-3*y)*p, darktheme+k);

    // CABLE
    p = (-13.5, 49.8) .. controls (-13.9, 43.1) and (-14.0, 36.4) .. (-14.3, 29.7) .. controls (-11.0, 17.6) and (-7.7, 7.5) .. (-4.7, -3.7) .. controls (-3.7, -6.8) and (-3.0, -10.0) .. (-3.2, -13.3) .. controls (-3.5, -27.7) and (-4.5, -43.0) .. (-5.9, -56.0) .. controls (-6.8, -63.8) and (-10.6, -72.1) .. (-12.8, -78.9) .. controls (-15.1, -81.8) and (-21.3, -82.6) .. (-24.3, -83.2) .. controls (-25.9, -83.5) and (-27.6, -82.6) .. (-28.1, -81.1) .. controls (-29.8, -77.2) and (-31.5, -73.4) .. (-33.2, -69.8) .. controls (-31.0, -66.1) and (-27.5, -61.8) .. (-25, -58.1) -- (-25, -50.8) .. controls (-30.2, -57.1) and (-34.0, -62.7) .. (-37.6, -68.4) .. controls (-38.3, -70.5) and (-36.8, -72.3) .. (-36.1, -74.1) .. controls (-34.0, -78.6) and (-32.0, -83.2) .. (-29.9, -87.7) .. controls (-28.8, -88.8) and (-27.1, -88.3) .. (-25.8, -87.9) .. controls (-20.8, -86.3) and (-15.9, -85.1) .. (-11.3, -83.6) .. controls (-8.3, -76.7) and (-5.1, -67.2) .. (-2.9, -60.3) .. controls (-1.3, -44.1) and (-0.8, -28.4) .. (0.4, -12.4) .. controls (0.7, -8.0) and (-0.9, -3.9) .. (-1.9, 0.3) .. controls (-5.0, 11.1) and (-8.1, 21.0) .. (-10.8, 31.1) .. controls (-10.4, 38.4) and (-9.9, 45.2) .. (-9.1, 52.7) .. controls (-9.0, 53.8) and (-10.5, 56.6) .. (-12.2, 55.4) .. controls (-14.0, 54.1) and (-13.4, 51.4) .. (-13.5, 49.8) -- cycle;
    fill(pic, p, black);

    path drop = (13.1, 40.4) {N}..{dir(33.7)} (21.5, 57) {dir(33.7)}..{S} (29.9, 51.6) {S}..{dir(245)} (21.5, 29) {dir(140)}..{N} cycle;

	p = (8, 58) -- (8, 10) -- (32.9, 26.6) -- (32.9, 74.6) -- cycle ^^ drop;
    fill(pic, p, theme+evenodd);
    p = (8, -30) -- (8, -98) -- (32.9, -81.4) -- (32.9, -13.4) -- cycle;
	fill(pic, p, theme);
   
	p = drop ^^ (14.6, 41.4) {N}..{dir(33.7)} (21.5, 54) {dir(33.7)}..{S} (29-.6, 51-.4) {S}..{dir(180+33.7)} (21.5, 38) {dir(180+33.7)}..{N} cycle;
    fill(pic, p, darktheme+evenodd);
    p = (19.7, 47.2) .. controls (17.8, 43.3) and (17.8, 42.8) .. (19.9, 44.0) .. controls (21.0, 44.6) and (21.1, 44.5) .. (20.8, 43.0) .. controls (20.3, 40.6) and (20.9, 41.2) .. (22.7, 44.8) .. controls (24.9, 49.3) and (24.9, 49.6) .. (22.8, 48.3) .. controls (21.8, 47.7) and (21.4, 47.8) .. (21.7, 48.6) .. controls (22.0, 49.4) and (22.0, 50.5) .. (21.7, 50.5) .. controls (21.5, 50.5) and (20.6, 49.0) .. (19.7, 47.2) -- cycle;
	fill(pic, p, darktheme);
	return scale(k/32)*pic;
}
