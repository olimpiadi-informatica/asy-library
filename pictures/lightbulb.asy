picture drawing(real k = 1, pen background = gray(0.9)) {
  picture pic;
  real angolo_vetro = 45;
  real raggio_base = 0.1;
  real angolo_filettatura = 10;
  real raggio_contatto = 0.1;
  real angolo_contatto = 80;
  real larghezza_contatto = 0.3;
  real altezza_contatto = 0.3;
  pair centro = (0,0);
  real d1 = 2 * Sin(angolo_vetro);
  real d2 = 2 * Cos(angolo_vetro);
  real d3 = d2 - 1 - raggio_base;

  path p1 = arc(centro, 1, -angolo_vetro, 180 + angolo_vetro)
    -- arc((centro.x - d2, centro.y - d1), 1, angolo_vetro, 0)
    -- arc((centro.x - d3, centro.y - d1), raggio_base, 180, 270)
    -- arc((centro.x + d3, centro.y - d1), raggio_base, -90, 0)
    -- arc((centro.x + d2, centro.y - d1), 1, 180, 180 - angolo_vetro)
    -- cycle;

  filldraw(pic, p1, background, black+k);

  real d4 = larghezza_contatto;
  real d5 = d4 - raggio_contatto;
  real d6 = d1 + altezza_contatto;
  real d7 = d1 + raggio_base;
  real d8 = 90 - angolo_contatto;
  real d9 = d6 + d5 * Tan(d8);

  path p2 = (centro.x - d4, centro.y - d7)
    -- arc((centro.x - d5, centro.y - d6), raggio_contatto, 180, 180 + angolo_contatto)
    -- arc((centro.x, centro.y - d9), raggio_contatto, 180 + angolo_contatto, 360 - angolo_contatto)
    -- arc((centro.x + d5, centro.y - d6), raggio_contatto, -angolo_contatto, 0)
    -- (centro.x + d4, centro.y - d7)
    -- cycle;

  filldraw(pic, p2, gray(0.5), black+k);

  path p3 = (centro.x - 0.2, centro.y - d7){up}
    .. (centro.x - 0.7, centro.y - 0.1)
    .. (centro.x - 0.5, centro.y + 0.2)
    .. (centro.x - 0.3, centro.y + 0.0)
    .. (centro.x - 0.4, centro.y - 0.2)
    .. (centro.x - 0.5, centro.y + 0.0)
    .. (centro.x - 0.3, centro.y + 0.2)
    .. (centro.x + 0.1, centro.y + 0.0)
    .. (centro.x + 0.0, centro.y - 0.2)
    .. (centro.x - 0.1, centro.y + 0.0)
    .. (centro.x + 0.3, centro.y + 0.2)
    .. (centro.x + 0.5, centro.y + 0.0)
    .. (centro.x + 0.4, centro.y - 0.2)
    .. (centro.x + 0.3, centro.y + 0.0)
    .. (centro.x + 0.5, centro.y + 0.2)
    .. (centro.x + 0.7, centro.y - 0.1)
    .. {down}(centro.x + 0.2, centro.y - d7);

  draw(pic, p3, black+k);
  return scale(k)*pic;
}
