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
real c=2;
real M=4;
real sh=0.03;

real f(real x){return 8-sqrt(x);}
real g(real x){return 1+(x-4)^2;}

draw(graph(f,m,c),blue);
draw(graph(g,c+sh,M),blue);
//dotfactor=10;
dot((c,g(c)),heavygreen,NoFill);
dot("$(a,f(a))$",(c,f(c)),NE,heavygreen);


int n=50;
for(int i=1; i<=n; ++i){
	if(i<3){xtick(Label("$x_{"+(string) i+"}$",align=S),c+2/i,S,red);}
	if(i>=3){xtick(c+2/i,S,red);}
	xtick(c+2/(5i),S,red);
	dot((c+2/i,g(c+2/i)),linewidth(2)+red);
	dot((c+2/(5i),g(c+2/(5i))),linewidth(2)+red);
	if(i<3){ytick(Label("$f(x_{"+(string) i+"})$",align=W),g(c+2/i),W,magenta);}
	if(i>=3){ytick(g(c+2/i),W,magenta);}
	ytick(g(c+2/(8i)),W,magenta);
	}

labelx("$\cdots$",c+0.5,red,align=2.2S);
labely("$\vdots$",g(c)-1.4,magenta,align=6W);

labely(Label("$\lim \textcolor{Magenta}{f(x_{n})}$",align=W),g(c),2W);
ytick(Label("$f(a)$",align=W),f(c),W,heavygreen+linewidth(1));

xaxis(0,red);
yaxis(0,8.5,red);
xtick(Label("$a$",align=S),c,S,heavygreen+linewidth(1));

