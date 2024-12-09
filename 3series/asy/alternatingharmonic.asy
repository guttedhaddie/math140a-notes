settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(190,130,IgnoreAspect);

dotfactor=6;

real f(int n){return ((-1)^(n))/(n+1);}

int Max=28;

real s=log(2);

for(int j=0; j<=Max+1; ++j){
	dot((j,f(j)),heavygreen);
	}
	

//real sup=0;
//for(int j=1; j<=Max; ++j){
//	sup=sup+f(j);
//	dot((j,sup),blue+linewidth(0.5),NoFill);
//	}
	
real sup=0;
for(int j=0; j<=Max/2; ++j){
	sup=sup+f(2j);
	dot((2j,sup),blue+linewidth(0.7),NoFill);
	sup=sup+f(2j+1);
	dot((2j+1,sup),magenta+linewidth(0.7),NoFill);
	}
	
xaxis(0,Max+1,red,RightTicks(new real[]{10,20,30}));
yaxis(red,LeftTicks(new real[]{0}));
ytick(Label("$s$",align=W),s,W,red);
labelx("$n$",Max+1,S,red);
labely("$(-1)^na_n$",-0.3,W,heavygreen);
labely("$s_n^+$",1,W,blue);
labely("$s_n^-$",0.5,W,magenta);

