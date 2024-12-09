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

size(240);

xaxis("$x$",-1.1,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));


int n=5;
real a=-1/(n-1);
real b=1/(n-1);
real bl(real i){return 1-a-b*i;}
real gr(real i){return a+b*i;}



//draw((1.8,0)--(2.5,0),green);
label("$p=\infty$",(1.75,0),W,green);
filldraw(shift((-1,-1))*scale(2)*unitsquare,green+opacity(0.7),green+dashed);

for(int i=n-1; i>=1; --i){
pair F(real t){return ((cos(t))^(2/i),(sin(t))^(2/i));}
path P=graph(F,0,pi/2);
filldraw(P--rotate(90,(0,0))*P--rotate(180,(0,0))*P--rotate(270,(0,0))*P--cycle,rgb(0,gr(i),bl(i))+opacity(0.7),rgb(0,gr(i),bl(i))+dashed);
//draw((1.8,bl(i))--(2.5,bl(i)),rgb(0,gr(i),bl(i)));
label("$p="+(string)i+"$",(1.75,bl(i)),W,rgb(0,gr(i),bl(i)));
}
