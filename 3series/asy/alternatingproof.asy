settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(230,145,IgnoreAspect);

dotfactor=5;

real f(int n){return ((-1)^n)/(n+1);}

int Max=36;

real s=log(2);

for(int j=1; j<=Max; ++j){
	dot((j,f(j)),heavygreen);
	}
	

real sup=0;
for(int j=0; j<=Max/2; ++j){
	sup=sup+f(2j);
	dot((2j,sup),blue+linewidth(0.5),NoFill);
	sup=sup+f(2j+1);
	dot((2j+1,sup),orange+linewidth(0.5),NoFill);
	}
	
xaxis(0,Max,red);
yaxis(-0.52,1.1,red);
ytick(Label("${}_{\phantom{i}}s$",align=W),s,W,red);
labelx("$n$",Max,S,red);
labely("$a_n$",0,W,heavygreen);
labely("$s_n^+$",f(0),W,blue);
labely("$s_n^-$",f(0)+f(1),W,orange);


label("$s_0^+$",(Max,f(0)),blue);
draw((0.1,f(0))--(Max-2,f(0)),blue+dashed);
label("$s_1^-$",(Max,f(0)+f(1)),orange);
draw((1.1,f(0)+f(1))--(Max-2,f(0)+f(1)),orange+dashed);
