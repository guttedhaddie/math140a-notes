settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(380,160,IgnoreAspect);

real N(real x){return 7+22/x;}
real M(real x){return max(14,44/x);}


//for(int i=3; i<=100; ++i){
	//dot((i/100,M(i/100)),heavygreen);
	//dot((i/100,N(i/100)),blue);
	//}
	
draw(graph(N,0.05,5),blue);
draw(graph(M,0.07,5),heavygreen);

clip(box((0,0),(5,130)));

label("$\displaystyle N_1=7+\frac{22}{\epsilon}$",(2.5,100),blue);
label("$\displaystyle N_2=\max\left\{14,\frac{44}{\epsilon}\right\}$",(2.5,65),heavygreen);



xaxis(0,5.15,red,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis("$N$",0,red,LeftTicks(new real[]{0,100,200,300}));

labelx("$\epsilon$",5.15,2S,red);