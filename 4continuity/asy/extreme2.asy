settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,100,IgnoreAspect);

dotfactor=8;

real ep=0.014;

draw((0,0)--(1-ep,3-3*ep),blue);
dot((0,0),blue);
dot((1,3),heavygreen,NoFill);
draw((1,1)--(2,1),blue);
dot((1,1),blue);
dot((2,1),blue);

xaxis(0,2.1,red,RightTicks(new real[]{0,1,2}));
yaxis(0,3.1,red,LeftTicks(new real[]{0,1,2,3}));