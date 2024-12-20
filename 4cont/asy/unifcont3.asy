settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130,125,IgnoreAspect);

real a=-2;
real b=4;
real d=0.02;

real f(real x){return x^2-3x+4;}

draw(graph(f,a,b),blue+linewidth(1));

dotfactor=8;

dot((a,f(a)),magenta);
dot((b,f(b)),magenta);
dot((a,f(a)),blue,NoFill);
dot((b,f(b)),blue,NoFill);

xaxis(a,b,red,RightTicks(new real[]{-2,0,2,4}));
yaxis(0,red,LeftTicks(new real[]{4,8,12,16}));


