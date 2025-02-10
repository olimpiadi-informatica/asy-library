picture drawing(real k = 1, pen foreground = white, pen background = mediumgray) {
  picture pic;
  real lunghezza_interruttore = 0.7;
  real raggio_interruttore = 0.2;
  real larghezza_pulsante = 0.25;
  real altezza_pulsante = 0.5;
  real offset_pulsante = 0.15;
  pair centro = (0,0);
  path p1 = arc((centro.x - lunghezza_interruttore, centro.y + lunghezza_interruttore), raggio_interruttore, 90, 180)
    -- arc((centro.x - lunghezza_interruttore, centro.y - lunghezza_interruttore), raggio_interruttore, 180, 270)
    -- arc((centro.x + lunghezza_interruttore, centro.y - lunghezza_interruttore), raggio_interruttore, 270, 360)
    -- arc((centro.x + lunghezza_interruttore, centro.y + lunghezza_interruttore), raggio_interruttore, 0, 90)
    -- cycle;

  filldraw(pic, p1, background, black+3*k);

  path p2 = (centro.x - larghezza_pulsante, centro.y + altezza_pulsante)
    -- (centro.x - larghezza_pulsante + offset_pulsante, centro.y - altezza_pulsante + offset_pulsante)
    -- (centro.x + larghezza_pulsante + offset_pulsante, centro.y - altezza_pulsante + offset_pulsante)
    -- (centro.x + larghezza_pulsante, centro.y + altezza_pulsante)
    -- cycle;

  filldraw(pic, p2, foreground, black+k);

  path p3 = (centro.x - larghezza_pulsante, centro.y - altezza_pulsante)
    -- (centro.x + larghezza_pulsante, centro.y - altezza_pulsante)
    -- (centro.x + larghezza_pulsante + offset_pulsante, centro.y - altezza_pulsante + offset_pulsante)
    -- (centro.x - larghezza_pulsante + offset_pulsante, centro.y - altezza_pulsante + offset_pulsante) -- cycle;

  filldraw(pic, p3, foreground*0.6, black+k);

  path p4 = (centro.x - larghezza_pulsante, centro.y + altezza_pulsante)
    -- (centro.x - larghezza_pulsante, centro.y - altezza_pulsante)
    -- (centro.x - larghezza_pulsante + offset_pulsante, centro.y - altezza_pulsante + offset_pulsante) -- cycle;

  filldraw(pic, p4, foreground*0.8, black+k);
  return scale(k)*pic;
}
