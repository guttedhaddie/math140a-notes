settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

real f(real x){return x*sin(1/x);}

path p=graph(f,0.002,0.01)..graph(f,0.01,0.1)..graph(f,0.1,0.2)..graph(f,0.2,0.4)..graph(f,0.4,0.8);

draw(p,blue);
draw(reflect((0,0),(0,1))*reverse(p),blue);

xaxis(red);
yaxis("$g(x)$",-0.22,0.8,red);
labelx("$x$",0.75,red);
