settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,240,IgnoreAspect);

picture bot;

real f(real x){return 1/(x*(x-2));}

real r=0.2;
real M=f(-r);
real m=f(r);

draw(bot,reflect((0,0),(1,1))*graph(f,1,2-r),blue);
draw(bot,reflect((0,0),(1,1))*graph(f,2+r,4),blue);
dot(bot,(f(1),1),blue);

yaxis(bot,"$\hat f^{-1}(y)$",0,4,red,LeftTicks(new real[]{-1,1,2,3}));
xaxis(bot,m,M,red,RightTicks(new real[]{-2,-1,0,1,2}));
labelx(bot,"$y$",1.09M,red);

real d=0.07;
dotfactor=10;
pen pen=heavygreen+linewidth(1.2);
dot(bot,(0,1),heavygreen);
draw(bot,(0,2-d)--(0,1),pen);
dot(bot,(0,2),heavygreen,NoFill);
draw(bot,(0,2+d)--(0,4),pen);

draw(bot,(d,0)--(M,0),brown+linewidth(1.2));
draw(bot,(-1,0)--(m,0),brown+linewidth(1.2));
dot(bot,(-1,0),brown);
dot(bot,(0,0),brown,NoFill);


draw(graph(f,-2,-r),blue);
draw(graph(f,r,2-r),blue);
draw(graph(f,2+r,4),blue);

xaxis(-2,4,red,RightTicks(new real[]{-1,1,2,3}));
yaxis("$f(x)$",m,M,red,LeftTicks(new real[]{-2,-1,1,2}));
labelx("$x$",3.8,red);

real d=0.07;
dotfactor=10;
pen pen=heavygreen+linewidth(1.2);
draw((-2,0)--(-d,0),pen);
dot((0,0),heavygreen,NoFill);
draw((2-d,0)--(d,0),pen);
dot((2,0),heavygreen,NoFill);
draw((2+d,0)--(4,0),pen);

draw((0,d)--(0,M),brown+linewidth(1.2));
draw((0,-1)--(0,m),brown+linewidth(1.2));
dot((0,-1),brown);

draw(box((1,m),(4,M)),dashed+orange);
draw((2.5,-2.3){dir(300)}..(2.5,-3.7){dir(240)},orange,Arrow);

add(shift((1,-7.5))*bot);