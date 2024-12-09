settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(145,0);

real m=0.28;
real a=0.4;
real b=2.5;
real M=3;

real f(real x){return 1/x;}

draw(graph(f,m,a),dashed+blue);
draw(graph(f,a,b),blue);
draw(graph(f,b,M),dashed+blue);

xaxis("$x$",0,M,red);
yaxis("$g(x)$",0,1/m,red);

xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);

real X=1;
real Y=1.8;

//xtick(Label("$x$",align=S),X,S,heavygreen);
//xtick(Label("$y$",align=S),Y,S,heavygreen);
draw((X,0)--(X,f(X))--(0,f(X)),dashed+heavygreen);
draw((Y,0)--(Y,f(Y))--(0,f(Y)),dashed+heavygreen);
//ytick(Label("$f(x)$",align=W),f(X),W,heavygreen);
//ytick(Label("$f(y)$",align=W),f(Y),W,heavygreen);

real d=0.02;

draw((X+d,0)--(Y-d,0),heavygreen+linewidth(2));
draw(Label("$2\delta$",align=S),(X,-0.2)--(Y,-0.2),heavygreen+dotted);
draw((X,-0.15)--(X,-0.25),heavygreen);
draw((Y,-0.15)--(Y,-0.25),heavygreen);

real v=0.1;

draw((0,f(Y)-v)--(0,f(X)+v),magenta+linewidth(2));
draw(Label("$2\epsilon$",align=W),(-0.2,f(Y)-v)--(-0.2,f(X)+v),magenta+dotted);
draw((-0.15,f(X)+v)--(-0.25,f(X)+v),magenta);
draw((-0.15,f(Y)-v)--(-0.25,f(Y)-v),magenta);
