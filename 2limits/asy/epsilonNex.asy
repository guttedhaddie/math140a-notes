settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,110,IgnoreAspect);

real N(real x){return 7+22/x;}
real M(real x){return max(14,44/x);}


//for(int i=3; i<=100; ++i){
	//dot((i/100,M(i/100)),heavygreen);
	//dot((i/100,N(i/100)),blue);
	//}
	
draw(graph(N,0.05,5),blue+linewidth(1));
draw(graph(M,0.07,5),heavygreen+linewidth(1));

clip(box((0,0),(5,130)));

label("$N_1=7+\frac{22}{\epsilon}$",(3,100),blue);
label("$N_2=\max\left(14,\frac{44}{\epsilon}\right)$",(3,65),heavygreen);




xaxis(0,5.35,red,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis(0,red,LeftTicks(new real[]{0,200,300}));

labelx("$\epsilon$",5.27,S,red);
labely("$N$",125,2W,red);