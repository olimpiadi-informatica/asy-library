picture drawing(real k = 1, pen flag_color = red + red+evenodd) {
	picture pic;
	path[] p;
	p = (-48.8, 75.3) .. controls (-51.9, 73.4) and (-52.2, 68.8) .. (-49.3, 66.2) -- (-48.5, 65.4) -- (-48.5, -7.6) -- (-48.5, -80.5) -- (-45.6, -80.5) -- (-42.8, -80.5) -- (-42.8, -7.6) -- (-42.8, 65.4) -- (-41.9, 66.2) .. controls (-40.0, 67.8) and (-39.5, 70.7) .. (-40.6, 73.1) .. controls (-41.9, 75.9) and (-46.0, 77.0) .. (-48.8, 75.3) -- cycle;
	fill(pic, p, black+evenodd);
	p = (-41.7, 65.6) -- (-42.8, 65.5) -- (-42.8, 27.8) -- (-42.8, -9.9) -- (-39.7, -7.7) .. controls (-35.2, -4.7) and (-28.6, -0.9) .. (-24.3, 0.9) .. controls (-16.4, 4.4) and (-11.1, 5.6) .. (5.3, 7.7) .. controls (25.6, 10.3) and (33.7, 12.4) .. (45.4, 18.3) .. controls (53.3, 22.3) and (62.2, 28.4) .. (61.4, 29.2) .. controls (61.2, 29.4) and (58.7, 29.3) .. (55.7, 29.1) .. controls (44.6, 28.3) and (36.3, 29.9) .. (26.4, 35.0) .. controls (23.9, 36.2) and (16.8, 40.7) .. (10.5, 44.8) .. controls (-2.6, 53.6) and (-6.8, 56.1) .. (-14.1, 59.6) .. controls (-20.7, 62.8) and (-25.6, 64.5) .. (-30.1, 65.3) .. controls (-33.3, 65.9) and (-39.0, 66.0) .. (-41.7, 65.6) -- cycle;
	fill(pic, p, red+evenodd);
	return scale(k/32)*pic;
}