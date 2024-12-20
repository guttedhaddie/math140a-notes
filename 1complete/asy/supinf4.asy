settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);


pen pen=blue+linewidth(2);
draw((-1,0)--(-0.4,0),pen);
draw((-0.3,0)--(-0.2,0),pen);
draw((0,0)--(0.1,0),pen);
draw((0.5,0)--(0.51,0),pen);
draw((0.9,0)--(1,0),pen);

real s=0.95;
real t=-0.75;
real x=0.7;
real y=-0.65;

pen hgb=brown;
//0.75heavygreen+0.25black;

xaxis(-1.25,1.25,red);
xtick(Label("$\sup S$",align=N),1,N,purple);
xtick(Label("$\inf S$",align=N),-1,N,hgb);
xtick(Label("$s$",align=S),s,S,blue);
xtick(Label("$t$",align=S),t,S,blue);
xtick(Label("$y$",align=N),y,N,hgb);
xtick(Label("$x$",align=N),x,N,purple);

label("$S$",(0,0),3N,blue);

dotfactor=10;
dot((s,0),blue);
dot((t,0),blue);

