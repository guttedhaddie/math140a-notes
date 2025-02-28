settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,135,IgnoreAspect);

real f(real x){return 1+2sqrt(x);}
real g(real x){return 2-x;}

path p=graph(f,0,0.97);
path q=graph(g,1,2);

draw(p,blue);
draw(q,blue);
dot((1,f(1)),blue,NoFill);
dot((1,g(1)),blue);

xaxis(0,2.3,red,RightTicks(new real[]{0,1,2,3}));
yaxis(0,3.1,red,LeftTicks(new real[]{0,1,2,3}));
//labelx("$x$",2.3,red);

real de=0.7;
real x=max(1/4,1-de/2);

xtick(Label("$x$",align=S),x,S,heavygreen);
//xtick(1-de,N,heavygreen);
//xtick(1+de,N,heavygreen);
ytick(Label("$k(x)$",align=W),f(x),W,heavygreen+linewidth(1));

draw("$2\delta$",brace((1-de,0.02),(1+de,0.02),0.1),N,heavygreen);

draw((x,0)---(x,f(x))--(0,f(x)),dashed+heavygreen,Arrow(Relative(0.5)));
draw("$2\epsilon$",brace((-0.5,0),(-0.5,2),0.1),W,magenta);

