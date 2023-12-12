picture drawing(real k = 1, pen color = brown, pen knob = yellow, string title = "") {
	picture pic;
	path p;
    // pomello
    int h = 125, w = 16, b = 2, x = -9, y = 2;
    p = (-b, 55)--(-b, 67)--(w, 67)--(w, 55)--cycle;
	fill(pic, p, black);
    p = (0, 55+b)--(0, 67-b)--(w-b, 67-b)--(w-b, 55+b)--cycle;
	fill(pic, p, knob);

    p = (w-b+x,-b+y)--(w-b+x,h+b+y)--(2*w+x+b, h+b+y)--(2*w+b+x,-b+y)--cycle;
	fill(pic, p, black);
    p = (w+x,y)--(w+x,h+y)--(2*w+x, h+y)--(2*w+x,y)--cycle;
    fill(pic, p, color);

    h = 130; w = 10; b = 2;
    p = (w-b,-b)--(w-b,h+b)--(2*w+b, h+b)--(2*w+b,-b)--cycle;
	fill(pic, p, black);
    p = (w,0)--(w,h)--(2*w, h)--(2*w,0)--cycle;
    fill(pic, p, color);
    
    label(pic, scale(13*k/(length(title)+1)*1.45)*("\sc "+title), (-23,0));
    return scale(k/32)*pic;
}
