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
draw(Label("$S$",align=N),(2,0)--(4.96,0),pen);
dot((2,0),blue);
dot((5,0),blue,NoFill);

xaxis(-0.2,6.5,red,RightTicks(new real[]{0,1,2,3,4,5,6}));
xtick(Label("$\sup S$",align=N),5,N,heavygreen);
xtick(Label("$\inf S$",align=N),2,N,orange);

real m=2-0.8;
real M=5+0.5;

xtick(Label("$m$",align=N),m,N,orange);
xtick(Label("$M$",align=N),M,N,heavygreen);
xtick(Label("$\hat m$",align=S),0.5(m+2),S,orange);
xtick(Label("$\hat M$",align=S),0.5(M+5),S,heavygreen);




