picture drawing(real k=1, pen col=heavygray, Label text = "", pen textcolor = black) {
    picture pic;
    unitsize(pic, 1mm);
    path p;
    pen light = 0.6*white + 0.4*col;
    p = (-80,-90) -- (-80,20) -- (-60,70) -- (0,70) -- (80,-5) -- (0,-70) -- cycle;
    fill(pic, p, light);
    p = (-70,71) .. controls (-77,50) and (-84,28) .. (-91,6) .. controls (-88,-21) and (-82,-48) .. (-85,-76) .. controls (-85,-84) and (-85,-92) .. (-85,-99) -- (-74,-85) .. controls (-69,-67) and (-56,-49) .. (-47,-31) -- (-11,-11) .. controls (-24,-15) and (-43,-13) .. (-57,-16) .. controls (-57,-16) and (-67,-47) .. (-71,-42) .. controls (-73,-27) and (-76,-13) .. (-77,1) -- (-78,10) .. controls (-72,27) and (-65,42) .. (-58,58) -- cycle;
    fill(pic, p, col);
    p = (-70,71) .. controls (-55,78) and (-38,83) .. (-23,88) .. controls (-11,91) and (0,99) .. (11,97) .. controls (25,84) and (40,72) .. (53,58) .. controls (65,41) and (78,24) .. (90,6) .. controls (90,-13) and (90,-32) .. (90,-51) .. controls (89,-56) and (92,-63) .. (88,-67) .. controls (62,-70) and (36,-72) .. (9,-75) .. controls (-8,-76) and (-21,-89) .. (-37,-95) .. controls (-53,-97) and (-69,-98) .. (-85,-99) -- (-74,-85) .. controls (-52,-73) and (-33,-53) .. (-11,-45) .. controls (18,-32) and (48,-18) .. (78,-5) .. controls (82,-1) and (67,-7) .. (63,-7) .. controls (26,-14) and (-10,-23) .. (-47,-31) -- (-11,-11) .. controls (-33,-7) and (-55,-3) .. (-77,1) -- (-78,10) .. controls (-55,6) and (-32,5) .. (-9,0) .. controls (-9,11) and (-13,21) .. (-14,32) .. controls (-16,42) and (-15,53) .. (-30,54) .. controls (-39,55) and (-49,59) .. (-58,58) -- cycle;
    fill(pic, p, col);
    p = (-85,-99) -- (-74,-85) -- (-47,-31) -- (-11,-11) -- (-77,1) -- (-78,10) -- (-58,58) -- (-70,71);
    for (int i=0; i<4; ++i)
        draw(pic, point(p,2*i) -- point(p,2*i+1), col+0);
    label(pic, scale(2)*text, (0,-100), textcolor);
    return scale(0.06*k)*pic;
}
