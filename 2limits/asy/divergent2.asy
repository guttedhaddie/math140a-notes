settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,110,IgnoreAspect);

dotfactor=6;

real f(int n){return (-1)^n;}

int Max=16;

real ep=1;
real s=0.6;
ytick("$s+\epsilon$",s+ep,magenta);
ytick("$s-\epsilon$",s-ep,magenta);
path p=(0,s+ep)--(Max+0.5,s+ep)--(Max+0.5,s-ep)--(0,s-ep)--cycle;
fill(p,lightmagenta+opacity(0.2));
xtick("$N$",8,heavygreen);
for(int j=1; j<=Max/2; ++j){
	dot((2j,1),magenta);
	}
for(int j=1; j<=4; ++j){
	dot((2j-1,-1),blue);
	}
for(int j=5; j<=Max/2; ++j){
	dot((2j-1,-1),heavygreen);
	}

xaxis(0,Max+2,red,RightTicks(new real[]{10,20}));
yaxis(-1.2,2.6,red,LeftTicks(new real[]{-1,1,2}));
ytick("$s$",s,red);
labelx("$n$",Max+1.5,S,red);
labely("$s_n$",2.5,W,red);

//label("\parbox{5.5cm}{Regardless of \textcolor{Green}{$N$, some $s_n$} afterwards do not lie \textcolor{Magenta}{here}}",(6,3-0.4));


//draw(brace((Max+1,s+1),(Max+1,s-1),0.3),magenta);
