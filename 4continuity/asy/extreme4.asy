settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130,100,IgnoreAspect);

dotfactor=8;

real f(real x){return x^2;}

path p=graph(f,0,2,operator..);
path q=graph(f,2,2.5,operator..);

draw(p,blue);
draw(q,blue+dashed);
dot((0,f(0)),blue);

xaxis(0,2.1,red,RightTicks(new real[]{0,1,2}));
yaxis(0,red,LeftTicks(new real[]{0,2,4,6}));
draw((2,0)--(2.5,0),red+dashed);