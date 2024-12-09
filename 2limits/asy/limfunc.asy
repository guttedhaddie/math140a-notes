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

size(300);

xaxis("$x$",0,1.2,red,RightTicks(new real[]{0,1}));
yaxis("$f_n$",0,1,red,LeftTicks(new real[]{0,1}));

//draw((0,0)--(1,1),blue);
draw("$n=1$",(1.8,1),W,blue);
draw("$n=10$",(1.8,0),W,green);

int n=10;
real a=-1/(n-1);
real b=1/(n-1);
real bl(real i){return 1-a-b*i;}
real gr(real i){return a+b*i;}

for(int i=1; i<=n; ++i){
real f(real x){return x^(i);}
draw(graph(f,0,1),rgb(0,gr(i),bl(i)));
draw((1.8,bl(i))--(2.5,bl(i)),rgb(0,gr(i),bl(i)));
}

dot((0.88,0.12));
dot((0.92,0.08));
dot((0.96,0.04));
dot((0.96,0.04));
