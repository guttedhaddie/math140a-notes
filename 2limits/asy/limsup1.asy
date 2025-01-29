settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(240,120,IgnoreAspect);

dotfactor=6;

real f(real n){return 2+3*exp(-n/10)*cos(n/2);}

int Max=40;

dot((1,f(1)),red);
	
for(int j=1; j<=Max; ++j){
	real[] a=sequence(j,Max+20);
	real M=max(map(f,a));
	real m=min(map(f,a));
	dot((j,f(j)),red);
	dot((j,M),blue,NoFill);
	dot((j,m),darkgreen,NoFill);
	}
	
//label("$\sup\{s_n:n>N\}$",(70,4),blue);
//label("$\le$",(55,4));
//label("$s_{N+1}$",(50,4),red);
//label("$\le$",(45,4));
//label("$\inf\{s_n:n>N\}$",(30,4),darkgreen);

xaxis(0,Max,red,RightTicks(new real[]{0,}));
yaxis("$s_n$",0,red,LeftTicks(new real[]{0}));
ytick(Label("$\lim s_n$",align=W),2,W,red);
labelx("$n$",Max-2,S,red);
