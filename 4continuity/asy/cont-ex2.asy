settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,135,IgnoreAspect);

real f(real x){return 1+2x^2;}
real g(real x){return 2-x;}

path p=graph(f,0,0.99);
path q=graph(g,1,2);

draw(p,blue);
draw(q,blue);
dot((1,f(1)),magenta,NoFill);
dot((1,g(1)),heavygreen);

xaxis(0,2.3,red,RightTicks(new real[]{0,2,3}));
yaxis("$k(x)$",0,3.1,red,LeftTicks(new real[]{0,2}));
labelx("$x$",2.3,red);

//real d=1-0.15;
//xtick(Label("$x$",align=N),d,heavygreen);
//draw((d,0.6)--(d,f(d))--(0,f(d)),heavygreen+dashed,Arrow(Relative(0.88)));
//ytick(Label("$k(x_n)$",align=E),f(1-0.1),heavygreen);

int n=175;
for(int i=1; i<=n; ++i){
	xtick(1-1/i,S,red);
	dot((1-1/i,f(1-1/i)),linewidth(2)+red);
	ytick(f(1-1/i),W,magenta);
	}
xtick(Label("$1$",align=S),1,S,heavygreen+linewidth(1));
ytick(Label("$k(1)$",align=W),1,W,heavygreen+linewidth(1));
ytick(Label("$3$",align=W),3,W,magenta+linewidth(1));
labelx("$x_n$",0.5,S,red);