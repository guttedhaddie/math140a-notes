settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,150,IgnoreAspect);

real f(real x){return sin(1/x);}
real m=0.1;
real M=3.3/pi;

path F=graph(f,0.05m,M,10000);

draw(rotate(180,(0,0))*reverse(F)--F,blue+linewidth(1));

xaxis("$x$",-M,M,red);
xtick(Label("$\frac 2\pi$",align=S),2/pi,S,red);
xtick(Label("$\frac 1\pi$",align=S),1/pi,S,red);
//xtick(Label("$\frac 1{2\pi}$",align=S),1/(2*pi),S,red);
xtick(Label("$-\frac 2\pi$",align=S),-2/pi,S,red);
xtick(Label("$-\frac 1\pi$",align=S),-1/pi,S,red);
//xtick(Label("$-\frac 1{2\pi}$",align=S),-1/(2*pi),S,red);

yaxis(-1.1,1.1,red,LeftTicks(new real[]{-1,1}));
//labely(Label(rotate(90,(0,0))*"$f(x)$"),1.2,blue);

pair X(int n){return (1/(pi*(n+0.5)),f(1/(pi*(n+0.5))));}

for(int i=0; i<=50; ++i){
	dot((1/(pi*(i+0.5)),0),heavygreen);
	dot(X(i),magenta);
	}