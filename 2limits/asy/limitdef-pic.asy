settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(440,180,IgnoreAspect);

dotfactor=5;

real f(real n){return 2-1/(sqrt(n));}

int Max=100;

real ep=0.2;
int N(real x){return ceil(1/(x^2));}
ytick("$s+\epsilon$",2+ep,blue);
ytick("$s-\epsilon$",2-ep,blue);
path p=(0,2+ep)--(Max,2+ep)--(Max,2-ep)--(0,2-ep)--cycle;
fill(p,lightblue+opacity(0.2));
xtick("$N$",N(ep),orange);
for(int j=1; j<=N(ep); ++j){
	dot((j,f(j)),blue);
	}
for(int j=N(ep)+1; j<=Max; ++j){
	dot((j,f(j)),orange);
	}

xaxis(0,100,red,RightTicks(new real[]{0,20,40,60,80,100}));
yaxis("$s_n$",0,2.5,red,LeftTicks(new real[]{0,1}));
ytick(Label("$s=2$",align=W),2,red);
labelx("$n$",105,S,red);

label("\ldots guarantees that $s_n$ lives \textcolor{blue}{here}",(67,0.5));
label("$n$ being larger than \textcolor{orange}{this}\ldots",(30,1));

path ar=shift(103,1.25)*xscale(20)*yscale(1.5)*arc((0,0),0.5,-90,90);

label("$\left.\rule{0pt}{15pt}\right\}$",(101,2),blue);
draw((90,0.5){E}--(100,0.5){E}--ar,blue,Arrow);

draw((35,0.9)..(30,0.1)..(N(ep)+2,-0.1),orange,Arrow);
