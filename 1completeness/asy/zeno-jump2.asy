settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(260);

real amp=0.03;
real ht=0.06;

draw(Label("$1$",align=N),brace((0,ht),(1,ht),amp));
draw(Label("$1$",align=N),brace((1,ht),(2,ht),amp));
//draw(Label("$\frac 1{2^3}$",align=S),brace((f(2),ht),(f(3),ht),amp));


xaxis(0,2,red);

xtick(0,red);
xtick(1,red);
xtick(2,red);


labelx("$0$",0,S,red);
labelx("$1$",1,S,red);
labelx("$2$",2,S,red);