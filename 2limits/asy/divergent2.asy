settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400,180,IgnoreAspect);

dotfactor=4;

real f(int n){return (-1)^n;}

int Max=22;

real ep=1;
real s=0.6;
ytick("$s+\epsilon$",s+ep,blue);
ytick("$s-\epsilon$",s-ep,blue);
path p=(0,s+ep)--(Max,s+ep)--(Max,s-ep)--(0,s-ep)--cycle;
fill(p,lightblue+opacity(0.2));
xtick("$N$",14,orange);
for(int j=1; j<=Max/2; ++j){
	dot((2j,1),blue);
	}
for(int j=1; j<=14/2; ++j){
	dot((2j-1,-1),blue);
	}
for(int j=8; j<=Max/2; ++j){
	dot((2j-1,-1),orange);
	}

xaxis(0,22,red,RightTicks(new real[]{10,20}));
yaxis("$s_n$",-1.5,3,red,LeftTicks(new real[]{-1,1,2}));
ytick("$s$",s,blue);
labelx("$n$",22,S,red);

label("\parbox{5.5cm}{Regardless of $N$, every tail\\ of the sequence after \textcolor{orange}{here}\ldots}",(6,3-0.4));

label("\parbox{5cm}{\ldots contains some elements $s_n$ that do \emph{not} lie \textcolor{blue}{here}}",(17,2.75-0.4));

path ar=shift(23.5,1.75-0.4)*xscale(2)*yscale(1.5)*reverse(arc((0,0),0.5,-90,90));

label("$\left.\rule{0pt}{40pt}\right\}$",(23.2,1-0.4),blue);
draw((20,2.5-0.4){E}--(23.5,2.5-0.4){E}--ar,blue,ArcArrow);

draw((9,2.2)..(11,0.5)..(14-0.4,-0.3),orange,Arrow);
