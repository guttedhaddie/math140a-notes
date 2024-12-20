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

xaxis(1.5,5.5,red,RightTicks(new real[]{0,1,2,3,4,5,6}));
xtick(Label("$\sup S$",align=N),5,N,purple);
xtick(Label("$\inf S$",align=N),2,N,brown);

real M=5-0.3;
real m=2+0.8;
real s=0.5(M+5);
real t=0.5(m+2);

xtick(Label("$m$",align=N),m,N,brown);
xtick(Label("$M$",align=N),M,N,purple);
xtick(Label("$t$",align=S),t,S,blue);
xtick(Label("$s$",align=S),s,S,blue);

dot((t,0),blue);
dot((s,0),blue);
dot((M,0),purple);
dot((m,0),brown);


