settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,110,IgnoreAspect);

dotfactor=5;

real f(int n){return 4*((-1)^(n/2+1))/n;}
real g(int n){return 1-1/n;}

int Max=14;

for(int j=1; j<=Max; ++j){
	dot((2j,f(2j)),red);
	}
for(int j=1; j<=Max; ++j){
	dot((2j-1,g(2j-1)),red);
	}
	
for(int i=1; i<=Max/2; ++i){
dot((4i,f(4i)),heavygreen+linewidth(3));
}

for(int i=1; i<=Max; ++i){
dot((2i-1,g(2i-1)),blue+linewidth(3));
}

xaxis(0,2*Max,red,RightTicks(new real[]{10,20,30}));
yaxis("$s_n$",-1,2.1,red,LeftTicks(new real[]{-1,0,1,2}));
//ytick("$s$",s,blue);
labelx("$n$",2*Max,S,red);
//labely("$s_n$",2.35,W,red);

