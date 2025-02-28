settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130,100,IgnoreAspect);

real f(real x){return x^2;}

draw((-3,0)--(2,0),heavygreen+linewidth(1));
draw((0,0)--(0,9),magenta+linewidth(1));
draw(graph(f,-3,2),blue+linewidth(1));
dot((-3,f(-3)),blue);
dot((2,f(2)),blue);
dot((0,0),magenta);
dot((0,9),magenta);
dot((-3,0),heavygreen);
dot((2,0),heavygreen);

xaxis(-3.3,2.3,red,RightTicks(new real[]{-3,-2,-1,0,1,2,3}));
yaxis("$f(x)$",0,9,red,LeftTicks(new real[]{2,4,6,8,10}));
labelx("$x$",2.4,S,red);
