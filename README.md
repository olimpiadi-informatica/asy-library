# ASY Library

Library of utility functions for [Asymptote](https://asymptote.sourceforge.io), designed to be included as git submodule in Asymptote-based projects.

### Pictures

Headers with a single `picture drawing(<params>)` function, producing a parametric picture. They can be used in external asymptote files through code such as:

```
access "path/to/asy-library/mypicture.asy" as mypicture;

add(shift(x, y) * mypicture.drawing(params...));
```

###  Structures

More complex tools, for drawing structured objects. It includes:

- `graph.asy` for drawing graphs;
- `blocks.asy` for drawing pseudo code in block-like style.

### Tools

Helper scripts that can be useful in expanding the library or otherwise manipulating asymptote files. It includes:

- `svg_to_asy.py`: converts an SVG file into Asymptote code, to allow parametrization of existing third-party pictures. It is **strongly recommended** to tweak the SVG file with [Inkscape](https://inkscape.org) first, in particular using its "simplify path" tool to reduce the number of points in the SVG hence the size of the translated code.
