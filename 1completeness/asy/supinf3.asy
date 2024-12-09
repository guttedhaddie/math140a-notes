settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

dotfactor=10;
pen pen=blue+linewidth(2);
draw(Label("$S$",align=N),(2,0)--(4.97,0),pen);
dot((2,0),blue);
dot((5,0),blue,NoFill);

xaxis(1.2,5.9,red,RightTicks(new real[]{0,1,2,3,4,5,6}));
xtick(Label("$\sup S$",align=N),5,N,heavymagenta);
xtick(Label("$\inf S$",align=N),2,N,orange);

real x=5-0.3;
real y=2+0.6;

xtick(Label("$y$",align=N),y,N,orange);
xtick(Label("$x$",align=N),x,N,heavymagenta);
xtick(Label("$t$",align=S),0.5(y+2),S,orange);
xtick(Label("$s$",align=S),0.5(x+5),S,heavymagenta);




