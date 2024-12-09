if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

real t=0;
real s=1;
real e=(s-t)/2;

xaxis(1.6t-0.6s,1.6s-0.6t,red);

xtick(Label("$s$",align=N),s,N,red);
xtick(Label("$t$",align=N),t,N,red);
xtick(Label("$s+\epsilon$",align=N),s+e,N,red);
xtick(Label("$t-\epsilon$",align=N),t-e,N,red);
xtick(Label("$\frac{s+t}2$",align=N),s-e,N,red);

real d=0.01;
draw(s+(d-e,4d)..s+(-e,0)..s+(d-e,-4d),heavygreen);
draw(s+(e-d,4d)..s+(e,0)..s+(e-d,-4d),heavygreen);
draw(t+(d-e,4d)..t+(-e,0)..t+(d-e,-4d),blue);
draw(t+(e-d,4d)..t+(e,0)..t+(e-d,-4d),blue);

for(int i=1; i<10; ++i){
	dot((t-e*(i/10)^2,0),blue);
	dot((t+e*(i/12)^2,0),blue);
	dot((s-e*(i/13)^2,0),heavygreen);
	dot((s+e*(i/11)^2,0),heavygreen);
	}
	
label("For all $n>N$, $s_n$ must lie both \textcolor{blue}{here} and \textcolor{Green}{here}!",((s+t)/2,-0.2));

draw((0.73s+0.27t,-0.16)--(0.9t+0.1s,-0.05),blue,Arrow);
draw((1.07s-0.07t,-0.16)--(1.02s-0.02t,-0.05),heavygreen,Arrow);
