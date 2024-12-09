settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(230,160,IgnoreAspect);

dotfactor=7;

real m=0;
real c=1;
real M=3;
real sh=0.03;

real f(real x){return 1+4/(x^2);}
real Min=0.9;
real Max=3.5;


draw(graph(f,Min,Max),blue+linewidth(1));


int n=50;
for(int i=1; i<=n; ++i){
	if(i<3){xtick(Label("$x_{"+(string) i+"}$",align=S),c+2/i,S,red);}
	if(i>=3){xtick(c+2/i,S,red);}
	xtick(c+2/(5i),S,red);
	dot((c+2/i,f(c+2/i)),linewidth(2)+red);
	dot((c+2/(5i),f(c+2/(5i))),linewidth(2)+red);
	if(i<3){ytick(Label("$f(x_{"+(string) i+"})$",align=W),f(c+2/i),W,magenta);}
	if(i>=3){ytick(f(c+2/i),W,magenta);}
	ytick(f(c+2/(7i)),W,magenta);
	}
	
dot("$(a,f(a))$",(c,f(c)),NE,heavygreen);

labelx("$\cdots$",c+0.5,red,align=2.2S);
labely("$\vdots$",f(c)-1.2,magenta,align=6W);

labely(Label("$\lim \textcolor{Magenta}{f(x_{n})}$",align=W),f(c),2W);
ytick(f(c),W,heavygreen+linewidth(1));

xaxis(0,red);
yaxis(0,red);
xtick(Label("$a$",align=S),c,S,heavygreen+linewidth(1));

