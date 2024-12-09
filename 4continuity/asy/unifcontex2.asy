settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,0);

real g(real x){return x;}

real f(real x){return x*sin(1/x);}
real m=0.1;
real M=3.3/pi;

path F=graph(f,0.01m,M,10000);

//real h(real x){return 2x*sin(1/x)-cos(1/x);}
//path hh=graph(h,0.01m,m,1000)--graph(h,m,M,1000);
//draw(hh,heavygreen);
//draw(rotate(180,(0,0))*hh,heavygreen);

draw(reflect((0,0),(0,1))*reverse(F)--F,blue+linewidth(1));
draw(graph(g,-0.4M,M),blue+dashed);
draw(reflect((0,0),(1,0))*graph(g,-M,0.4M),blue+dashed);

xaxis("$x$",-M,M,red);
xtick(Label("$\frac 2\pi$",align=S),2/pi,S,red);
xtick(1/pi,S,red);
//xtick(Label("$\frac 1{2\pi}$",align=S),1/(2*pi),S,red);
xtick(Label("$-\frac 2\pi$",align=S),-2/pi,S,red);
xtick(-1/pi,S,red);
//xtick(Label("$-\frac 1{2\pi}$",align=S),-1/(2*pi),S,red);

yaxis(-0.45,M,red,LeftTicks(new real[]{-1,1}));
ytick(Label("$\frac 2{\pi}$",align=W),2/(pi),W,red);
//labely(Label(rotate(90,(0,0))*"$f(x)$"),1.2,blue);

