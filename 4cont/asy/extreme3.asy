settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,100,IgnoreAspect);

dotfactor=8;

real f(real x){return 1/(sqrt(2-x));}

path p=graph(f,0,2-0.2,operator..);
path q=graph(f,2-0.2,2-0.1,operator..);

draw(p,blue);
draw(q,blue+dashed);
dot((0,f(0)),blue);

xaxis(0,2.1,red,RightTicks(new real[]{0,1,2}));
yaxis(0,red,LeftTicks(new real[]{0,1,2,3}));