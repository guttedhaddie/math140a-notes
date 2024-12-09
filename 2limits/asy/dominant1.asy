settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,115,IgnoreAspect);

dotfactor=5;

real f(real n){return 3.15+sin(n/2)+4*exp(-n/20)*cos(n/2);}

int Max=45;

dot((1,f(1)),red);
	
for(int j=2; j<=Max; ++j){
	real[] a=sequence(j,Max+20);
	real M=max(map(f,a));
	real m=min(map(f,a));
	dot((j,f(j)),red);
	}

//dotfactor=4;
int[] I={1,2,13,14,15,27,40,41};

for(int i : I){
dot((i,f(i)),blue+linewidth(3.8));
}
	
xaxis(0,Max,red);
yaxis(0,f(1)+0.2,red);
labelx("$n$",Max-1,S,red);
labely("$s_n$",f(1),W,red);
labely("$s_{n_k}$",0.8f(1),W,blue);
