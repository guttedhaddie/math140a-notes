settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

path p=(0,0.06)--(2.98,0.06){dir(290)}..(3,0)..{dir(250)}(2.98,-0.06)--(0,-0.06)--cycle;
fill(p,lightblue+opacity(0.5));
draw((0.03,-0.06)--(0,-0.06)--(0,0.06)--(0.03,0.06),linewidth(1));
draw((2.98,0.06){dir(290)}..(3,0)..{dir(250)}(2.98,-0.06),linewidth(1));

xaxis(-0.2,3.3,red,RightTicks(new real[]{0,3}));
xtick(Label("$x$",align=S),2.2,S,red);
xtick(Label("$s=\frac{x+3}2$",align=N),5.2/2,N,blue);


