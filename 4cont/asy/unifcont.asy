settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,160,IgnoreAspect);

dotfactor=4;

real f(real x){return x^2;}
real Min=0;
real Max=2.1;

draw(graph(f,Min,Max),blue+linewidth(1));


real[] a={0.7,1.3,2};

real ep=0.35;
real de=0.11;

for(int i=1; i<=3; ++i){
	//label(rotate(90)*Label("$)$"),(0,f(a[i-1])+ep),magenta);
	//label(rotate(90)*Label("$($"),(0,f(a[i-1])-ep),magenta);
	ytick(Label("$a^2_"+(string)i+"$",align=W),f(a[i-1]),W,magenta);
	draw((0,f(a[i-1])-0.9ep)--(0,f(a[i-1])+0.9ep),magenta+linewidth(2));
	path r=box((0,f(a[i-1])-ep),(Max,f(a[i-1])+ep));
	//fill(r,lightblue+opacity(0.2));
	//label(Label("$)$"),(a[i-1]+0.9de,0),heavygreen);
	//label(Label("$($"),(a[i-1]-de,0),heavygreen);
	xtick(Label("$a_"+(string)i+"$",align=S),a[i-1],S,heavygreen);
	draw((a[i-1]-0.9de,0)--(a[i-1]+0.9de,0),heavygreen+linewidth(2));
	path q=graph(f,a[i-1]-de,a[i-1]+de);
	path p=(a[i-1]-de,0)--(a[i-1]-de,f(a[i-1]-de))--(0,f(a[i-1]-de))--(0,f(a[i-1]+de))--(a[i-1]+de,f(a[i-1]+de))--(a[i-1]+de,0)--cycle;
fill(p,heavygreen+opacity(0.2));
//draw(q,heavygreen+linewidth(2));
	}
	
	
//	label(rotate(90)*Label("$)$"),(0,f(a[2])+ep),magenta);
//	label(rotate(90)*Label("$($"),(0,f(a[2])-ep),magenta);
//	ytick(Label("$a^2_3$",align=W),f(a[2]),W,magenta);

xaxis(0,Max+0.1,red,RightTicks(new real[]{0}));
yaxis(0,f(Max)+0.1,red,LeftTicks(new real[]{0}));