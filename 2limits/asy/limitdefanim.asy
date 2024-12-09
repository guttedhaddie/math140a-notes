//Use Inline option

//if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";


texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


import animate;

size(440,240,IgnoreAspect);

dotfactor=6;

real f(real n){return 1+1.5*exp(-n/20)*cos(n/4);}

int N(real x){return ceil(-20*log(x/1.5));}

int Max=100;


animation A;

int K=16;
for(int k=0; k <= K; ++k) {
save();
real ep=0.82-0.2*sqrt(k);
ytick("$s+\epsilon$",1+ep,blue);
ytick("$s-\epsilon$",1-ep,blue);
path p=(0,1+ep)--(Max,1+ep)--(Max,1-ep)--(0,1-ep)--cycle;
fill(p,lightblue+opacity(0.15));
xtick("$N$",N(ep),orange);
for(int j=1; j<=N(ep); ++j){
	dot((j,f(j)));
	}
for(int j=N(ep)+1; j<=Max; ++j){
	dot((j,f(j)),orange);
	}

label("\large $\lim s_n=s$",(50,2.0));

xaxis("$n$",0,100,red,RightTicks(new real[]{0,20,40,60,80,100}));
yaxis("$s_n$",0,red,LeftTicks(new real[]{0}));
ytick(Label("$s$",align=E),1,red);

//draw(shift(t*P.x,t*P.y)*scale(1-t)*l,blue,Arrow(Relative(0.18)));
//label("$C$",shift(t*P.x,t*P.y)*scale(1-t)*(3.5,1),E,fontsize(8));
//label("$R$",(0.7,3.3),fontsize(8));
//if(j==0){label("(click)",(2.25,1.25),fontsize(5));} else{}
  A.add();
  restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
