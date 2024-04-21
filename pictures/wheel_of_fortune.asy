unitsize(1cm);

picture drawing(real r = 1, int N = 6, int period = 3, pen colori[] = {orange, blue, green, red, cyan, yellow, purple, magenta, lightmagenta, lightblue, lightred, lightgreen, pink, heavymagenta, lightyellow, lightmagenta, lightcyan}) {
  picture pic;

  pen punti = black+0.8*r;
  pen bord = black+0.2*r;
  pair o=0;
  
  real alfa=90-((360/N)/2);
  real delta=360/N; 

  draw(pic, circle(o,r), rgb("ebc373")+1.2*r);
  dot(pic, o, punti);
  
  for(int i=0; i<N; ++i){
    filldraw(o--arc(o,r,alfa,alfa+delta)--cycle, colori[i%period], bord);
    alfa += delta;
    dot(pic, dir(alfa+delta)*r, punti);
  }

  path cursore = (-0.05*r,1.07*r)--(0,0.85*r)--(0.05*r,1.07*r)--cycle;
  draw(pic, cursore, red+0.1);
  fill(pic,cursore,red);
  return pic;
}