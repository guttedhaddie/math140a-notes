settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,160,IgnoreAspect);

real f(real x){return 1/(x^0.85);}

path p=graph(f,1,11.5);


dotfactor=6;

xaxis(0,11.5,red,RightTicks(new real[]{0,1,2,3,4,5,6}));
yaxis("$f(x)$",0,1.05,red,LeftTicks(new real[]{0}));

labelx("$x$",11.3,S,red);
//xtick(Label("$n-1$",align=S),9,S,red);
xtick(Label("$n$",align=S),10,S,red);
//xtick(Label("$n+1$",align=S),11,S,red);
ytick(Label("$a_1$",align=W),f(1),W,red);
ytick(Label("$a_2$",align=W),f(2),W,red);
ytick(Label("$a_3$",align=W),f(3),W,red);
ytick(Label("$a_4$",align=W),f(4),W,red);
ytick(Label("$a_5$",align=W),f(5),W,red);

for(int i=1; i<=5; ++i){
	filldraw(box((i,0),(i+1,f(i))),lightblue+opacity(0.4));
	filldraw(box((i,0),(i+1,f(i+1))),green+opacity(0.4));
	}
	
	filldraw(box((9,0),(9+1,f(9))),lightblue+opacity(0.4));
	filldraw(box((10,0),(10+1,f(10))),lightblue+opacity(0.4));
filldraw(box((9,0),(9+1,f(9+1))),green+opacity(0.4));

draw(p,blue+linewidth(1));

for(int n=1; n<=5; ++n){
	dot((n,f(n)),blue);
	}
dot((9,f(9)),blue);
dot((10,f(10)),blue);