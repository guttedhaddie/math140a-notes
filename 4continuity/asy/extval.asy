settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(440,150,IgnoreAspect);

real a=1;
real b=6.5;
real y=3.3;

real f(real x){return sin(x);}

draw(graph(f,0,4pi),blue);

xaxis("$x$",0,4.2pi,red);
yaxis("$f(x)$",-1.1,1.1,red,LeftTicks(new real[]{-1,0}));

real xn(int i){return pi/2+pi*(1+(-1)^i)+1/i;}

int n=110;
for(int i=1; i<=n; ++i){
	if(i<3){xtick(Label("$x_{"+(string) i+"}$",align=N),xn(i),N,heavygreen);}
	if(i>=3){xtick(xn(i),N,heavygreen);}
	dot((xn(i),f(xn(i))),linewidth(3)+heavygreen);
	if(i<2){ytick(Label("$f(x_{"+(string) i+"})$",align=W),f(xn(i)),W,heavygreen);}
	if(i>=2){ytick(f(xn(i)),W,heavygreen);}
	}
	
//labely("$\vdots$",0.75,4W,red);
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$\frac{5\pi}2$",align=S),5pi/2,S,red);
xtick(Label("$3\pi$",align=S),3pi,S,red);
xtick(Label("$\frac{7\pi}2$",align=S),7pi/2,S,red);
xtick(Label("$4\pi$",align=S),4pi,S,red);
ytick(Label("$1$",align=W),1,W,red);