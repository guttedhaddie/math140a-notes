if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(350,200,IgnoreAspect);

real f(real x){return 1/(x);}

draw(graph(f,1,11.5),blue);


for(int n=1; n<=6; ++n){
	dot((n,f(n)));
	}
dot((9,f(9)));
dot((10,f(10)));

xaxis("$x$",0,11.5,red,RightTicks(new real[]{1,2,3,4,5,6}));
yaxis("$f(x)$",red,LeftTicks(new real[]{0}));

xtick(Label("$n-1$",align=S),9,S,red);
xtick(Label("$n$",align=S),10,S,red);
xtick(Label("$n+1$",align=S),11,S,red);
ytick(Label("$a_1$",align=W),f(1),W,red);
ytick(Label("$a_2$",align=W),f(2),W,red);
ytick(Label("$a_3$",align=W),f(3),W,red);
ytick(Label("$a_4$",align=W),f(4),W,red);
ytick(Label("$a_5$",align=W),f(5),W,red);

for(int i=1; i<=5; ++i){
	filldraw(box((i,0),(i+1,f(i))),blue+opacity(0.4));
	filldraw(box((i,0),(i+1,f(i+1))),heavygreen+opacity(0.4));
	}
	
	filldraw(box((9,0),(9+1,f(9))),blue+opacity(0.4));
	filldraw(box((10,0),(10+1,f(10))),blue+opacity(0.4));
filldraw(box((9,0),(9+1,f(9+1))),heavygreen+opacity(0.4));