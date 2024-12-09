settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,70,IgnoreAspect);

dotfactor=6;

int Max=22;

for(int j=0; j<=Max/2; ++j){
	dot((2j,1),blue);
	}
for(int j=1; j<=Max/2; ++j){
	dot((2j-1,-1),heavygreen);
	}

xaxis(0,22,red,RightTicks(new real[]{}));
yaxis("$s_n$",-1.2,1.3,red,LeftTicks(new real[]{-1,0,1}));
labelx("$n$",22,S,red);


