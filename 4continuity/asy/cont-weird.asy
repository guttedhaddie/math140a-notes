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

size(200);

dotfactor=4;

real f(real x){return sqrt(x)*cos(1/(x^2));}

path p=graph(f,0.0025,0.005)..graph(f,0.005,0.01)..graph(f,0.01,0.02)..graph(f,0.02,0.04)..graph(f,0.04,0.08)..graph(f,0.08,0.16)..graph(f,0.16,0.32)..graph(f,0.32,0.64)..graph(f,0.64,1.28);

draw(reflect((0,0),(0,1))*reverse(p)..p,blue);

xaxis("$x$",red,RightTicks(new real[]{-2,-1,1,2}));
yaxis("$f(x)$",red,LeftTicks(new real[]{-1,1}));