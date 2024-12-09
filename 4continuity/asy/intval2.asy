settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,160,IgnoreAspect);

real f(real x){return x^5-5*x^4+150;}
path p=graph(f,-2.5,5.1);

draw(p,blue);

pair[] Xi=intersectionpoints(p,(-3,0)--(6,0));

dotfactor=8;

dot((0,f(0)),heavygreen);
dot((4,f(4)),heavygreen);
dot("$\xi$",Xi[1],NE,heavygreen);
dot("$\eta$",Xi[0],NW,magenta);
dot("$\zeta$",Xi[2],NE,magenta);

xaxis(red,RightTicks(new real[]{-2,2,4}));
yaxis(red,LeftTicks(new real[]{-100,100,200}));