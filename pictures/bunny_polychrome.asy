pen tiptap_col = gray(0.8);
pen carol_col = rgb("ba95c7");
pen bunny_col = rgb("e2bd98");
pen allie_col = rgb("f29d98");

picture drawing(real k = 1, pen color = tiptap_col, pen skin = rgb("f9b3b1")) {
	picture pic;
	path[] p;
	p = (-1.3, 11.5) .. controls (-2.6, 10.8) and (-2.5, 8.8) .. (-1.2, 8.2) .. controls (0.3, 7.6) and (1.6, 9.0) .. (1.1, 10.5) .. controls (0.8, 11.5) and (-0.3, 12.0) .. (-1.3, 11.5) -- cycle ^^ (-20.2, 11.0) .. controls (-21.0, 10.7) and (-21.2, 9.6) .. (-20.7, 9.0) .. controls (-20.0, 8.1) and (-18.6, 8.5) .. (-18.5, 9.6) .. controls (-18.5, 10.7) and (-19.3, 11.4) .. (-20.2, 11.0) -- cycle ^^ (-15.6, 2.9) .. controls (-21.4, 2.4) and (-26.1, 1.0) .. (-29.6, -1.2) -- (-30.6, -1.9) -- (-30.3, -2.6) .. controls (-24.6, -16.9) and (5.5, -21.5) .. (20.8, -10.3) .. controls (21.4, -9.9) and (21.8, -9.5) .. (21.8, -9.4) .. controls (13.0, -1.6) and (-3.8, 3.9) .. (-15.6, 2.9) -- cycle ^^ (-15.5, 1.3) .. controls (-17.5, 0.8) and (-17.7, -0.2) .. (-16.0, -1.9) -- (-15.0, -2.9) -- (-15.2, -4.0) .. controls (-15.3, -4.8) and (-15.3, -5.4) .. (-15.2, -5.9) .. controls (-15.0, -6.8) and (-15.1, -6.9) .. (-15.5, -7.1) .. controls (-16.2, -7.5) and (-17.4, -7.2) .. (-18.4, -6.4) .. controls (-19.1, -5.9) and (-19.2, -5.9) .. (-18.9, -6.6) .. controls (-18.1, -8.0) and (-16.2, -8.7) .. (-14.9, -8.0) .. controls (-14.4, -7.8) and (-14.3, -7.8) .. (-14.2, -7.9) .. controls (-12.9, -9.4) and (-8.7, -9.3) .. (-7.0, -7.6) .. controls (-6.1, -6.7) and (-6.0, -6.2) .. (-6.9, -6.9) .. controls (-9.8, -9.1) and (-14.1, -7.9) .. (-14.1, -4.9) .. controls (-14.0, -3.1) and (-14.0, -3.0) .. (-12.9, -2.6) .. controls (-11.3, -2.0) and (-9.7, -0.8) .. (-9.7, -0.1) .. controls (-9.7, 0.9) and (-13.5, 1.8) .. (-15.5, 1.3) -- cycle ^^ (-6.8, -18.1) .. controls (-9.1, -21.3) and (-12.6, -28.2) .. (-14.2, -32.5) -- (-14.6, -33.4) -- (-13.4, -34.2) .. controls (-8.4, -37.4) and (-10.1, -46.1) .. (-15.8, -46.8) -- (-16.5, -46.9) -- (-16.3, -48.0) .. controls (-13.7, -64.5) and (6.2, -64.7) .. (8.8, -48.3) -- (8.9, -47.7) -- (8.1, -48.2) .. controls (-2.3, -53.9) and (-9.3, -40.4) .. (0.9, -34.1) .. controls (2.5, -33.1) and (4.1, -31.9) .. (5.3, -30.8) -- (6.0, -30.2) -- (5.6, -27.8) .. controls (5.1, -24.8) and (4.8, -22.1) .. (4.6, -19.6) -- (4.5, -17.8) -- (3.3, -17.9) .. controls (2.0, -18.0) and (-5.7, -17.9) .. (-6.2, -17.8) .. controls (-6.5, -17.7) and (-6.6, -17.8) .. (-6.8, -18.1) -- cycle;
	fill(pic, p, 0.75*white+0.25*color+evenodd);
	p = (2.2, 78.4) .. controls (0.1, 78.0) and (-2.0, 76.5) .. (-2.4, 74.3) .. controls (-3.0, 71.4) and (-2.5, 68.4) .. (-1.7, 65.6) .. controls (0.8, 58.4) and (6.0, 52.4) .. (8.2, 45.0) .. controls (8.9, 42.6) and (8.9, 40.1) .. (8.6, 37.7) .. controls (9.1, 37.5) and (11.0, 36.8) .. (9.7, 37.0) .. controls (2.8, 38.0) and (-4.7, 38.4) .. (-11.3, 35.5) .. controls (-16.9, 33.1) and (-21.0, 27.9) .. (-23.4, 22.3) .. controls (-25.2, 17.7) and (-27.4, 13.2) .. (-29.3, 8.6) .. controls (-30.5, 5.5) and (-31.8, 2.1) .. (-30.8, -1.2) .. controls (-30.8, -2.3) and (-30.1, -1.5) .. (-29.6, -1.2) .. controls (-23.6, 2.6) and (-16.2, 3.4) .. (-9.2, 2.9) .. controls (1.8, 2.0) and (12.6, -2.2) .. (21.3, -9.1) .. controls (22.0, -9.4) and (21.4, -10.3) .. (22.2, -9.5) .. controls (24.8, -6.8) and (27.2, -3.9) .. (28.5, -0.4) .. controls (31.9, 7.6) and (30.6, 17.0) .. (26.0, 24.2) .. controls (23.1, 29.0) and (18.9, 32.8) .. (14.1, 35.6) .. controls (13.5, 36.3) and (15.9, 34.7) .. (16.1, 36.0) .. controls (20.7, 42.1) and (24.4, 49.5) .. (24.2, 57.4) .. controls (24.0, 64.1) and (20.7, 70.6) .. (15.3, 74.6) .. controls (11.6, 77.3) and (6.9, 79.3) .. (2.2, 78.4) -- cycle ^^ (2.7, 71.6) .. controls (1.9, 71.4) and (-0.2, 70.2) .. (1.7, 70.7) .. controls (3.6, 71.5) and (3.1, 69.0) .. (3.2, 67.8) .. controls (3.3, 64.1) and (4.6, 60.6) .. (6.2, 57.4) .. controls (8.2, 53.1) and (10.7, 49.0) .. (11.9, 44.4) .. controls (12.0, 43.6) and (12.2, 42.7) .. (12.3, 41.9) .. controls (11.9, 40.9) and (11.4, 40.0) .. (11.2, 39.0) .. controls (13.0, 41.2) and (14.2, 43.9) .. (15.1, 46.7) .. controls (17.0, 53.0) and (16.7, 60.1) .. (13.7, 66.1) .. controls (12.1, 69.2) and (9.1, 72.1) .. (5.4, 72.0) .. controls (4.5, 72.0) and (3.5, 71.9) .. (2.7, 71.6) -- cycle ^^ (-33.2, 67.2) .. controls (-37.1, 66.4) and (-41.2, 64.5) .. (-43.3, 60.9) .. controls (-44.2, 59.4) and (-44.2, 57.3) .. (-43.2, 55.8) .. controls (-41.1, 52.0) and (-37.0, 50.2) .. (-33.2, 48.6) .. controls (-26.5, 45.9) and (-19.3, 44.6) .. (-12.9, 41.3) .. controls (-11.3, 40.4) and (-10.0, 39.3) .. (-8.8, 38.0) .. controls (-7.0, 38.4) and (-5.2, 38.7) .. (-3.4, 39.0) .. controls (-3.5, 44.1) and (-4.6, 49.3) .. (-7.0, 53.8) .. controls (-10.7, 60.9) and (-17.8, 66.4) .. (-25.9, 67.4) .. controls (-28.3, 67.7) and (-30.8, 67.6) .. (-33.2, 67.2) -- cycle ^^ (-31.7, 61.3) .. controls (-34.6, 60.7) and (-37.7, 58.8) .. (-38.2, 55.7) .. controls (-38.5, 54.6) and (-37.6, 56.5) .. (-37.3, 56.7) .. controls (-36.8, 57.5) and (-36.4, 56.9) .. (-36.0, 56.4) .. controls (-33.6, 53.9) and (-30.8, 51.7) .. (-27.5, 50.4) .. controls (-22.6, 48.4) and (-17.3, 47.0) .. (-12.6, 44.2) .. controls (-11.0, 43.3) and (-9.9, 41.7) .. (-9.3, 39.9) .. controls (-8.8, 39.2) and (-9.4, 41.3) .. (-9.4, 41.7) .. controls (-10.9, 49.2) and (-15.8, 56.1) .. (-22.6, 59.7) .. controls (-25.4, 61.1) and (-28.6, 61.9) .. (-31.7, 61.3) -- cycle ^^ (-3.5, 13.5) .. controls (-6.8, 12.4) and (-8.2, 8.1) .. (-6.6, 5.2) .. controls (-5.4, 2.5) and (-1.7, 1.2) .. (0.7, 3.1) .. controls (3.7, 5.3) and (3.8, 10.4) .. (0.8, 12.6) .. controls (-0.4, 13.6) and (-2.1, 14.0) .. (-3.5, 13.5) -- cycle ^^ (-22.5, 12.6) .. controls (-25.3, 10.9) and (-25.5, 6.7) .. (-23.6, 4.3) .. controls (-22.4, 2.6) and (-19.5, 2.5) .. (-18.2, 4.2) .. controls (-16.1, 6.7) and (-16.5, 11.2) .. (-19.5, 12.7) .. controls (-20.5, 13.2) and (-21.6, 13.1) .. (-22.5, 12.6) -- cycle ^^ (12.5, -16.0) .. controls (10.2, -16.8) and (7.8, -17.2) .. (5.4, -17.6) .. controls (5.4, -21.4) and (5.9, -25.2) .. (6.5, -28.9) .. controls (7.1, -30.1) and (8.1, -27.6) .. (8.6, -27.1) .. controls (10.1, -24.7) and (11.4, -22.2) .. (12.3, -19.5) .. controls (12.7, -19.7) and (12.0, -21.9) .. (11.8, -22.8) .. controls (10.3, -28.3) and (5.9, -32.5) .. (1.3, -35.5) .. controls (-0.8, -36.9) and (-2.9, -38.9) .. (-2.8, -41.6) .. controls (-2.8, -42.1) and (-3.0, -42.8) .. (-2.2, -42.9) .. controls (-1.0, -43.7) and (0.6, -43.7) .. (1.9, -43.0) .. controls (1.4, -43.7) and (-0.1, -44.2) .. (-1.2, -44.2) .. controls (-2.7, -43.7) and (-2.4, -44.7) .. (-1.6, -45.4) .. controls (-0.5, -47.0) and (1.9, -47.5) .. (3.6, -46.5) .. controls (4.8, -46.4) and (0.6, -48.0) .. (2.8, -47.9) .. controls (6.7, -48.2) and (10.1, -45.5) .. (12.5, -42.6) .. controls (17.0, -37.3) and (19.1, -29.9) .. (17.3, -23.2) .. controls (16.6, -20.6) and (15.5, -18.0) .. (13.8, -15.9) .. controls (13.4, -15.6) and (12.9, -15.9) .. (12.5, -16.0) -- cycle ^^ (-10.1, -18.7) .. controls (-15.1, -22.8) and (-19.6, -27.9) .. (-21.6, -34.1) .. controls (-22.5, -37.3) and (-22.7, -41.3) .. (-20.4, -44.0) .. controls (-19.7, -44.9) and (-18.6, -45.4) .. (-17.5, -45.6) .. controls (-18.2, -45.0) and (-18.8, -44.3) .. (-19.2, -43.5) .. controls (-18.0, -44.8) and (-16.1, -45.6) .. (-14.4, -44.9) .. controls (-13.8, -44.6) and (-12.9, -43.8) .. (-12.7, -43.3) .. controls (-14.4, -43.3) and (-15.9, -42.3) .. (-16.5, -40.8) .. controls (-15.5, -41.7) and (-14.1, -42.8) .. (-12.6, -42.2) .. controls (-11.3, -41.3) and (-11.5, -39.4) .. (-11.7, -38.1) .. controls (-12.1, -36.4) and (-13.6, -35.3) .. (-14.9, -34.4) .. controls (-16.5, -33.2) and (-17.6, -31.2) .. (-17.4, -29.2) .. controls (-16.9, -30.2) and (-16.4, -31.4) .. (-15.6, -32.2) .. controls (-13.7, -27.4) and (-11.3, -22.8) .. (-8.6, -18.3) .. controls (-7.3, -16.1) and (-9.6, -18.4) .. (-10.1, -18.7) -- cycle ^^ (19.2, -30.0) .. controls (18.6, -36.0) and (15.8, -41.8) .. (11.3, -45.9) .. controls (9.7, -46.6) and (9.5, -48.2) .. (9.3, -49.8) .. controls (8.4, -54.5) and (5.1, -59.0) .. (0.4, -60.5) .. controls (-2.4, -61.5) and (-5.5, -61.3) .. (-8.2, -60.3) .. controls (-5.0, -62.4) and (-1.2, -63.9) .. (2.6, -64.6) .. controls (4.0, -64.2) and (3.9, -62.0) .. (4.7, -60.9) .. controls (6.7, -56.8) and (9.1, -52.6) .. (12.9, -50.1) .. controls (14.5, -49.0) and (16.6, -48.6) .. (18.3, -49.5) .. controls (20.2, -49.3) and (22.4, -48.9) .. (24.1, -50.4) .. controls (25.9, -51.5) and (26.8, -53.7) .. (26.3, -55.8) .. controls (26.7, -56.4) and (27.1, -59.0) .. (27.7, -57.3) .. controls (29.8, -53.6) and (29.8, -49.1) .. (28.4, -45.2) .. controls (26.8, -40.3) and (23.4, -36.4) .. (21.0, -31.9) .. controls (20.5, -31.2) and (19.7, -29.0) .. (19.3, -29.2) .. controls (19.3, -29.4) and (19.2, -29.7) .. (19.2, -30.0) -- cycle ^^ (32.7, -37.9) .. controls (31.3, -38.3) and (30.3, -39.3) .. (29.6, -40.5) .. controls (29.0, -40.0) and (27.5, -38.0) .. (26.8, -38.7) .. controls (29.8, -43.3) and (31.5, -49.0) .. (30.2, -54.4) .. controls (30.0, -55.9) and (28.9, -57.3) .. (28.7, -58.7) .. controls (30.2, -59.0) and (31.6, -58.3) .. (32.6, -57.2) .. controls (33.5, -57.2) and (34.4, -57.6) .. (35.3, -57.3) .. controls (37.7, -56.8) and (39.3, -54.0) .. (38.4, -51.7) .. controls (37.4, -49.8) and (40.6, -51.0) .. (41.0, -49.4) .. controls (42.1, -47.9) and (41.1, -45.5) .. (39.2, -45.3) .. controls (38.5, -45.3) and (37.5, -45.5) .. (38.2, -44.6) .. controls (39.5, -41.9) and (37.7, -38.2) .. (34.7, -37.8) .. controls (34.0, -37.7) and (33.3, -37.7) .. (32.7, -37.9) -- cycle ^^ (-30.5, -46.0) .. controls (-32.1, -46.1) and (-33.7, -47.5) .. (-33.8, -49.2) .. controls (-34.0, -50.1) and (-33.3, -52.1) .. (-33.6, -52.2) .. controls (-34.4, -51.1) and (-34.4, -49.6) .. (-34.6, -48.3) .. controls (-35.7, -50.1) and (-35.1, -52.4) .. (-34.4, -54.3) .. controls (-33.4, -56.5) and (-31.9, -58.4) .. (-30.4, -60.3) .. controls (-29.7, -59.4) and (-28.4, -59.2) .. (-27.4, -59.7) .. controls (-24.5, -60.8) and (-22.1, -63.0) .. (-20.5, -65.7) .. controls (-19.6, -66.7) and (-20.8, -69.4) .. (-18.6, -68.3) .. controls (-16.7, -67.7) and (-15.5, -66.0) .. (-13.7, -65.4) .. controls (-11.2, -64.3) and (-8.5, -63.8) .. (-5.9, -63.2) .. controls (-10.9, -60.7) and (-15.4, -56.5) .. (-17.0, -51.0) .. controls (-17.6, -49.8) and (-18.2, -52.4) .. (-18.7, -53.0) .. controls (-19.8, -54.4) and (-18.8, -56.1) .. (-18.6, -57.7) .. controls (-18.4, -58.3) and (-18.3, -59.7) .. (-18.8, -58.4) .. controls (-20.2, -55.3) and (-21.5, -52.0) .. (-24.0, -49.5) .. controls (-25.1, -48.3) and (-27.2, -48.4) .. (-28.1, -49.7) .. controls (-28.9, -50.7) and (-28.9, -51.9) .. (-28.8, -53.1) .. controls (-28.5, -51.3) and (-26.2, -52.1) .. (-26.1, -53.6) .. controls (-25.5, -55.6) and (-28.3, -55.5) .. (-28.5, -53.8) .. controls (-29.1, -52.7) and (-28.1, -55.7) .. (-28.9, -54.2) .. controls (-30.0, -52.3) and (-30.3, -49.5) .. (-28.4, -48.0) .. controls (-28.0, -47.3) and (-25.3, -47.2) .. (-27.1, -46.5) .. controls (-28.2, -46.1) and (-29.3, -45.7) .. (-30.5, -46.0) -- cycle ^^ (-33.1, -49.1) .. controls (-34.1, -50.3) and (-33.4, -52.5) .. (-32.1, -53.2) .. controls (-30.2, -53.5) and (-30.7, -50.6) .. (-31.5, -49.6) .. controls (-31.9, -49.2) and (-32.5, -48.7) .. (-33.1, -49.1) -- cycle ^^ (14.1, -50.8) .. controls (11.2, -52.5) and (9.3, -55.5) .. (7.5, -58.4) .. controls (5.4, -62.3) and (3.4, -66.5) .. (3.0, -71.0) .. controls (2.8, -72.5) and (3.1, -74.7) .. (5.0, -74.8) .. controls (8.1, -75.2) and (11.0, -73.8) .. (13.8, -72.5) .. controls (18.0, -70.3) and (22.1, -67.4) .. (24.7, -63.3) .. controls (25.8, -61.5) and (26.4, -59.3) .. (25.5, -57.3) .. controls (24.5, -58.7) and (22.8, -59.6) .. (21.1, -60.1) .. controls (22.7, -58.5) and (24.8, -57.0) .. (24.9, -54.5) .. controls (24.7, -52.0) and (22.0, -49.8) .. (19.5, -50.8) .. controls (17.5, -51.5) and (16.4, -53.3) .. (15.5, -55.0) .. controls (15.3, -54.2) and (16.2, -52.1) .. (17.0, -51.0) .. controls (17.5, -49.5) and (14.8, -50.5) .. (14.1, -50.8) -- cycle ^^ (13.2, -52.0) .. controls (11.7, -52.9) and (12.9, -55.5) .. (14.4, -54.2) .. controls (16.0, -53.5) and (15.4, -50.4) .. (13.5, -51.8) -- (13.4, -51.9) -- cycle ^^ (19.6, -53.1) .. controls (18.1, -53.8) and (16.9, -55.8) .. (17.8, -57.3) .. controls (19.0, -58.6) and (21.1, -57.6) .. (21.7, -56.2) .. controls (22.5, -55.1) and (22.3, -53.1) .. (20.6, -53.1) .. controls (20.3, -53.0) and (19.9, -53.0) .. (19.6, -53.1) -- cycle ^^ (23.3, -60.1) .. controls (21.2, -61.1) and (23.0, -64.1) .. (24.7, -62.3) .. controls (26.3, -61.1) and (24.9, -58.7) .. (23.3, -60.1) -- cycle ^^ (11.6, -60.9) .. controls (8.3, -62.2) and (5.8, -65.2) .. (5.1, -68.6) .. controls (4.7, -70.3) and (5.5, -72.5) .. (7.5, -72.8) .. controls (10.1, -73.0) and (12.5, -71.1) .. (14.1, -69.2) .. controls (15.6, -67.4) and (16.8, -65.0) .. (16.2, -62.6) .. controls (15.7, -60.6) and (13.3, -60.2) .. (11.6, -60.9) -- cycle;
	fill(pic, p, color+evenodd);
	p = (4.6, 68.3) .. controls (4.7, 64.0) and (5.3, 61.9) .. (7.7, 56.9) .. controls (11.1, 49.9) and (12.3, 46.8) .. (12.7, 44.1) -- (12.8, 43.2) -- (13.5, 45.2) .. controls (17.6, 57.6) and (13.8, 69.3) .. (5.2, 70.7) -- (4.5, 70.8) -- (4.6, 68.3) -- cycle ^^ (-31.8, 59.8) .. controls (-32.9, 59.6) and (-35.3, 58.6) .. (-35.6, 58.2) .. controls (-35.7, 58.0) and (-33.7, 55.9) .. (-32.2, 54.7) .. controls (-29.8, 52.7) and (-28.1, 51.8) .. (-24.1, 50.3) .. controls (-16.5, 47.4) and (-13.9, 46.2) .. (-11.3, 44.1) -- (-10.9, 43.8) -- (-11.2, 44.7) .. controls (-16.0, 55.6) and (-23.8, 61.3) .. (-31.8, 59.8) -- cycle ^^ (-33.1, -49.6) .. controls (-33.9, -50.7) and (-32.3, -53.8) .. (-31.4, -52.7) .. controls (-30.9, -52.1) and (-31.2, -50.5) .. (-32.0, -49.7) .. controls (-32.4, -49.2) and (-32.8, -49.2) .. (-33.1, -49.6) -- cycle ^^ (13.5, -52.4) .. controls (12.8, -53.1) and (12.8, -54.0) .. (13.5, -54.1) .. controls (14.2, -54.2) and (15.2, -52.8) .. (14.8, -52.1) .. controls (14.6, -51.7) and (14.0, -51.8) .. (13.5, -52.4) -- cycle ^^ (-28.1, -52.5) .. controls (-28.4, -52.7) and (-28.3, -53.6) .. (-28.0, -54.2) .. controls (-27.3, -55.1) and (-26.4, -55.0) .. (-26.4, -54.0) .. controls (-26.4, -52.9) and (-27.5, -51.9) .. (-28.1, -52.5) -- cycle ^^ (19.6, -53.7) .. controls (19.3, -53.9) and (18.8, -54.2) .. (18.6, -54.5) .. controls (16.8, -56.5) and (18.7, -58.6) .. (20.7, -56.8) .. controls (22.6, -55.1) and (21.7, -52.6) .. (19.6, -53.7) -- cycle ^^ (-29.0, -59.7) .. controls (-29.2, -59.8) and (-29.5, -60.0) .. (-29.7, -60.3) -- (-30.0, -60.6) -- (-28.4, -62.2) .. controls (-25.7, -64.8) and (-21.5, -68.0) .. (-20.6, -68.0) .. controls (-20.2, -68.0) and (-21.0, -66.0) .. (-22.0, -64.6) .. controls (-24.3, -61.3) and (-27.3, -59.2) .. (-29.0, -59.7) -- cycle ^^ (23.5, -60.5) .. controls (22.3, -61.4) and (22.8, -62.9) .. (24.1, -62.1) .. controls (24.6, -61.9) and (25.0, -61.2) .. (25.0, -60.8) .. controls (25.0, -60.1) and (24.2, -59.9) .. (23.5, -60.5) -- cycle ^^ (12.1, -61.2) .. controls (8.5, -62.3) and (5.1, -66.8) .. (5.5, -69.9) .. controls (6.0, -74.3) and (12.6, -72.2) .. (15.2, -66.8) .. controls (16.9, -63.0) and (15.4, -60.2) .. (12.1, -61.2) -- cycle;
	fill(pic, p, skin+evenodd);
	p = (2.4, 79.7) .. controls (-2.1, 79.0) and (-3.9, 76.7) .. (-3.9, 71.6) .. controls (-3.9, 66.8) and (-2.7, 63.4) .. (2.1, 55.1) .. controls (6.4, 47.4) and (7.5, 44.5) .. (7.5, 40.4) .. controls (7.5, 38.0) and (7.5, 38.0) .. (5.9, 38.4) .. controls (3.8, 38.9) and (2.6, 39.0) .. (0.2, 39.1) -- (-2.1, 39.1) -- (-2.2, 40.7) .. controls (-3.1, 54.8) and (-10.7, 64.8) .. (-22.8, 67.9) .. controls (-36.9, 71.5) and (-50.2, 62.4) .. (-43.3, 53.8) .. controls (-40.1, 49.9) and (-36.4, 47.9) .. (-25.8, 44.7) .. controls (-16.7, 42.0) and (-13.4, 40.5) .. (-11.0, 38.4) -- (-10.1, 37.5) -- (-11.4, 37.0) .. controls (-17.9, 34.2) and (-22.0, 29.7) .. (-25.2, 21.8) .. controls (-25.9, 20.2) and (-26.9, 17.9) .. (-27.4, 16.6) .. controls (-30.6, 9.5) and (-31.7, 6.8) .. (-32.1, 4.8) .. controls (-34.3, -5.0) and (-26.4, -13.4) .. (-12.1, -16.7) -- (-10.4, -17.1) -- (-11.7, -18.1) .. controls (-23.9, -28.3) and (-27.9, -44.3) .. (-18.7, -46.6) .. controls (-17.4, -46.9) and (-17.4, -47.9) .. (-18.4, -49.7) .. controls (-18.8, -50.4) and (-19.3, -51.3) .. (-19.5, -51.7) .. controls (-20.0, -52.7) and (-20.0, -52.7) .. (-20.4, -51.8) .. controls (-23.2, -45.9) and (-29.1, -43.0) .. (-32.9, -45.7) .. controls (-33.2, -45.9) and (-33.7, -46.2) .. (-34.0, -46.2) .. controls (-39.3, -47.3) and (-36.2, -56.9) .. (-28.3, -64.1) .. controls (-21.6, -70.2) and (-18.7, -71.0) .. (-15.1, -67.7) .. controls (-13.8, -66.5) and (-10.0, -65.2) .. (-5.3, -64.4) -- (-3.7, -64.2) -- (-2.0, -64.7) .. controls (-1.1, -65.0) and (0.3, -65.4) .. (1.1, -65.6) .. controls (2.0, -65.8) and (2.7, -65.9) .. (2.7, -65.9) .. controls (2.7, -65.9) and (2.5, -66.7) .. (2.3, -67.6) .. controls (1.7, -69.9) and (1.5, -72.0) .. (1.7, -73.1) .. controls (3.1, -81.3) and (24.2, -71.2) .. (27.0, -61.1) .. controls (27.4, -59.8) and (27.5, -59.7) .. (28.1, -59.9) .. controls (29.5, -60.2) and (31.5, -59.9) .. (32.5, -59.0) .. controls (32.9, -58.7) and (33.0, -58.6) .. (34.2, -58.6) .. controls (37.6, -58.6) and (39.9, -56.3) .. (39.9, -53.0) -- (39.9, -51.8) -- (40.7, -51.4) .. controls (43.5, -49.9) and (43.3, -45.6) .. (40.4, -44.3) .. controls (39.9, -44.2) and (39.7, -44.0) .. (39.8, -43.9) .. controls (41.3, -38.5) and (34.2, -34.1) .. (30.0, -37.9) -- (29.5, -38.4) -- (28.9, -38.0) .. controls (28.1, -37.5) and (27.0, -37.1) .. (26.3, -37.1) .. controls (25.6, -37.1) and (25.2, -36.6) .. (22.8, -32.4) .. controls (20.0, -27.4) and (19.2, -25.8) .. (18.9, -24.1) .. controls (18.3, -21.4) and (17.1, -18.5) .. (15.6, -16.1) -- (15.0, -15.1) -- (15.7, -14.8) .. controls (35.9, -6.6) and (37.1, 24.6) .. (17.7, 34.4) .. controls (17.3, 34.6) and (16.9, 34.8) .. (16.9, 34.8) .. controls (16.8, 34.8) and (17.3, 35.4) .. (17.8, 36.2) .. controls (27.1, 48.8) and (28.0, 62.1) .. (20.2, 71.7) .. controls (15.6, 77.4) and (8.2, 80.7) .. (2.4, 79.7) -- cycle ^^ (2.2, 78.4) .. controls (-1.7, 77.5) and (-3.1, 75.0) .. (-2.6, 70.0) .. controls (-2.1, 65.8) and (-1.1, 63.2) .. (3.1, 55.9) .. controls (8.0, 47.3) and (9.1, 43.8) .. (8.7, 38.6) -- (8.6, 37.7) -- (9.5, 37.3) .. controls (10.7, 36.8) and (10.6, 36.8) .. (8.5, 37.1) .. controls (-8.5, 39.6) and (-18.4, 34.7) .. (-23.9, 21.1) .. controls (-25.0, 18.4) and (-25.5, 17.3) .. (-27.5, 12.8) .. controls (-31.0, 5.1) and (-31.7, 2.4) .. (-30.8, -1.3) .. controls (-27.5, -14.6) and (-1.4, -21.2) .. (16.1, -13.1) .. controls (35.8, -4.1) and (35.0, 23.2) .. (14.7, 35.1) .. controls (13.6, 35.8) and (13.5, 35.9) .. (14.5, 35.6) .. controls (15.6, 35.3) and (15.6, 35.3) .. (16.5, 36.6) .. controls (24.5, 47.3) and (26.3, 57.9) .. (21.7, 66.9) .. controls (17.9, 74.6) and (9.0, 79.8) .. (2.2, 78.4) -- cycle ^^ (2.7, 71.6) .. controls (2.0, 71.4) and (0.7, 70.7) .. (0.7, 70.5) .. controls (0.7, 70.5) and (1.1, 70.6) .. (1.7, 70.7) .. controls (3.2, 71.0) and (3.1, 71.1) .. (3.2, 68.7) .. controls (3.4, 63.8) and (4.1, 61.6) .. (7.5, 54.7) .. controls (10.8, 48.2) and (11.8, 45.8) .. (12.1, 43.1) -- (12.3, 42.0) -- (11.7, 40.4) .. controls (10.9, 38.6) and (11.0, 38.6) .. (12.0, 40.0) .. controls (21.1, 53.6) and (14.6, 75.4) .. (2.7, 71.6) -- cycle ^^ (4.6, 68.3) .. controls (4.7, 64.0) and (5.3, 61.9) .. (7.7, 56.9) .. controls (11.1, 49.9) and (12.3, 46.8) .. (12.7, 44.1) -- (12.8, 43.2) -- (13.5, 45.2) .. controls (17.6, 57.6) and (13.8, 69.3) .. (5.2, 70.7) -- (4.5, 70.8) -- (4.6, 68.3) -- cycle ^^ (-33.2, 67.2) .. controls (-40.2, 65.9) and (-45.3, 60.8) .. (-43.7, 56.8) .. controls (-41.8, 52.3) and (-37.3, 49.6) .. (-25.3, 45.9) .. controls (-15.3, 42.8) and (-11.8, 41.2) .. (-9.4, 38.7) -- (-8.8, 38.0) -- (-7.1, 38.3) .. controls (-6.1, 38.5) and (-5.1, 38.7) .. (-4.8, 38.8) .. controls (-4.5, 38.8) and (-4.0, 38.9) .. (-3.8, 39.0) -- (-3.4, 39.0) -- (-3.5, 40.8) .. controls (-4.4, 57.9) and (-18.0, 70.0) .. (-33.2, 67.2) -- cycle ^^ (-31.7, 61.3) .. controls (-35.1, 60.6) and (-37.9, 58.3) .. (-38.2, 55.8) -- (-38.3, 55.2) -- (-37.9, 55.9) .. controls (-37.6, 56.2) and (-37.3, 56.7) .. (-37.1, 56.8) -- (-36.7, 57.2) -- (-35.5, 55.9) .. controls (-32.0, 52.5) and (-29.7, 51.1) .. (-24.0, 49.1) .. controls (-13.5, 45.3) and (-10.9, 43.8) .. (-9.7, 40.9) .. controls (-9.0, 39.1) and (-8.9, 39.1) .. (-9.3, 41.2) .. controls (-11.3, 53.1) and (-22.5, 63.1) .. (-31.7, 61.3) -- cycle ^^ (-31.8, 59.8) .. controls (-32.9, 59.6) and (-35.3, 58.6) .. (-35.6, 58.2) .. controls (-35.7, 58.0) and (-33.7, 55.9) .. (-32.2, 54.7) .. controls (-29.8, 52.7) and (-28.1, 51.8) .. (-24.1, 50.3) .. controls (-16.5, 47.4) and (-13.9, 46.2) .. (-11.3, 44.1) -- (-10.9, 43.8) -- (-11.2, 44.7) .. controls (-16.0, 55.6) and (-23.8, 61.3) .. (-31.8, 59.8) -- cycle ^^ (-3.5, 13.5) .. controls (-8.7, 11.6) and (-8.4, 3.7) .. (-3.2, 2.4) .. controls (0.3, 1.5) and (3.5, 4.9) .. (3.0, 8.9) .. controls (2.5, 12.2) and (-0.7, 14.5) .. (-3.5, 13.5) -- cycle ^^ (-22.5, 12.6) .. controls (-26.4, 10.4) and (-25.1, 3.0) .. (-20.9, 3.0) .. controls (-17.8, 2.9) and (-15.9, 7.2) .. (-17.5, 10.6) .. controls (-18.5, 12.8) and (-20.7, 13.6) .. (-22.5, 12.6) -- cycle ^^ (-1.4, 11.5) .. controls (-2.0, 11.1) and (-2.3, 10.6) .. (-2.3, 9.8) .. controls (-2.3, 8.2) and (-0.5, 7.4) .. (0.7, 8.5) .. controls (2.3, 9.9) and (0.4, 12.6) .. (-1.4, 11.5) -- cycle ^^ (-20.5, 10.9) .. controls (-21.0, 10.6) and (-21.2, 9.8) .. (-20.9, 9.2) .. controls (-20.4, 8.0) and (-18.7, 8.3) .. (-18.5, 9.7) .. controls (-18.3, 10.8) and (-19.6, 11.6) .. (-20.5, 10.9) -- cycle ^^ (-14.8, 1.3) .. controls (-17.4, 0.9) and (-17.7, -0.6) .. (-15.6, -2.3) -- (-15.1, -2.7) -- (-15.1, -4.8) .. controls (-15.1, -6.8) and (-15.1, -6.9) .. (-15.4, -7.1) .. controls (-16.1, -7.6) and (-17.5, -7.3) .. (-18.5, -6.4) .. controls (-19.1, -5.9) and (-19.1, -6.0) .. (-18.7, -6.7) .. controls (-17.9, -8.1) and (-16.2, -8.6) .. (-14.7, -7.9) .. controls (-14.3, -7.7) and (-14.2, -7.7) .. (-14.0, -7.9) .. controls (-12.3, -9.4) and (-7.8, -9.1) .. (-6.7, -7.3) .. controls (-6.2, -6.5) and (-6.3, -6.4) .. (-6.8, -6.9) .. controls (-8.4, -8.3) and (-12.2, -8.4) .. (-13.5, -7.0) .. controls (-14.1, -6.3) and (-14.3, -5.5) .. (-14.1, -3.6) -- (-14.0, -2.9) -- (-13.2, -2.6) .. controls (-8.4, -1.1) and (-9.7, 2.1) .. (-14.8, 1.3) -- cycle ^^ (12.5, -16.0) .. controls (11.1, -16.5) and (8.5, -17.1) .. (6.9, -17.4) -- (5.4, -17.6) -- (5.4, -19.1) .. controls (5.4, -21.5) and (6.4, -29.0) .. (6.7, -29.3) .. controls (7.2, -29.9) and (10.9, -23.5) .. (11.9, -20.4) .. controls (12.5, -18.8) and (12.6, -19.0) .. (12.2, -21.0) .. controls (11.3, -26.5) and (7.9, -31.1) .. (1.9, -35.1) .. controls (-1.5, -37.3) and (-2.8, -39.1) .. (-2.8, -41.4) -- (-2.8, -42.6) -- (-2.0, -43.1) .. controls (-0.9, -43.6) and (0.4, -43.6) .. (1.5, -43.2) .. controls (2.3, -42.8) and (2.1, -43.1) .. (1.2, -43.6) .. controls (0.3, -44.1) and (-0.9, -44.3) .. (-1.8, -44.2) .. controls (-2.5, -44.0) and (-2.6, -44.0) .. (-2.0, -44.9) .. controls (-0.7, -46.9) and (1.4, -47.6) .. (3.4, -46.6) .. controls (4.1, -46.3) and (4.1, -46.3) .. (3.8, -46.6) .. controls (3.6, -46.7) and (3.1, -47.0) .. (2.7, -47.3) .. controls (1.6, -47.8) and (1.8, -47.9) .. (3.6, -47.9) .. controls (9.2, -47.9) and (15.7, -40.7) .. (17.4, -32.7) .. controls (18.6, -27.2) and (17.6, -21.5) .. (14.4, -16.7) .. controls (13.7, -15.6) and (13.7, -15.6) .. (12.5, -16.0) -- cycle ^^ (-10.1, -18.7) .. controls (-18.9, -25.9) and (-23.5, -34.6) .. (-21.9, -41.0) .. controls (-21.4, -43.4) and (-19.8, -45.2) .. (-18.0, -45.5) -- (-17.5, -45.6) -- (-18.1, -45.0) .. controls (-18.4, -44.7) and (-18.8, -44.3) .. (-18.9, -44.0) -- (-19.2, -43.5) -- (-18.6, -44.0) .. controls (-17.0, -45.5) and (-14.6, -45.5) .. (-13.2, -44.0) -- (-12.7, -43.4) -- (-13.4, -43.2) .. controls (-14.4, -43.1) and (-15.4, -42.5) .. (-16.0, -41.6) .. controls (-16.7, -40.7) and (-16.7, -40.5) .. (-16.0, -41.2) .. controls (-14.4, -42.8) and (-12.2, -42.7) .. (-11.8, -41.1) .. controls (-11.1, -38.7) and (-11.9, -36.4) .. (-14.0, -35.1) .. controls (-16.2, -33.7) and (-17.4, -31.7) .. (-17.4, -29.8) -- (-17.4, -29.2) -- (-17.1, -29.8) .. controls (-16.5, -31.1) and (-15.7, -32.3) .. (-15.6, -32.2) .. controls (-15.5, -32.1) and (-15.2, -31.3) .. (-14.8, -30.3) .. controls (-13.8, -27.9) and (-11.2, -22.7) .. (-9.5, -19.9) .. controls (-7.7, -16.8) and (-7.7, -16.7) .. (-10.1, -18.7) -- cycle ^^ (-8.0, -20.0) .. controls (-10.7, -24.3) and (-12.3, -27.5) .. (-13.8, -31.2) .. controls (-14.8, -33.7) and (-14.8, -33.4) .. (-13.5, -34.2) .. controls (-8.5, -37.4) and (-10.0, -45.7) .. (-15.7, -46.8) .. controls (-16.7, -46.9) and (-16.7, -46.8) .. (-16.3, -48.7) .. controls (-15.4, -53.2) and (-12.6, -57.5) .. (-9.8, -58.8) .. controls (-1.0, -63.0) and (7.6, -58.2) .. (8.8, -48.5) -- (8.9, -47.7) -- (7.7, -48.3) .. controls (-3.0, -53.3) and (-8.9, -40.6) .. (1.1, -34.1) .. controls (3.2, -32.7) and (4.8, -31.4) .. (5.6, -30.6) -- (6.0, -30.2) -- (5.7, -27.9) .. controls (5.1, -24.3) and (4.8, -22.4) .. (4.8, -20.0) -- (4.7, -17.7) -- (3.2, -17.8) .. controls (1.3, -18.0) and (-3.1, -18.0) .. (-5.1, -17.8) -- (-6.7, -17.7) -- (-8.0, -20.0) -- cycle ^^ (19.2, -30.0) .. controls (18.6, -36.5) and (14.8, -43.5) .. (10.0, -46.9) .. controls (9.8, -47.1) and (9.7, -47.3) .. (9.6, -48.2) .. controls (8.4, -57.8) and (0.4, -63.3) .. (-8.1, -60.3) .. controls (-8.8, -60.1) and (-6.7, -61.3) .. (-5.1, -62.1) .. controls (-3.1, -63.0) and (-0.7, -63.8) .. (1.3, -64.3) .. controls (3.2, -64.7) and (3.1, -64.8) .. (3.7, -63.3) .. controls (7.6, -53.4) and (13.5, -47.6) .. (17.8, -49.3) .. controls (18.6, -49.6) and (18.7, -49.6) .. (19.2, -49.5) .. controls (22.8, -48.2) and (27.1, -51.7) .. (26.3, -55.2) .. controls (26.2, -55.7) and (26.2, -55.9) .. (26.4, -56.2) .. controls (26.6, -56.4) and (26.8, -57.0) .. (26.9, -57.4) .. controls (27.2, -58.3) and (27.3, -58.3) .. (28.1, -56.4) .. controls (30.5, -51.3) and (29.5, -45.3) .. (25.0, -38.5) .. controls (23.2, -35.6) and (22.0, -33.6) .. (20.5, -30.9) .. controls (19.9, -29.8) and (19.4, -28.9) .. (19.4, -28.9) .. controls (19.3, -28.9) and (19.3, -29.3) .. (19.2, -30.0) -- cycle ^^ (32.7, -37.9) .. controls (31.7, -38.2) and (30.6, -39.0) .. (30.0, -39.9) .. controls (29.4, -40.7) and (29.5, -40.7) .. (29.0, -39.9) .. controls (28.6, -39.3) and (27.9, -38.8) .. (27.1, -38.6) .. controls (26.6, -38.4) and (26.6, -38.4) .. (27.4, -39.7) .. controls (31.0, -45.6) and (31.6, -52.3) .. (29.1, -57.4) .. controls (28.4, -58.8) and (28.4, -58.7) .. (29.5, -58.7) .. controls (30.5, -58.7) and (31.3, -58.4) .. (32.1, -57.6) -- (32.7, -57.1) -- (33.5, -57.3) .. controls (35.9, -57.8) and (38.3, -56.1) .. (38.6, -53.6) .. controls (38.7, -53.0) and (38.6, -52.5) .. (38.2, -50.9) .. controls (38.1, -50.6) and (38.2, -50.6) .. (38.7, -50.6) .. controls (40.3, -50.6) and (41.4, -49.4) .. (41.4, -47.9) .. controls (41.4, -46.4) and (40.3, -45.3) .. (38.6, -45.3) -- (37.9, -45.3) -- (38.3, -44.4) .. controls (39.8, -40.7) and (36.5, -36.8) .. (32.7, -37.9) -- cycle ^^ (-30.5, -46.0) .. controls (-33.3, -46.4) and (-34.4, -48.5) .. (-33.5, -52.1) .. controls (-33.4, -52.5) and (-33.4, -52.5) .. (-33.6, -52.2) .. controls (-34.0, -51.7) and (-34.5, -50.1) .. (-34.5, -49.1) .. controls (-34.5, -48.1) and (-34.7, -48.1) .. (-35.0, -49.1) .. controls (-35.7, -51.7) and (-34.4, -55.2) .. (-31.4, -59.0) -- (-30.4, -60.3) -- (-29.8, -59.8) .. controls (-27.5, -57.7) and (-19.1, -64.8) .. (-20.1, -68.0) .. controls (-20.4, -69.2) and (-17.6, -68.3) .. (-15.8, -66.6) .. controls (-14.6, -65.5) and (-11.5, -64.4) .. (-7.0, -63.5) -- (-5.9, -63.2) -- (-6.9, -62.7) .. controls (-11.8, -60.0) and (-15.4, -56.0) .. (-16.9, -51.5) .. controls (-17.3, -50.1) and (-17.2, -50.1) .. (-18.3, -52.3) .. controls (-19.4, -54.4) and (-19.4, -54.3) .. (-19.0, -55.8) .. controls (-18.6, -57.1) and (-18.3, -59.2) .. (-18.4, -59.0) .. controls (-18.5, -59.0) and (-18.8, -58.3) .. (-19.1, -57.6) .. controls (-22.4, -50.2) and (-24.8, -47.6) .. (-27.3, -49.0) .. controls (-28.4, -49.6) and (-28.9, -50.7) .. (-28.8, -52.3) -- (-28.8, -53.1) -- (-28.6, -52.6) .. controls (-27.9, -50.9) and (-25.5, -52.8) .. (-26.1, -54.5) .. controls (-26.6, -55.7) and (-28.0, -55.2) .. (-28.5, -53.8) .. controls (-28.7, -53.1) and (-28.8, -53.5) .. (-28.6, -54.3) .. controls (-28.4, -55.0) and (-28.7, -54.6) .. (-29.2, -53.6) .. controls (-30.5, -50.6) and (-29.6, -48.0) .. (-27.0, -47.3) .. controls (-26.6, -47.2) and (-26.3, -47.0) .. (-26.4, -47.0) .. controls (-26.6, -46.6) and (-29.0, -45.8) .. (-29.6, -45.9) .. controls (-29.6, -45.9) and (-30.0, -45.9) .. (-30.5, -46.0) -- cycle ^^ (-33.1, -49.1) .. controls (-33.9, -49.6) and (-33.7, -51.7) .. (-32.8, -52.7) .. controls (-31.6, -54.0) and (-30.4, -52.9) .. (-30.9, -51.2) .. controls (-31.3, -49.5) and (-32.3, -48.6) .. (-33.1, -49.1) -- cycle ^^ (-33.1, -49.6) .. controls (-33.9, -50.7) and (-32.3, -53.8) .. (-31.4, -52.7) .. controls (-30.9, -52.1) and (-31.2, -50.5) .. (-32.0, -49.7) .. controls (-32.4, -49.2) and (-32.8, -49.2) .. (-33.1, -49.6) -- cycle ^^ (14.1, -50.8) .. controls (7.9, -53.9) and (0.1, -72.2) .. (4.0, -74.5) .. controls (7.0, -76.2) and (16.1, -72.3) .. (21.6, -67.0) .. controls (25.2, -63.6) and (26.5, -60.4) .. (25.7, -57.7) -- (25.5, -57.3) -- (25.0, -57.9) .. controls (24.3, -58.7) and (23.3, -59.4) .. (22.1, -59.8) -- (21.1, -60.1) -- (22.6, -58.7) .. controls (25.2, -56.1) and (25.6, -54.1) .. (23.7, -52.0) .. controls (21.4, -49.4) and (18.0, -50.4) .. (16.0, -54.2) .. controls (15.6, -55.0) and (15.3, -55.3) .. (15.4, -55.1) .. controls (15.7, -53.4) and (16.1, -52.2) .. (16.9, -51.3) .. controls (17.8, -50.1) and (16.1, -49.8) .. (14.1, -50.8) -- cycle ^^ (13.2, -52.0) .. controls (12.1, -53.1) and (12.3, -54.4) .. (13.5, -54.5) .. controls (14.4, -54.6) and (15.7, -53.1) .. (15.4, -52.1) .. controls (15.1, -51.2) and (14.1, -51.2) .. (13.2, -52.0) -- cycle ^^ (13.5, -52.4) .. controls (12.8, -53.1) and (12.8, -54.0) .. (13.5, -54.1) .. controls (14.2, -54.2) and (15.2, -52.8) .. (14.8, -52.1) .. controls (14.6, -51.7) and (14.0, -51.8) .. (13.5, -52.4) -- cycle ^^ (-28.1, -52.5) .. controls (-28.4, -52.7) and (-28.3, -53.6) .. (-28.0, -54.2) .. controls (-27.3, -55.1) and (-26.4, -55.0) .. (-26.4, -54.0) .. controls (-26.4, -52.9) and (-27.5, -51.9) .. (-28.1, -52.5) -- cycle ^^ (19.6, -53.1) .. controls (17.1, -54.2) and (16.7, -57.9) .. (19.1, -57.9) .. controls (22.0, -57.9) and (23.4, -53.3) .. (20.6, -53.1) .. controls (20.2, -53.0) and (19.8, -53.1) .. (19.6, -53.1) -- cycle ^^ (19.6, -53.7) .. controls (19.3, -53.9) and (18.8, -54.2) .. (18.6, -54.5) .. controls (16.8, -56.5) and (18.7, -58.6) .. (20.7, -56.8) .. controls (22.6, -55.1) and (21.7, -52.6) .. (19.6, -53.7) -- cycle ^^ (-29.0, -59.7) .. controls (-29.2, -59.8) and (-29.5, -60.0) .. (-29.7, -60.3) -- (-30.0, -60.6) -- (-28.4, -62.2) .. controls (-25.7, -64.8) and (-21.5, -68.0) .. (-20.6, -68.0) .. controls (-20.2, -68.0) and (-21.0, -66.0) .. (-22.0, -64.6) .. controls (-24.3, -61.3) and (-27.3, -59.2) .. (-29.0, -59.7) -- cycle ^^ (23.3, -60.1) .. controls (22.7, -60.5) and (22.2, -61.5) .. (22.4, -62.0) .. controls (22.8, -63.6) and (25.2, -62.7) .. (25.4, -60.9) .. controls (25.5, -59.8) and (24.4, -59.3) .. (23.3, -60.1) -- cycle ^^ (23.5, -60.5) .. controls (22.3, -61.4) and (22.8, -62.9) .. (24.1, -62.1) .. controls (24.6, -61.9) and (25.0, -61.2) .. (25.0, -60.8) .. controls (25.0, -60.1) and (24.2, -59.9) .. (23.5, -60.5) -- cycle ^^ (11.6, -60.9) .. controls (7.3, -62.4) and (3.9, -68.2) .. (5.4, -71.2) .. controls (7.5, -75.4) and (15.3, -70.6) .. (16.3, -64.6) .. controls (16.8, -61.6) and (14.6, -59.8) .. (11.6, -60.9) -- cycle ^^ (12.1, -61.2) .. controls (8.5, -62.3) and (5.1, -66.8) .. (5.5, -69.9) .. controls (6.0, -74.3) and (12.6, -72.2) .. (15.2, -66.8) .. controls (16.9, -63.0) and (15.4, -60.2) .. (12.1, -61.2) -- cycle;
	fill(pic, p, evenodd);
	return scale(k/32)*pic;
}
