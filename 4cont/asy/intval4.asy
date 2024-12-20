settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,110,IgnoreAspect);

real a=2;
real b=9;

dotfactor=8;

real f(real x){return x*(10-x);}

path p=graph(f,a+0.047,b-0.045);


draw("$U$",(a+0.13,0)--(b-0.13,0),N,heavygreen+linewidth(1.5));
draw("$V$",(0,f(b)+0.4)--(0,f(5)),heavygreen+linewidth(1.5));

draw(p,blue+linewidth(1));

dot((a,f(a)),blue,NoFill);
dot((b,f(b)),blue,NoFill);
dot((a,0),heavygreen,NoFill);
dot((b,0),heavygreen,NoFill);
dot((0,f(b)),heavygreen,NoFill);
dot((0,f(5)),heavygreen);

xaxis(0,1.05b,red,RightTicks(new real[]{0,2,4,6,8}));
yaxis(0,25,red,LeftTicks(new real[]{0,5,10,15,20,25}));