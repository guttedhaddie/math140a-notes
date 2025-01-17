settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(240);

dotfactor=6;

int Max=75;
real vsc=0.28*Max;

real f(real n){return vsc*(2-1/(sqrt(n)));}

real ep=0.3;
int N(real x){return ceil(1/(x^2));}
ytick("$s+\epsilon$",vsc*(2+ep),magenta);
ytick("$s-\epsilon$",vsc*(2-ep),magenta);
path p=(0,vsc*(2+ep))--(Max,vsc*(2+ep))--(Max,vsc*(2-ep))--(0,vsc*(2-ep))--cycle;
fill(p,lightmagenta+opacity(0.2));
xtick("$N$",N(ep),heavygreen);
for(int j=1; j<=N(ep); ++j){
	dot((j,f(j)),blue);
	}
for(int j=N(ep)+1; j<=Max; ++j){
	dot((j,f(j)),heavygreen);
	}

xaxis(0,Max,red,RightTicks(new real[]{0,20,40,60,80,100}));
yaxis("$s_n$",0,2.6*vsc,red,LeftTicks(new real[]{0}));
ytick(Label("$s=2$",align=W),2*vsc,red);
labelx("$n$",Max,S,red);

label("$n$ larger than \textcolor{Green}{this}\ldots",(30,1*vsc));
draw((40,0.9vsc){dir(200)}..(N(ep)+2,0.1vsc),heavygreen,Arrow);

label("\ldots guarantees $s_n$ \textcolor{Magenta}{here}",(50,0.5*vsc));
draw((Max-1,0.55vsc){dir(50)}..(Max+3,2vsc){W},magenta,Arrow);
draw(brace((Max+0.5,vsc*(2+ep)),(Max+0.5,vsc*(2-ep)),2),magenta);

draw((0,2vsc)--(Max,2vsc),magenta+dashed);

