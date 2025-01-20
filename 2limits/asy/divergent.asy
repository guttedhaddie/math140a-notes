settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220,100,IgnoreAspect);

dotfactor=6;

real f(real n){return 7/n;}

int Max=19;

real ep=1;
path p=(0,2+ep)--(Max,2+ep)--(Max,2-ep)--(0,2-ep)--cycle;
fill(p,lightmagenta+opacity(0.2));
for(int j=1; j<=7; ++j){
	dot((j,f(j)),magenta);
	}
for(int j=7+1; j<=Max; ++j){
	dot((j,f(j)),heavygreen);
	}

xaxis(0,Max,red,RightTicks(new real[]{0,5,10,15}));
yaxis("$s_n$",0,7,red,LeftTicks(new real[]{0,4,6}));
ytick(Label("$s=2$",align=W),2,W,red);
ytick(Label("$s+\epsilon$",align=W),3,W,magenta);
ytick(Label("$s-\epsilon$",align=W),1,W,magenta);
labelx("$n$",Max,S,red);


label("\parbox{5cm}{Every tail contains some\\ $\textcolor{Green}{s_n}$ that do \emph{not} lie \textcolor{Magenta}{here}}",(Max/2+1.5,4.9));

draw(brace((Max+0.2,2+ep),(Max+0.2,2-ep),0.3),magenta);

draw((16,4.2){E}..(Max+0.8,2){dir(210)},magenta,ArcArrow);

