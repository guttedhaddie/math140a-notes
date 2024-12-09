settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(380,130,IgnoreAspect);

dotfactor=4;

real f(real n){return 7/n;}

int Max=19;

real ep=1;
//ytick("$s+\epsilon$",2+ep,blue);
//ytick("$s-\epsilon$",2-ep,blue);
path p=(0,2+ep)--(Max,2+ep)--(Max,2-ep)--(0,2-ep)--cycle;
fill(p,lightblue+opacity(0.2));
//("$N$",14,orange);
for(int j=1; j<=7; ++j){
	dot((j,f(j)),blue);
	}
for(int j=7+1; j<=Max; ++j){
	dot((j,f(j)),orange);
	}

xaxis(0,Max,red,RightTicks(new real[]{0,5,10,15}));
yaxis("$s_n$",0,7,red,LeftTicks(new real[]{0,4,6}));
ytick(Label("$s=2$",align=W),2,W,red);
ytick(Label("$s+\epsilon$",align=W),3,W,blue);
ytick(Label("$s-\epsilon$",align=W),1,W,blue);
labelx("$n$",Max,S,red);


label("\parbox{6.5cm}{Every \textcolor{orange}{tail} of the sequence contains\\ elements $\textcolor{orange}{s_n}$ that do \emph{not} lie \textcolor{blue}{here}}",(Max/2+1,4.9));

path ar=shift(Max+0.5,3.2)*xscale(2)*yscale(2)*reverse(arc((0,0),0.6,-90,90));

path p=brace((0,0),(2,0),0.3);
draw(shift((Max+0.1,3))*rotate(-90,(0,0))*p,linewidth(1)+blue);

draw((15,4.4){E}--(Max+0.5,4.4){E}--ar,blue,ArcArrow);

//draw((4.2,4.25)..(10,0.5)..(14-0.4,-0.4),orange,Arrow);
