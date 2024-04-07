picture drawing(real k = 1, real aspect = 1, pen lightcol = rgb("9e6b5a"), pen darcol = rgb("310907")) {
    picture pic;

    real step = 5 * k;
    fill(pic, (0,0) -- (0,100) -- (100*aspect, 100) -- (100*aspect,0) -- cycle, darcol);
    fill(pic, (step,step) -- (step,100-step) -- (100*aspect-step, 100-step) -- cycle, lightcol);
    fill(pic, (step,step) -- (100*aspect-step, step) -- (100*aspect-step, 100-step) -- cycle, lightcol*0.25+darcol*0.75);
    step *= 2;
    fill(pic, (step,step) {N}..{N} (100*aspect-step, 100-step) -- (step,100-step) -- cycle, lightcol*0.75+darcol*0.25);
    fill(pic, (step,step) {N}..{N} (100*aspect-step, 100-step) -- (100*aspect-step, step) -- cycle, lightcol*0.5+darcol*0.5);

    return scale(k/32)*pic;
}
