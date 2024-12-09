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

size(180);

real x=35;

real sh=0.002;
draw("$\cos x$", (0,0)--(Cos(x),0),S,orange);
draw("$\sin x$", (Cos(x),0)--(Cos(x),Sin(x)),W,blue);
//draw("$\tan x$", (1,0)--(1,Tan(x)),E,red);
draw("$1$", (0,0)--dir(x),dir(x+90));
real d=0.03;
draw((Cos(x)-d,0)--(Cos(x)-d,d)--(Cos(x),d));

//draw((Cos(x),0)--arc((0,0),1,0,x)--(1,Tan(x)));
draw("$x$",arc((0,0),0.1,0,x));
draw("$x$",arc((0,0),1,0,x),heavygreen);
draw(dir(x)--(1,0),dashed);
draw("$\frac x2$",arc(dir(x),0.15,-90,-90+x/2));

draw("$1-\cos x$",(Cos(x),0)--(1,0),red);




