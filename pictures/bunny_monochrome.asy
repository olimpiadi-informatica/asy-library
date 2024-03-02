pen fibonacci_col = palegray;
pen turing_col = rgb("edd9c5");

picture drawing(real k = 1, pen color = fibonacci_col, pen shirt = red, Label text = "", pen textcolor = black) {
	picture pic;
	path[] p;
	p = (-49.5, 91.2) .. controls (-52.4, 90.5) and (-53.8, 87.4) .. (-55.0, 85.0) .. controls (-58.1, 77.7) and (-59.2, 69.6) .. (-57.9, 61.9) .. controls (-56.6, 54.2) and (-52.1, 47.6) .. (-47.0, 41.9) .. controls (-43.3, 37.8) and (-39.2, 34.1) .. (-35.3, 30.2) .. controls (-34.2, 28.3) and (-36.4, 26.8) .. (-37.0, 25.2) .. controls (-38.3, 21.9) and (-39.7, 18.6) .. (-40.5, 15.1) .. controls (-42.1, 8.9) and (-42.8, 2.4) .. (-42.8, -4.1) .. controls (-42.1, -6.6) and (-38.8, -5.3) .. (-36.9, -6.2) .. controls (-35.4, -6.5) and (-32.6, -7.0) .. (-31.9, -7.4) .. controls (-33.9, -7.5) and (-35.9, -6.7) .. (-37.9, -6.6) .. controls (-39.5, -6.4) and (-43.4, -5.1) .. (-42.6, -8.0) .. controls (-41.2, -10.0) and (-38.3, -8.6) .. (-36.2, -9.1) .. controls (-35.5, -9.2) and (-32.8, -9.5) .. (-34.9, -9.6) .. controls (-37.0, -9.8) and (-39.2, -9.3) .. (-41.4, -9.6) .. controls (-43.2, -10.5) and (-41.1, -13.7) .. (-39.3, -13.2) .. controls (-37.0, -12.9) and (-34.7, -12.3) .. (-32.4, -12.6) .. controls (-34.6, -13.1) and (-37.0, -13.1) .. (-39.2, -13.5) .. controls (-41.2, -15.1) and (-37.8, -16.9) .. (-36.9, -18.2) .. controls (-31.0, -23.4) and (-23.1, -25.3) .. (-15.5, -26.4) .. controls (-6.6, -27.5) and (2.4, -27.6) .. (11.3, -26.8) .. controls (19.2, -26.1) and (27.4, -24.5) .. (34.0, -19.7) .. controls (35.9, -18.3) and (37.7, -16.5) .. (38.7, -14.3) .. controls (39.0, -13.1) and (35.5, -13.1) .. (37.8, -13.1) .. controls (40.1, -13.8) and (41.6, -9.1) .. (38.6, -9.6) .. controls (37.0, -9.6) and (35.4, -9.7) .. (33.8, -9.5) .. controls (36.0, -8.7) and (39.3, -10.0) .. (40.9, -8.0) .. controls (40.9, -5.4) and (37.7, -7.0) .. (36.1, -7.0) .. controls (34.9, -7.0) and (33.0, -7.7) .. (32.2, -7.3) .. controls (34.4, -6.9) and (36.5, -6.4) .. (38.7, -6.1) .. controls (41.7, -6.3) and (41.0, -2.9) .. (40.9, -1.0) .. controls (40.6, 9.4) and (38.1, 19.8) .. (33.1, 28.8) .. controls (33.3, 31.0) and (35.9, 31.8) .. (37.1, 33.4) .. controls (44.3, 40.0) and (51.5, 47.3) .. (55.2, 56.7) .. controls (58.3, 64.6) and (57.6, 73.4) .. (55.2, 81.4) .. controls (54.2, 84.7) and (52.7, 88.2) .. (50.0, 90.4) .. controls (47.1, 92.1) and (43.6, 91.2) .. (40.6, 90.3) .. controls (33.4, 87.7) and (27.8, 81.9) .. (23.6, 75.6) .. controls (19.1, 68.7) and (16.5, 60.7) .. (15.4, 52.6) .. controls (14.7, 48.2) and (14.6, 43.7) .. (14.4, 39.2) .. controls (12.6, 37.9) and (10.8, 40.4) .. (8.9, 40.5) .. controls (6.4, 41.3) and (3.9, 42.2) .. (1.3, 42.2) .. controls (-0.4, 40.9) and (-2.9, 42.2) .. (-4.4, 43.2) .. controls (-6.1, 44.3) and (-5.0, 47.2) .. (-6.4, 48.0) .. controls (-7.1, 46.6) and (-6.2, 44.3) .. (-8.2, 44.3) .. controls (-8.0, 43.1) and (-5.3, 40.9) .. (-8.1, 41.1) .. controls (-10.5, 40.7) and (-12.8, 39.8) .. (-15.2, 39.1) .. controls (-17.1, 40.3) and (-15.4, 43.1) .. (-16.0, 45.1) .. controls (-16.5, 58.0) and (-20.3, 71.1) .. (-28.6, 81.2) .. controls (-33.2, 86.7) and (-39.7, 91.2) .. (-47.0, 91.3) .. controls (-47.9, 91.3) and (-48.7, 91.3) .. (-49.5, 91.2) -- cycle ^^ (-48.7, 85.4) .. controls (-51.7, 83.6) and (-52.3, 79.8) .. (-52.6, 76.6) .. controls (-53.4, 67.0) and (-49.6, 57.8) .. (-44.6, 49.9) .. controls (-41.0, 44.1) and (-36.9, 38.5) .. (-32.7, 33.1) .. controls (-31.2, 32.3) and (-33.8, 35.3) .. (-34.2, 35.9) .. controls (-40.6, 44.5) and (-47.1, 53.3) .. (-50.5, 63.5) .. controls (-52.4, 69.2) and (-53.0, 75.5) .. (-51.2, 81.3) .. controls (-50.4, 83.5) and (-48.1, 85.5) .. (-45.6, 84.8) .. controls (-41.4, 83.9) and (-38.5, 80.3) .. (-36.0, 77.0) .. controls (-30.4, 69.1) and (-27.0, 59.8) .. (-25.1, 50.3) .. controls (-24.4, 46.2) and (-23.9, 42.0) .. (-23.7, 37.8) .. controls (-23.2, 37.1) and (-23.5, 39.8) .. (-23.5, 40.3) .. controls (-23.8, 48.4) and (-25.7, 56.5) .. (-28.5, 64.0) .. controls (-31.5, 71.2) and (-35.4, 78.2) .. (-41.3, 83.3) .. controls (-43.3, 84.9) and (-46.0, 86.6) .. (-48.7, 85.4) -- cycle ^^ (44.2, 85.3) .. controls (39.0, 83.2) and (35.5, 78.5) .. (32.6, 74.0) .. controls (26.4, 63.9) and (22.8, 52.3) .. (22.1, 40.6) .. controls (22.0, 39.6) and (22.0, 37.2) .. (22.2, 37.2) .. controls (22.8, 40.8) and (22.6, 44.5) .. (23.4, 48.1) .. controls (25.3, 58.2) and (29.0, 68.1) .. (34.9, 76.6) .. controls (37.4, 80.1) and (40.4, 83.6) .. (44.7, 85.0) .. controls (47.0, 85.7) and (49.1, 84.0) .. (49.8, 81.9) .. controls (51.7, 77.6) and (51.4, 72.7) .. (50.6, 68.2) .. controls (48.6, 57.8) and (42.4, 48.9) .. (36.2, 40.5) .. controls (34.4, 37.9) and (32.5, 35.4) .. (30.6, 32.8) .. controls (32.4, 33.9) and (33.2, 35.9) .. (34.6, 37.4) .. controls (39.9, 44.8) and (45.7, 52.1) .. (48.8, 60.8) .. controls (50.9, 66.8) and (52.3, 73.2) .. (51.4, 79.6) .. controls (51.0, 82.0) and (49.8, 85.0) .. (47.1, 85.6) .. controls (46.1, 85.8) and (45.1, 85.6) .. (44.2, 85.3) -- cycle ^^ (58.6, 72.3) .. controls (58.8, 71.4) and (59.0, 67.8) .. (59.0, 70.3) .. controls (59.2, 70.7) and (58.7, 73.5) .. (58.6, 72.3) -- cycle ^^ (-60.2, 70.9) .. controls (-60.4, 68.9) and (-60.4, 66.9) .. (-60.2, 64.9) .. controls (-60.0, 66.9) and (-60.0, 69.8) .. (-60.2, 71.4) .. controls (-60.2, 71.2) and (-60.1, 71.0) .. (-60.2, 70.9) -- cycle ^^ (-30.5, 44.9) .. controls (-29.8, 43.0) and (-29.4, 40.4) .. (-31.0, 39.4) .. controls (-30.9, 38.3) and (-29.1, 36.4) .. (-29.3, 38.6) .. controls (-29.4, 40.6) and (-29.2, 43.5) .. (-30.5, 44.9) -- cycle ^^ (28.3, 44.2) .. controls (27.7, 42.2) and (27.0, 39.2) .. (28.2, 37.6) .. controls (29.6, 38.3) and (29.2, 40.0) .. (28.2, 40.6) .. controls (28.0, 41.8) and (28.8, 43.0) .. (28.3, 44.2) -- cycle ^^ (-23.5, 8.5) .. controls (-27.9, 6.8) and (-29.3, 1.3) .. (-28.0, -2.8) .. controls (-27.1, -6.2) and (-23.5, -9.1) .. (-20.0, -7.9) .. controls (-15.6, -6.4) and (-13.8, -0.9) .. (-15.2, 3.3) .. controls (-16.1, 6.5) and (-19.3, 9.5) .. (-22.8, 8.7) .. controls (-23.0, 8.7) and (-23.3, 8.6) .. (-23.5, 8.5) -- cycle ^^ (18.4, 8.5) .. controls (14.2, 6.9) and (12.6, 1.6) .. (13.8, -2.4) .. controls (14.5, -5.5) and (17.3, -8.6) .. (20.7, -8.2) .. controls (24.8, -7.6) and (27.1, -3.2) .. (26.8, 0.6) .. controls (26.7, 4.2) and (24.5, 8.2) .. (20.7, 8.8) .. controls (20.0, 8.8) and (19.2, 8.7) .. (18.4, 8.5) -- cycle ^^ (-23.2, 7.3) .. controls (-25.5, 6.8) and (-25.8, 2.8) .. (-23.2, 2.6) .. controls (-20.6, 2.2) and (-19.1, 6.7) .. (-21.9, 7.4) .. controls (-22.4, 7.5) and (-22.8, 7.5) .. (-23.2, 7.3) -- cycle ^^ (18.7, 7.3) .. controls (15.8, 7.1) and (15.9, 1.9) .. (19.1, 2.6) .. controls (21.6, 2.9) and (22.2, 7.4) .. (19.2, 7.4) -- (19.0, 7.4) -- cycle ^^ (-2.1, -7.2) .. controls (-5.1, -7.2) and (-3.6, -11.4) .. (-1.1, -10.9) .. controls (0.8, -12.1) and (-0.2, -14.8) .. (-0.6, -16.6) .. controls (-1.3, -18.7) and (-3.8, -20.1) .. (-6.0, -19.2) .. controls (-6.9, -18.9) and (-8.5, -17.2) .. (-8.9, -17.7) .. controls (-7.6, -19.8) and (-4.8, -20.4) .. (-2.6, -19.9) .. controls (-1.4, -21.6) and (1.5, -23.5) .. (2.4, -20.5) .. controls (4.2, -19.3) and (6.8, -20.6) .. (8.4, -18.9) .. controls (9.4, -18.6) and (9.7, -16.7) .. (8.5, -18.0) .. controls (6.9, -19.6) and (4.0, -20.1) .. (2.3, -18.3) .. controls (0.7, -16.6) and (0.4, -14.1) .. (0.7, -11.9) .. controls (1.6, -10.5) and (6.0, -9.9) .. (3.4, -7.7) .. controls (1.8, -6.8) and (-0.3, -6.9) .. (-2.1, -7.2) -- cycle ^^ (-1.8, -7.5) .. controls (-4.6, -7.5) and (-2.8, -11.0) .. (-0.8, -10.5) .. controls (0.9, -11.2) and (5.5, -9.4) .. (2.8, -7.7) .. controls (1.3, -7.2) and (-0.3, -7.5) .. (-1.8, -7.5) -- cycle ^^ (-0.3, -17.6) .. controls (-2.6, -18.8) and (-0.6, -23.1) .. (1.6, -21.1) .. controls (2.5, -20.2) and (1.0, -16.2) .. (-0.3, -17.6) -- cycle ^^ (17.8, -27.1) .. controls (9.3, -28.5) and (0.8, -28.4) .. (-7.7, -28.2) .. controls (-11.2, -28.0) and (-14.7, -27.7) .. (-18.2, -27.1) .. controls (-20.3, -27.9) and (-21.2, -30.3) .. (-22.5, -32.1) .. controls (-26.5, -38.7) and (-28.9, -46.5) .. (-27.9, -54.2) .. controls (-27.5, -56.9) and (-26.4, -59.9) .. (-23.9, -61.2) .. controls (-23.1, -61.1) and (-23.6, -58.5) .. (-22.8, -60.3) .. controls (-22.4, -62.3) and (-18.1, -63.1) .. (-18.4, -60.9) .. controls (-18.9, -60.1) and (-20.8, -58.3) .. (-20.0, -58.2) .. controls (-19.2, -59.7) and (-16.0, -62.0) .. (-15.5, -59.1) .. controls (-15.8, -58.4) and (-17.8, -55.9) .. (-16.1, -57.4) .. controls (-13.7, -58.9) and (-13.9, -54.9) .. (-13.9, -53.5) .. controls (-14.3, -48.9) and (-16.5, -44.7) .. (-16.5, -40.1) .. controls (-16.5, -39.1) and (-16.2, -38.4) .. (-15.9, -39.8) .. controls (-15.5, -42.0) and (-15.1, -44.2) .. (-14.4, -46.3) .. controls (-13.2, -50.5) and (-12.0, -55.2) .. (-13.9, -59.3) .. controls (-15.9, -63.7) and (-22.5, -64.8) .. (-25.8, -61.3) .. controls (-28.0, -59.0) and (-28.9, -55.8) .. (-29.2, -52.7) .. controls (-30.4, -50.9) and (-31.0, -55.0) .. (-31.5, -55.9) .. controls (-33.7, -63.0) and (-34.5, -71.1) .. (-31.1, -77.9) .. controls (-30.6, -80.2) and (-28.5, -81.3) .. (-26.7, -79.7) .. controls (-21.4, -77.5) and (-14.6, -77.9) .. (-10.2, -81.9) .. controls (-8.7, -83.3) and (-7.9, -85.6) .. (-8.5, -87.7) .. controls (-7.9, -90.1) and (-4.6, -88.8) .. (-2.8, -89.2) .. controls (1.2, -89.1) and (5.3, -89.3) .. (9.3, -88.9) .. controls (11.2, -87.4) and (9.4, -84.1) .. (11.6, -82.5) .. controls (14.6, -78.6) and (20.0, -77.8) .. (24.6, -78.7) .. controls (26.5, -79.0) and (28.4, -79.7) .. (30.1, -80.6) .. controls (32.5, -80.4) and (32.6, -77.2) .. (33.7, -75.4) .. controls (36.1, -68.2) and (34.7, -60.2) .. (32.0, -53.3) .. controls (31.5, -51.5) and (30.1, -52.4) .. (30.5, -53.8) .. controls (30.5, -57.9) and (27.9, -62.2) .. (23.7, -63.1) .. controls (20.2, -64.0) and (16.4, -62.0) .. (15.2, -58.6) .. controls (13.4, -54.4) and (15.0, -49.8) .. (16.1, -45.7) .. controls (16.7, -43.5) and (17.3, -41.2) .. (17.5, -38.9) .. controls (18.6, -40.6) and (17.6, -42.9) .. (17.3, -44.7) .. controls (16.4, -48.9) and (15.0, -53.2) .. (15.8, -57.5) .. controls (16.6, -59.4) and (19.5, -55.4) .. (17.9, -57.8) .. controls (16.0, -59.7) and (18.9, -62.0) .. (20.2, -59.8) .. controls (20.6, -59.0) and (22.7, -57.8) .. (21.4, -59.3) .. controls (20.2, -60.2) and (19.3, -62.5) .. (21.6, -62.2) .. controls (23.4, -62.7) and (24.7, -60.1) .. (25.2, -59.7) .. controls (25.6, -62.7) and (27.9, -59.1) .. (28.3, -57.9) .. controls (30.3, -53.2) and (29.7, -47.7) .. (28.5, -42.8) .. controls (26.9, -37.2) and (24.2, -31.9) .. (20.5, -27.5) .. controls (19.7, -26.9) and (18.7, -26.8) .. (17.8, -27.1) -- cycle ^^ (36.5, -67.3) .. controls (36.3, -68.9) and (37.0, -68.8) .. (36.9, -67.3) .. controls (37.0, -66.3) and (36.4, -65.5) .. (36.5, -67.0) .. controls (36.5, -67.1) and (36.5, -67.2) .. (36.5, -67.3) -- cycle ^^ (19.5, -79.7) .. controls (15.7, -80.0) and (11.5, -82.7) .. (11.1, -86.8) .. controls (11.1, -89.5) and (13.7, -91.2) .. (16.0, -91.4) .. controls (18.1, -92.2) and (21.1, -91.3) .. (20.8, -88.6) .. controls (20.7, -87.7) and (21.2, -86.5) .. (21.4, -88.1) .. controls (21.1, -89.9) and (21.8, -92.2) .. (24.0, -91.3) .. controls (26.3, -91.3) and (25.6, -87.7) .. (26.5, -87.3) .. controls (26.7, -88.7) and (26.5, -92.0) .. (28.9, -90.6) .. controls (29.9, -90.1) and (29.7, -87.2) .. (30.3, -87.4) .. controls (30.0, -88.9) and (31.7, -90.7) .. (32.3, -88.5) .. controls (33.6, -86.1) and (31.7, -83.4) .. (29.7, -82.2) .. controls (26.7, -80.1) and (23.0, -79.3) .. (19.5, -79.7) -- cycle ^^ (-23.5, -80.1) .. controls (-26.7, -80.8) and (-30.2, -82.5) .. (-31.2, -85.9) .. controls (-31.7, -87.2) and (-30.2, -91.0) .. (-29.1, -88.9) .. controls (-29.1, -88.0) and (-28.4, -86.4) .. (-28.5, -88.3) .. controls (-29.0, -90.2) and (-25.1, -92.3) .. (-25.1, -89.6) .. controls (-25.3, -88.8) and (-24.7, -86.2) .. (-24.5, -88.2) .. controls (-24.8, -90.6) and (-21.7, -92.5) .. (-20.0, -90.8) .. controls (-19.5, -89.9) and (-20.2, -87.4) .. (-19.4, -87.4) .. controls (-19.0, -89.0) and (-19.3, -92.1) .. (-16.7, -91.6) .. controls (-14.3, -91.6) and (-11.1, -91.0) .. (-10.1, -88.4) .. controls (-8.9, -85.5) and (-10.7, -82.1) .. (-13.5, -80.9) .. controls (-16.5, -79.3) and (-20.2, -79.3) .. (-23.5, -80.1) -- cycle;
	fill(pic, p, color+evenodd);
    p = (26.2, -33.9) .. controls (11.6, -39.0) and (-8.9, -38.0) .. (-24.1, -34.8) .. controls (-25.9, -37.5) and (-27.4, -41.6) .. (-28.3, -44.4) .. controls (-29.1, -47.2) and (-29.5, -50.7) .. (-29.7, -53.7) .. controls (-27.8, -53.0) and (-26.8, -52.6) .. (-25.4, -52.6) .. controls (-22.4, -51.6) and (-17.8, -51.3) .. (-14.7, -51.5) .. controls (-16.4, -45.5) and (-14.9, -51.0) .. (-14.1, -53.6) .. controls (-13.1, -57.5) and (-12.9, -62.1) .. (-15.8, -65.2) .. controls (-18.2, -68.0) and (-22.9, -68.7) .. (-25.8, -66.2) .. controls (-28.5, -63.9) and (-29.9, -60.4) .. (-30.2, -57.0) .. controls (-31.0, -54.8) and (-32.9, -56.7) .. (-32.9, -58.2) .. controls (-33.5, -60.2) and (-34.2, -62.2) .. (-34.4, -64.3) .. controls (-12.8, -75.2) and (16.6, -74.6) .. (37.3, -64.3) .. controls (37.2, -61.7) and (36.7, -61.3) .. (36.5, -59.8) .. controls (36.0, -58.5) and (35.2, -54.5) .. (33.5, -56.5) .. controls (33.0, -58.4) and (33.1, -60.5) .. (32.2, -62.3) .. controls (30.7, -65.9) and (26.5, -68.5) .. (22.5, -67.4) .. controls (18.6, -66.2) and (16.4, -61.8) .. (16.6, -57.9) .. controls (17.9, -53.1) and (18.3, -51.3) .. (20.2, -51.3) .. controls (23.9, -51.3) and (29.1, -52.1) .. (32.7, -53.4) .. controls (32.6, -51.2) and (32.5, -50.5) .. (32.4, -49.1) .. controls (31.9, -43.0) and (28.3, -36.4) .. (26.2, -33.9) -- cycle;
    if (shirt != invisible)
        fill(pic, shift(-0.8,0)*scale(0.93)*p, shirt+evenodd);
    p = (-50.0, 92.8) .. controls (-53.1, 92.3) and (-55.8, 88.6) .. (-58.0, 81.8) .. controls (-58.7, 79.8) and (-59.5, 76.5) .. (-59.4, 76.1) .. controls (-59.3, 76.0) and (-59.4, 75.6) .. (-59.6, 75.0) .. controls (-60.0, 73.4) and (-60.2, 68.3) .. (-60.0, 65.2) .. controls (-59.3, 53.9) and (-54.2, 45.8) .. (-38.7, 31.1) .. controls (-36.9, 29.5) and (-36.6, 29.0) .. (-37.0, 28.7) .. controls (-37.2, 28.7) and (-38.4, 26.2) .. (-39.2, 24.3) .. controls (-39.9, 22.8) and (-41.0, 19.7) .. (-41.5, 18.1) .. controls (-42.5, 14.6) and (-43.1, 12.1) .. (-43.3, 10.2) .. controls (-43.4, 9.5) and (-43.6, 8.7) .. (-43.7, 8.3) .. controls (-43.7, 8.0) and (-43.9, 6.7) .. (-44.0, 5.5) .. controls (-44.1, 4.3) and (-44.2, 3.2) .. (-44.3, 3.1) .. controls (-44.3, 3.0) and (-44.4, 1.3) .. (-44.5, -0.7) .. controls (-44.6, -5.1) and (-44.5, -4.9) .. (-46.4, -4.7) .. controls (-47.8, -4.5) and (-52.1, -4.4) .. (-52.6, -4.6) .. controls (-53.1, -4.8) and (-50.8, -5.3) .. (-47.8, -5.6) .. controls (-44.7, -5.9) and (-44.5, -6.0) .. (-44.4, -7.3) .. controls (-44.3, -8.4) and (-44.3, -8.4) .. (-47.6, -8.5) .. controls (-48.9, -8.5) and (-50.4, -8.6) .. (-50.9, -8.7) .. controls (-51.4, -8.8) and (-52.3, -8.9) .. (-53.0, -9.0) .. controls (-55.2, -9.3) and (-57.8, -10.0) .. (-57.2, -10.2) .. controls (-56.8, -10.4) and (-56.5, -10.4) .. (-51.7, -9.8) .. controls (-48.4, -9.4) and (-44.2, -9.5) .. (-43.8, -10.0) .. controls (-43.2, -10.8) and (-43.4, -11.6) .. (-44.2, -11.6) .. controls (-47.1, -11.8) and (-50.9, -12.6) .. (-53.4, -13.6) .. controls (-54.7, -14.1) and (-54.9, -14.7) .. (-53.7, -14.3) .. controls (-53.3, -14.2) and (-51.6, -13.8) .. (-48.8, -13.3) .. controls (-48.1, -13.1) and (-47.1, -13.0) .. (-46.6, -12.9) .. controls (-46.0, -12.9) and (-45.2, -12.7) .. (-44.7, -12.6) .. controls (-43.6, -12.3) and (-42.8, -12.4) .. (-42.6, -13.0) .. controls (-42.4, -13.7) and (-42.8, -14.1) .. (-44.0, -14.3) .. controls (-45.8, -14.6) and (-48.0, -15.6) .. (-49.5, -16.9) .. controls (-50.7, -17.8) and (-50.2, -18.0) .. (-48.6, -17.1) .. controls (-47.3, -16.5) and (-45.5, -15.7) .. (-44.3, -15.3) .. controls (-43.8, -15.2) and (-43.2, -14.9) .. (-43.0, -14.8) .. controls (-42.4, -14.4) and (-42.1, -14.5) .. (-41.6, -15.4) .. controls (-40.4, -17.3) and (-37.3, -20.3) .. (-34.8, -22.0) .. controls (-31.4, -24.2) and (-25.4, -26.5) .. (-22.8, -26.5) .. controls (-21.3, -26.5) and (-20.9, -27.3) .. (-21.9, -28.2) .. controls (-24.5, -30.7) and (-28.7, -40.4) .. (-29.3, -45.4) .. controls (-29.3, -46.0) and (-29.5, -46.6) .. (-29.6, -46.8) .. controls (-29.7, -47.1) and (-30.2, -48.1) .. (-30.6, -49.1) .. controls (-31.4, -50.8) and (-31.7, -51.5) .. (-32.7, -54.2) .. controls (-33.5, -56.4) and (-34.4, -59.9) .. (-34.7, -62.0) .. controls (-34.8, -62.8) and (-34.9, -63.8) .. (-35.0, -64.2) .. controls (-35.2, -65.2) and (-35.2, -69.5) .. (-35.0, -70.7) .. controls (-34.9, -71.2) and (-34.8, -72.1) .. (-34.7, -72.7) .. controls (-34.2, -75.7) and (-32.2, -80.3) .. (-31.0, -81.5) .. controls (-30.7, -81.8) and (-30.8, -82.5) .. (-31.1, -82.5) .. controls (-31.2, -82.5) and (-31.5, -82.9) .. (-31.7, -83.3) .. controls (-34.1, -87.9) and (-31.4, -92.2) .. (-26.1, -92.2) .. controls (-25.5, -92.2) and (-24.4, -92.3) .. (-23.6, -92.5) .. controls (-22.5, -92.8) and (-21.8, -92.9) .. (-20.9, -92.8) .. controls (-20.3, -92.7) and (-19.1, -92.8) .. (-18.3, -92.9) .. controls (-15.9, -93.2) and (-12.5, -92.6) .. (-11.0, -91.6) .. controls (-9.7, -90.7) and (-9.0, -90.5) .. (-8.0, -90.7) .. controls (-6.8, -90.9) and (7.9, -90.9) .. (9.5, -90.7) .. controls (10.9, -90.5) and (11.2, -90.6) .. (12.4, -91.5) .. controls (14.1, -92.9) and (21.0, -93.4) .. (24.9, -92.5) .. controls (25.3, -92.4) and (26.3, -92.2) .. (27.2, -92.2) .. controls (31.3, -91.8) and (33.0, -90.9) .. (33.8, -88.6) .. controls (34.5, -86.8) and (33.9, -83.8) .. (32.6, -82.4) .. controls (32.2, -82.0) and (32.2, -81.9) .. (32.5, -81.6) .. controls (33.4, -80.6) and (35.8, -75.3) .. (35.8, -74.4) .. controls (35.8, -74.3) and (36.0, -73.5) .. (36.2, -72.7) .. controls (36.7, -70.8) and (36.7, -64.1) .. (36.3, -62.4) .. controls (36.1, -61.8) and (36.0, -61.2) .. (36.0, -61.0) .. controls (36.0, -59.5) and (34.0, -53.4) .. (32.2, -49.5) .. controls (31.2, -47.3) and (30.8, -46.3) .. (30.7, -45.3) .. controls (30.5, -44.1) and (30.4, -43.8) .. (29.9, -41.8) .. controls (28.7, -37.2) and (25.5, -30.9) .. (23.1, -28.4) .. controls (21.6, -26.9) and (21.7, -26.3) .. (23.4, -26.2) .. controls (28.9, -25.9) and (39.1, -19.2) .. (40.4, -15.0) .. controls (40.6, -14.4) and (41.0, -14.3) .. (42.7, -14.8) .. controls (45.9, -15.6) and (46.5, -15.8) .. (48.7, -16.8) .. controls (52.3, -18.4) and (52.3, -17.6) .. (48.7, -15.7) .. controls (47.0, -14.8) and (44.6, -14.1) .. (42.7, -13.9) .. controls (41.3, -13.7) and (40.9, -13.2) .. (41.4, -12.3) .. controls (41.6, -12.1) and (41.8, -11.5) .. (41.9, -11.0) .. controls (42.0, -9.9) and (42.4, -9.4) .. (43.3, -9.4) .. controls (48.4, -9.5) and (49.9, -9.6) .. (51.6, -9.8) .. controls (56.4, -10.4) and (59.5, -10.4) .. (58.0, -9.9) .. controls (57.6, -9.7) and (57.3, -9.7) .. (57.2, -9.7) .. controls (57.1, -9.8) and (56.7, -9.7) .. (56.2, -9.5) .. controls (55.8, -9.3) and (54.8, -9.1) .. (54.0, -9.0) .. controls (53.2, -8.9) and (52.1, -8.8) .. (51.4, -8.7) .. controls (50.8, -8.6) and (48.6, -8.5) .. (46.5, -8.5) .. controls (42.3, -8.6) and (42.2, -8.6) .. (42.4, -7.3) .. controls (42.6, -6.5) and (42.7, -6.4) .. (44.3, -6.3) .. controls (45.1, -6.2) and (46.4, -6.0) .. (47.1, -5.9) .. controls (47.8, -5.8) and (49.1, -5.6) .. (49.8, -5.6) .. controls (51.5, -5.5) and (54.4, -4.8) .. (54.1, -4.6) .. controls (53.8, -4.4) and (50.0, -4.5) .. (48.6, -4.7) .. controls (47.9, -4.8) and (46.6, -4.9) .. (45.7, -5.0) .. controls (44.7, -5.1) and (43.7, -5.2) .. (43.5, -5.3) .. controls (42.8, -5.4) and (42.7, -5.1) .. (42.6, -0.5) .. controls (42.5, 1.9) and (42.4, 4.2) .. (42.3, 4.6) .. controls (42.2, 5.1) and (42.1, 6.3) .. (41.9, 7.3) .. controls (41.7, 9.3) and (41.6, 9.8) .. (40.9, 13.0) .. controls (40.4, 15.2) and (40.4, 15.1) .. (39.4, 18.4) .. controls (38.3, 22.0) and (36.0, 27.6) .. (35.2, 28.5) .. controls (34.9, 28.9) and (35.0, 29.1) .. (36.0, 30.1) .. controls (54.4, 47.0) and (59.9, 56.6) .. (58.8, 69.9) .. controls (58.7, 71.0) and (58.6, 72.6) .. (58.6, 73.4) .. controls (58.5, 74.2) and (58.4, 75.0) .. (58.3, 75.3) .. controls (58.2, 75.5) and (58.1, 76.3) .. (58.0, 77.0) .. controls (57.3, 82.2) and (54.3, 89.0) .. (51.6, 91.6) .. controls (49.3, 93.8) and (42.7, 93.4) .. (37.3, 90.9) .. controls (27.3, 86.2) and (18.6, 74.0) .. (15.2, 59.9) .. controls (14.3, 56.2) and (14.2, 55.6) .. (14.0, 54.3) .. controls (13.9, 53.6) and (13.8, 52.7) .. (13.7, 52.4) .. controls (13.6, 52.0) and (13.4, 50.8) .. (13.3, 49.7) .. controls (13.3, 48.5) and (13.1, 46.9) .. (13.0, 46.1) .. controls (12.9, 45.2) and (12.9, 43.9) .. (12.9, 43.0) .. controls (13.0, 40.8) and (12.8, 40.4) .. (11.6, 41.2) .. controls (9.8, 42.2) and (-0.0, 44.6) .. (-1.1, 44.2) .. controls (-1.2, 44.2) and (-1.5, 43.9) .. (-1.6, 43.6) .. controls (-2.2, 42.4) and (-4.0, 44.4) .. (-4.2, 46.6) .. controls (-4.3, 47.9) and (-4.0, 49.9) .. (-3.4, 51.5) .. controls (-2.5, 53.9) and (-3.8, 53.8) .. (-6.1, 51.3) .. controls (-7.1, 50.2) and (-7.4, 49.6) .. (-7.6, 48.4) .. controls (-7.8, 46.7) and (-8.6, 46.5) .. (-8.7, 48.1) .. controls (-8.9, 49.6) and (-9.0, 49.8) .. (-9.3, 49.8) .. controls (-10.5, 49.8) and (-10.8, 45.4) .. (-9.7, 43.8) .. controls (-9.0, 42.7) and (-9.2, 42.5) .. (-11.3, 41.9) .. controls (-14.5, 40.9) and (-14.6, 41.0) .. (-14.3, 42.7) .. controls (-14.2, 43.2) and (-14.2, 44.3) .. (-14.3, 45.8) .. controls (-14.4, 47.1) and (-14.6, 49.1) .. (-14.7, 50.2) .. controls (-14.8, 51.4) and (-14.9, 52.8) .. (-15.0, 53.3) .. controls (-15.1, 53.8) and (-15.3, 54.9) .. (-15.4, 55.8) .. controls (-15.7, 57.6) and (-16.2, 59.8) .. (-16.7, 61.5) .. controls (-16.8, 62.1) and (-17.1, 63.2) .. (-17.3, 63.8) .. controls (-17.5, 64.4) and (-17.8, 65.4) .. (-18.1, 66.1) .. controls (-18.3, 66.7) and (-18.6, 67.5) .. (-18.7, 67.9) .. controls (-22.5, 79.5) and (-33.3, 90.5) .. (-42.8, 92.4) .. controls (-43.5, 92.6) and (-44.1, 92.7) .. (-44.2, 92.8) .. controls (-44.4, 92.9) and (-49.2, 93.0) .. (-50.0, 92.8) -- cycle ^^ (-49.5, 91.2) .. controls (-54.6, 90.5) and (-59.5, 75.6) .. (-58.3, 64.3) .. controls (-57.1, 53.9) and (-51.7, 45.5) .. (-37.5, 32.4) .. controls (-34.3, 29.5) and (-34.4, 29.7) .. (-35.3, 28.2) .. controls (-39.7, 20.7) and (-42.4, 10.0) .. (-42.8, -1.4) .. controls (-42.9, -5.5) and (-43.0, -5.3) .. (-40.4, -5.6) .. controls (-38.5, -5.9) and (-34.6, -6.6) .. (-34.0, -6.8) .. controls (-33.8, -6.9) and (-33.2, -7.0) .. (-32.7, -7.1) .. controls (-32.3, -7.1) and (-31.8, -7.3) .. (-31.7, -7.3) .. controls (-31.3, -7.6) and (-32.3, -7.5) .. (-33.7, -7.3) .. controls (-34.8, -7.0) and (-37.3, -6.7) .. (-40.7, -6.2) .. controls (-42.4, -5.9) and (-42.7, -6.1) .. (-42.7, -7.2) .. controls (-42.7, -8.8) and (-42.6, -8.9) .. (-39.0, -9.0) .. controls (-35.5, -9.1) and (-33.8, -9.3) .. (-33.8, -9.5) .. controls (-33.8, -9.6) and (-35.6, -9.6) .. (-37.8, -9.6) .. controls (-42.8, -9.4) and (-42.7, -9.4) .. (-41.5, -11.9) .. controls (-41.0, -13.0) and (-40.3, -13.5) .. (-39.7, -13.3) .. controls (-39.3, -13.1) and (-34.3, -12.5) .. (-33.3, -12.5) .. controls (-31.8, -12.5) and (-32.3, -12.8) .. (-34.0, -12.9) .. controls (-35.3, -13.0) and (-37.9, -13.4) .. (-39.3, -13.6) .. controls (-40.3, -13.8) and (-40.2, -14.5) .. (-39.0, -16.0) .. controls (-32.7, -23.7) and (-19.9, -27.3) .. (0.5, -27.3) .. controls (19.6, -27.3) and (32.5, -23.4) .. (37.9, -15.8) .. controls (39.2, -14.0) and (39.1, -13.6) .. (37.4, -13.2) .. controls (36.4, -13.0) and (36.4, -13.0) .. (37.5, -13.1) .. controls (39.4, -13.2) and (40.0, -12.6) .. (40.3, -10.6) .. controls (40.4, -9.6) and (40.4, -9.6) .. (36.6, -9.6) .. controls (32.6, -9.7) and (32.9, -9.4) .. (37.3, -9.2) .. controls (40.6, -8.9) and (40.8, -8.8) .. (40.8, -7.7) .. controls (40.8, -6.8) and (40.5, -6.4) .. (39.6, -6.6) .. controls (39.2, -6.6) and (37.9, -6.8) .. (36.7, -6.9) .. controls (35.6, -7.0) and (34.2, -7.2) .. (33.7, -7.3) .. controls (33.2, -7.4) and (32.6, -7.5) .. (32.3, -7.5) .. controls (31.5, -7.5) and (32.1, -7.2) .. (33.2, -7.1) .. controls (33.7, -7.0) and (34.5, -6.9) .. (34.9, -6.8) .. controls (35.4, -6.6) and (36.8, -6.4) .. (38.0, -6.2) .. controls (40.9, -5.8) and (41.0, -5.8) .. (41.0, -3.8) .. controls (41.0, 7.8) and (38.4, 19.0) .. (33.6, 27.8) .. controls (32.6, 29.6) and (32.5, 29.3) .. (35.5, 31.9) .. controls (54.4, 48.7) and (59.7, 60.1) .. (56.3, 76.8) .. controls (54.5, 85.8) and (51.3, 91.0) .. (47.4, 91.3) .. controls (34.0, 92.2) and (19.0, 75.2) .. (15.9, 55.4) .. controls (15.9, 55.0) and (15.7, 54.2) .. (15.6, 53.5) .. controls (15.1, 51.0) and (14.6, 46.0) .. (14.5, 42.3) .. controls (14.4, 38.0) and (14.6, 38.2) .. (12.4, 39.1) .. controls (7.2, 41.3) and (1.2, 42.8) .. (0.9, 42.0) .. controls (0.8, 41.5) and (0.5, 41.5) .. (-1.0, 41.8) .. controls (-4.2, 42.3) and (-5.7, 43.9) .. (-5.7, 46.9) .. controls (-5.7, 48.7) and (-6.5, 48.7) .. (-6.8, 46.9) .. controls (-6.8, 46.4) and (-6.8, 45.7) .. (-6.8, 45.4) .. controls (-6.7, 44.7) and (-6.9, 44.4) .. (-7.4, 44.6) .. controls (-8.6, 44.9) and (-8.6, 44.0) .. (-7.4, 42.7) .. controls (-6.3, 41.5) and (-6.3, 41.2) .. (-7.4, 41.2) .. controls (-8.3, 41.2) and (-11.4, 40.4) .. (-13.8, 39.5) .. controls (-16.2, 38.7) and (-16.0, 38.4) .. (-16.0, 42.9) .. controls (-16.0, 70.2) and (-32.1, 93.4) .. (-49.5, 91.2) -- cycle ^^ (-48.7, 85.4) .. controls (-53.0, 83.2) and (-54.0, 72.7) .. (-50.9, 63.0) .. controls (-48.7, 56.2) and (-44.5, 48.9) .. (-36.6, 38.2) .. controls (-35.8, 37.2) and (-34.6, 35.5) .. (-33.8, 34.4) .. controls (-33.0, 33.4) and (-32.2, 32.5) .. (-32.1, 32.6) .. controls (-31.8, 32.7) and (-31.9, 32.8) .. (-34.8, 36.7) .. controls (-48.4, 54.8) and (-53.0, 65.5) .. (-52.2, 76.6) .. controls (-51.1, 89.9) and (-40.7, 86.9) .. (-32.2, 70.8) .. controls (-30.8, 68.2) and (-29.7, 65.6) .. (-28.4, 62.2) .. controls (-27.9, 61.1) and (-26.8, 57.6) .. (-26.6, 56.7) .. controls (-26.5, 56.2) and (-26.3, 55.5) .. (-26.2, 55.2) .. controls (-25.1, 51.0) and (-24.1, 44.6) .. (-23.9, 39.8) .. controls (-23.7, 36.2) and (-23.4, 36.2) .. (-23.5, 39.8) .. controls (-23.5, 45.0) and (-24.6, 51.2) .. (-26.6, 58.3) .. controls (-31.0, 74.1) and (-42.7, 88.4) .. (-48.7, 85.4) -- cycle ^^ (44.2, 85.3) .. controls (33.8, 81.6) and (22.7, 58.8) .. (22.0, 40.0) .. controls (21.9, 35.3) and (22.3, 36.2) .. (22.6, 41.2) .. controls (23.8, 61.0) and (36.2, 84.4) .. (45.7, 85.1) .. controls (50.3, 85.5) and (52.6, 76.2) .. (50.2, 66.5) .. controls (48.2, 58.1) and (44.4, 51.3) .. (34.2, 37.7) .. controls (30.2, 32.4) and (30.4, 32.6) .. (30.7, 32.7) .. controls (31.4, 32.8) and (41.2, 46.3) .. (44.1, 51.1) .. controls (54.2, 67.8) and (54.2, 88.8) .. (44.2, 85.3) -- cycle ^^ (-30.5, 44.9) .. controls (-30.5, 44.8) and (-30.4, 44.4) .. (-30.3, 43.9) .. controls (-29.5, 41.6) and (-29.8, 39.5) .. (-30.8, 39.8) .. controls (-31.0, 39.8) and (-31.2, 39.8) .. (-31.1, 39.7) .. controls (-30.0, 37.4) and (-29.8, 37.1) .. (-29.5, 37.5) .. controls (-29.1, 38.1) and (-29.4, 43.0) .. (-29.9, 44.0) .. controls (-30.3, 44.9) and (-30.5, 45.2) .. (-30.5, 44.9) -- cycle ^^ (28.3, 44.2) .. controls (27.4, 41.9) and (27.4, 36.9) .. (28.3, 37.5) .. controls (28.8, 37.8) and (29.5, 39.8) .. (29.1, 39.8) .. controls (28.2, 39.8) and (28.1, 40.3) .. (28.3, 42.5) .. controls (28.5, 43.8) and (28.5, 44.7) .. (28.3, 44.2) -- cycle ^^ (-23.5, 8.5) .. controls (-29.9, 6.1) and (-30.2, -4.8) .. (-24.0, -7.7) .. controls (-18.5, -10.2) and (-13.1, -3.4) .. (-15.3, 3.3) .. controls (-16.5, 7.4) and (-20.2, 9.7) .. (-23.5, 8.5) -- cycle ^^ (18.4, 8.5) .. controls (13.0, 6.6) and (11.6, -2.2) .. (16.1, -6.5) .. controls (19.2, -9.5) and (23.9, -8.4) .. (25.9, -4.2) .. controls (29.0, 2.4) and (24.2, 10.5) .. (18.4, 8.5) -- cycle ^^ (-23.2, 7.3) .. controls (-24.4, 6.9) and (-25.3, 5.5) .. (-25.1, 4.4) .. controls (-24.7, 2.5) and (-22.5, 2.0) .. (-21.1, 3.5) .. controls (-19.4, 5.4) and (-20.9, 8.1) .. (-23.2, 7.3) -- cycle ^^ (18.7, 7.3) .. controls (15.6, 6.6) and (16.0, 2.0) .. (19.1, 2.6) .. controls (21.3, 3.0) and (22.1, 6.4) .. (20.2, 7.1) .. controls (19.4, 7.4) and (19.3, 7.4) .. (18.7, 7.3) -- cycle ^^ (-2.1, -7.2) .. controls (-4.9, -7.6) and (-4.3, -10.4) .. (-1.3, -10.9) .. controls (0.0, -11.1) and (0.3, -12.9) .. (-0.4, -15.9) .. controls (-1.4, -19.6) and (-4.9, -20.6) .. (-7.9, -18.0) .. controls (-9.1, -16.9) and (-9.5, -17.2) .. (-8.4, -18.4) .. controls (-7.0, -19.8) and (-5.2, -20.3) .. (-3.1, -19.9) .. controls (-2.2, -19.8) and (-2.2, -19.8) .. (-1.6, -20.7) .. controls (-0.4, -22.7) and (1.2, -22.7) .. (2.3, -20.9) .. controls (2.9, -19.9) and (3.1, -19.8) .. (4.2, -20.0) .. controls (6.0, -20.4) and (9.5, -18.8) .. (9.5, -17.6) .. controls (9.5, -17.2) and (9.1, -17.3) .. (8.2, -18.1) .. controls (5.6, -20.5) and (2.0, -19.5) .. (1.0, -16.1) .. controls (0.2, -13.3) and (0.5, -11.3) .. (1.7, -10.9) .. controls (6.9, -9.4) and (3.8, -6.2) .. (-2.1, -7.2) -- cycle ^^ (-1.8, -7.5) .. controls (-5.0, -8.0) and (-3.2, -10.6) .. (0.2, -10.6) .. controls (3.2, -10.6) and (5.1, -8.4) .. (2.9, -7.7) .. controls (2.1, -7.4) and (-0.6, -7.3) .. (-1.8, -7.5) -- cycle ^^ (43.8, -11.8) .. controls (43.0, -11.8) and (41.8, -11.9) .. (41.8, -12.0) .. controls (41.8, -12.2) and (46.3, -12.8) .. (47.2, -12.9) .. controls (48.2, -13.1) and (51.6, -13.7) .. (52.4, -13.9) .. controls (52.8, -13.9) and (53.6, -14.1) .. (54.2, -14.2) .. controls (54.8, -14.3) and (55.4, -14.5) .. (55.6, -14.5) .. controls (56.1, -14.8) and (56.3, -14.6) .. (56.0, -14.2) .. controls (55.7, -13.9) and (52.6, -12.8) .. (52.1, -12.8) .. controls (51.9, -12.8) and (51.6, -12.8) .. (51.6, -12.7) .. controls (51.5, -12.6) and (51.0, -12.5) .. (50.5, -12.4) .. controls (49.9, -12.4) and (49.0, -12.2) .. (48.4, -12.1) .. controls (47.4, -11.8) and (43.9, -11.7) .. (43.8, -11.8) -- cycle ^^ (-0.3, -17.6) .. controls (-0.4, -17.9) and (-0.8, -18.4) .. (-1.0, -18.8) .. controls (-1.6, -19.7) and (-1.6, -20.1) .. (-1.0, -20.8) .. controls (0.9, -22.9) and (2.9, -20.8) .. (1.3, -18.3) .. controls (0.6, -17.0) and (0.2, -16.9) .. (-0.3, -17.6) -- cycle ^^ (17.8, -27.1) .. controls (10.0, -28.7) and (-10.3, -28.7) .. (-17.4, -27.2) .. controls (-18.5, -26.9) and (-19.0, -27.2) .. (-20.2, -28.7) .. controls (-28.2, -38.8) and (-30.7, -54.6) .. (-25.2, -60.2) .. controls (-24.0, -61.6) and (-23.2, -61.5) .. (-23.4, -60.1) .. controls (-23.6, -59.4) and (-23.3, -59.3) .. (-23.0, -60.0) .. controls (-22.2, -61.9) and (-20.3, -62.7) .. (-18.7, -61.9) .. controls (-17.8, -61.5) and (-17.9, -61.3) .. (-19.1, -60.0) .. controls (-20.0, -59.0) and (-20.7, -57.8) .. (-20.4, -57.8) .. controls (-20.3, -57.8) and (-19.8, -58.4) .. (-19.2, -59.0) .. controls (-17.6, -60.8) and (-16.8, -61.0) .. (-16.0, -60.1) .. controls (-15.4, -59.5) and (-15.4, -59.0) .. (-16.0, -58.3) .. controls (-17.2, -56.8) and (-17.4, -56.0) .. (-16.2, -57.2) .. controls (-15.1, -58.3) and (-14.7, -58.3) .. (-14.3, -57.0) .. controls (-13.5, -54.9) and (-13.8, -52.4) .. (-15.2, -47.1) .. controls (-16.3, -43.2) and (-16.7, -40.7) .. (-16.4, -39.3) .. controls (-16.3, -38.3) and (-16.1, -38.7) .. (-15.7, -40.8) .. controls (-15.5, -42.5) and (-15.1, -44.1) .. (-14.0, -47.7) .. controls (-11.6, -55.9) and (-13.2, -61.4) .. (-18.3, -63.0) .. controls (-23.7, -64.7) and (-28.4, -60.6) .. (-29.1, -53.5) .. controls (-29.4, -50.9) and (-29.9, -51.3) .. (-31.1, -54.8) .. controls (-34.2, -64.0) and (-34.2, -71.5) .. (-31.1, -77.9) .. controls (-29.6, -81.0) and (-29.5, -81.0) .. (-27.3, -80.0) .. controls (-18.5, -75.9) and (-7.0, -80.4) .. (-8.5, -87.3) .. controls (-8.9, -89.2) and (-8.4, -89.3) .. (2.9, -89.1) .. controls (10.8, -89.0) and (10.2, -89.3) .. (10.1, -86.8) .. controls (10.1, -79.3) and (20.8, -75.8) .. (29.6, -80.4) .. controls (31.0, -81.1) and (31.2, -80.9) .. (32.8, -77.7) .. controls (35.3, -72.5) and (35.6, -65.6) .. (33.7, -58.7) .. controls (31.9, -52.1) and (30.6, -50.1) .. (30.5, -53.8) .. controls (30.3, -64.7) and (16.7, -67.0) .. (14.6, -56.5) .. controls (14.1, -54.0) and (14.4, -51.7) .. (15.9, -46.5) .. controls (16.8, -43.2) and (17.2, -41.4) .. (17.4, -39.6) .. controls (17.6, -38.4) and (17.8, -38.4) .. (17.9, -39.6) .. controls (18.1, -41.0) and (17.8, -43.3) .. (16.9, -46.5) .. controls (14.8, -54.8) and (15.2, -60.3) .. (17.9, -57.3) .. controls (18.4, -56.7) and (18.5, -56.6) .. (18.5, -56.9) .. controls (18.5, -57.1) and (18.2, -57.7) .. (17.8, -58.1) .. controls (17.1, -59.0) and (17.0, -59.4) .. (17.6, -60.1) .. controls (18.4, -61.1) and (19.0, -61.0) .. (20.8, -59.2) .. controls (21.4, -58.6) and (21.9, -58.2) .. (22.0, -58.3) .. controls (22.2, -58.4) and (21.4, -59.5) .. (20.6, -60.2) .. controls (19.3, -61.4) and (19.7, -62.2) .. (21.6, -62.2) .. controls (23.2, -62.2) and (24.2, -61.5) .. (24.8, -59.9) .. controls (25.1, -59.2) and (25.4, -59.3) .. (25.3, -60.1) .. controls (25.1, -62.7) and (28.1, -59.4) .. (29.0, -56.1) .. controls (30.8, -48.9) and (28.5, -39.1) .. (22.9, -30.8) .. controls (20.5, -27.1) and (19.9, -26.7) .. (17.8, -27.1) -- cycle ^^ (19.5, -79.7) .. controls (11.1, -80.6) and (7.9, -89.5) .. (15.3, -91.3) .. controls (19.4, -92.2) and (20.8, -91.4) .. (20.8, -88.2) .. controls (20.8, -87.5) and (20.9, -87.0) .. (21.0, -87.0) .. controls (21.3, -87.0) and (21.5, -88.3) .. (21.5, -89.6) .. controls (21.4, -91.3) and (21.5, -91.4) .. (23.2, -91.3) .. controls (25.3, -91.2) and (25.8, -90.6) .. (26.0, -88.3) .. controls (26.1, -86.0) and (26.7, -86.6) .. (26.7, -89.1) .. controls (26.7, -92.1) and (29.8, -91.2) .. (29.9, -88.1) .. controls (30.0, -86.3) and (30.4, -86.8) .. (30.5, -88.6) .. controls (30.6, -90.2) and (31.5, -90.1) .. (32.4, -88.4) .. controls (34.6, -84.0) and (27.0, -78.8) .. (19.5, -79.7) -- cycle ^^ (-23.5, -80.1) .. controls (-29.3, -81.5) and (-32.4, -85.1) .. (-30.8, -88.6) .. controls (-29.9, -90.3) and (-29.1, -90.2) .. (-29.0, -88.4) .. controls (-28.9, -86.9) and (-28.5, -86.6) .. (-28.5, -87.9) .. controls (-28.5, -89.8) and (-27.7, -90.8) .. (-26.1, -90.9) .. controls (-25.2, -90.9) and (-25.0, -90.5) .. (-25.1, -89.3) .. controls (-25.2, -88.4) and (-25.0, -87.2) .. (-24.7, -87.2) .. controls (-24.6, -87.2) and (-24.5, -87.6) .. (-24.5, -88.2) .. controls (-24.2, -90.6) and (-23.7, -91.2) .. (-21.6, -91.3) .. controls (-19.9, -91.4) and (-19.8, -91.3) .. (-19.8, -89.3) .. controls (-19.8, -86.7) and (-19.3, -86.3) .. (-19.1, -88.8) .. controls (-19.0, -91.5) and (-18.5, -91.9) .. (-15.5, -91.5) .. controls (-11.4, -91.1) and (-9.8, -89.5) .. (-9.8, -86.3) .. controls (-9.8, -81.4) and (-16.3, -78.4) .. (-23.5, -80.1) -- cycle;
    fill(pic, p, evenodd);
    label(pic, text, (0,-50), textcolor);
	return scale(k/32)*pic;
}
