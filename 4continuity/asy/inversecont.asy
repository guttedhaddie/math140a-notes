settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,120,IgnoreAspect);

dotfactor=8;

real f(real x){return x^2;}
real g(real x){return x^(1/3);}

path p=graph(g,0,1)--graph(f,1,2);

draw(p,blue);
dot((0,0),blue);
dot((2,4),blue);

xaxis("$x$",0,2,red,RightTicks(new real[]{0,1,2}));
yaxis("$f(x)$",0,red,LeftTicks(new real[]{0,1,2,3,4}));