settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130,125,IgnoreAspect);

real a=0;
real b=5;

real f(real x){return 1/(5-x);}

draw(graph(f,a,b-0.35),blue+linewidth(1));
draw(graph(f,b-0.354,b-0.25),blue+linewidth(1)+dotted);

dotfactor=8;

dot((a,f(a)),magenta);
dot((a,f(a)),blue,NoFill);

xaxis(a,b,red,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis(0,red,LeftTicks(new real[]{0,1,2,3,4,5}));


