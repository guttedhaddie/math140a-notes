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

xaxis(-1.5,1.5,red);
xtick(Label("$\sup S$",align=N),1,N,heavymagenta);
xtick(Label("$\inf S$",align=N),-1,N,orange);
xtick(Label("$s$",align=S),0.95,S,heavymagenta);
xtick(Label("$t$",align=S),-0.75,S,orange);
xtick(Label("$y$",align=N),-0.65,N,orange);
xtick(Label("$x$",align=N),0.7,N,heavymagenta);

label("$S$",(0,0),3N,blue);

//draw(Label("$S$",align=N),brace((-1,0.05),(1,0.05),0.15),blue);
//draw(Label("upper bounds",align=N),(1,0)--(2,0),brown+linewidth(1));
//draw(Label("lower bounds",align=N),(-2,0)--(-1,0),orange+linewidth(1));



