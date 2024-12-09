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

size(110,140,IgnoreAspect);

dotfactor=8;

real f(real x){return x^3-3*x;}

path p=graph(f,-sqrt(3),sqrt(3),operator..);

draw(p,blue);
dot((-sqrt(3),0),blue);
dot((sqrt(3),0),blue);
dot((-1,2),heavygreen);
dot((1,-2),heavygreen);

xaxis(-1.8,1.8,red,RightTicks(new real[]{-1,1}));
yaxis(-2.1,2.1,red,LeftTicks(new real[]{-2,-1,1,2}));