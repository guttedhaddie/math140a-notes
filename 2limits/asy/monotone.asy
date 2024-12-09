settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220,120,IgnoreAspect);

dotfactor=4;

real f(real n){return 5-4.8*exp(-0.1n);}

int Max=50;
	
for(int j=1; j<=Max; ++j){
	dot((j,f(j)),blue);
	ytick(f(j),W,blue);
	}
	
draw((0,5)--(Max,5),magenta+dashed);

xaxis(0,Max,red);
labelx("$n$",0.95*Max,red);
labely("$s_n$",6.25,red);
yaxis(0,6.5,red);
ytick(Label("$\sup\{s_n\}$",align=W),5,W,magenta);

