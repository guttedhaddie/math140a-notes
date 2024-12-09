settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,120,IgnoreAspect);

real a=1;
real b=10;

path p=(a,b+0.5){dir(300)}..(3,3){dir(300)}..(5.5,5.5)..(7,7)..(b,4){SE};


draw((0,a)--(b,a),dashed+red);
draw((a,0)--(a,b),dashed+red);
draw((0,b)--(b,b)--(b,0),dashed+red);

draw(p,blue);

dotfactor=8;

dot((3,3),heavygreen);
dot((5.5,5.5),heavygreen);
dot((7,7),heavygreen);

xtick(Label("$\xi_1$",align=S),3,S,heavygreen);
xtick(Label("$\xi_2$",align=S),5.5,S,heavygreen);
xtick(Label("$\xi_3$",align=S),7,S,heavygreen);

draw((a,a)--(b,b),dashed+heavygreen);

xaxis(0,red);
yaxis(0,red);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
ytick(Label("$a$",align=W),a,W,red);
ytick(Label("$b$",align=W),b,W,red);