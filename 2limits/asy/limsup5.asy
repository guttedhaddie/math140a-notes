settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(190,160,IgnoreAspect);

dotfactor=6;

real f(real n){return 4+sin(n/2)+4*exp(-n/20)*cos(n/2);}

int Max=37;

dot((1,f(1)),red);
	
for(int j=2; j<=Max; ++j){
	real[] a=sequence(j,Max+20);
	real M=max(map(f,a));
	real m=min(map(f,a));
	dot((j,f(j)),red);
	dot((j-1,M),blue,NoFill);
	dot((j-1,m),deepgreen,NoFill);
	}
	
labely("$\limsup s_n$",5,blue);
labely("$\liminf s_n$",3,deepgreen);
labely("$v_{N}$",6.5,blue);
labely("$u_{N}$",1.5,deepgreen);
draw((0,5)--(Max,5),blue+linewidth(0.3));
draw((0,3)--(Max,3),deepgreen+linewidth(0.3));

xaxis(0,Max,red,RightTicks(new real[]{0}));
yaxis("$s_n$",0,red,LeftTicks(new real[]{0}));
labelx("$n$",Max-3,red);
