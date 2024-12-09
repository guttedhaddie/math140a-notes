settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,100,IgnoreAspect);

dotfactor=2;

real g(real n){return sin(n);}

int Max=1000;
	
for(int j=1; j<=Max; ++j){
	dot((j,g(j)),red);
	}


	
xaxis(0,Max,red);
yaxis(-1,1,red,LeftTicks(new real[]{-1,0,1}));
labelx("$n$",Max-1,S,red);
labely("$s_n$",1.2,W,red);
//labely("$s_{n_k}$",0.8,W,deepgreen);




