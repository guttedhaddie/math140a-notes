settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,160,IgnoreAspect);

dotfactor=5;

real f(real n){return 10/n+2+(1.1)^(-n)*cos(n);}

real s=2;
real ep=1;

int Max=35;

ytick(Label("$s+1$",align=W),s+1,W,blue);
ytick(Label("$s-1$",align=W),s-1,W,blue);

path p=(0,s+ep)--(Max,s+ep)--(Max,s-ep)--(0,s-ep)--cycle;
fill(p,lightblue+opacity(0.2));
draw((0,s)--(Max,s),red+dashed);

for(int j=2; j<=13; ++j){
	dot((j,f(j)),deepgreen);
	}
for(int j=14; j<=Max; ++j){
	dot((j,f(j)),orange);
	}

xaxis(0,Max,red);
yaxis("$s_n$",0,red);
ytick(Label("$s$",align=W),s,W,red);
xtick(Label("$N$",align=S),13.5,S,orange);
labelx("$n$",Max,S,red);

//label("finitely many terms",(17,6),deepgreen);
label("bounded tail",(25,0.7),orange);
