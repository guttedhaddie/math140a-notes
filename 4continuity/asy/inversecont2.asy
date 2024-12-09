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

size(220,180,IgnoreAspect);

//dotfactor=8;

real f(real x){return (x-1.5)^1.5+1.2;}
real g(real x){return x^2;}

path p=graph(g,0.7,1,operator..)--graph(f,1.8,3,operator..);

real a=3;
real b=f(a);
real ame0=1.4;
real ame=2;
real finy=2.57;
real y=f(finy);

draw(p,blue);
dot((a,b),red);
dot((ame,f(ame)),red);
dot((finy,y),red);

xaxis("$x$",0,3.5,red);
yaxis(0,b+0.2,red);
label(rotate(90,(0,0))*"$f(x)$",(-0.8,b+0.0),red);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$a-\epsilon_0$",align=N),ame0,N,red);
xtick(Label("$a-\epsilon$",align=S),ame,S,red);
xtick(Label("$f^{-1}(y)$",align=N),finy,N,red);
ytick(Label("$b$",align=W),b,W,red);
ytick(Label("$f(a-\epsilon)$",align=W),f(ame),W,red);
ytick(Label("$y$",align=W),y,W,red);

draw("$A$",(0.7,0)--(a,0),heavygreen+linewidth(1));
draw("$B$",(0,g(0.7))--(0,b),heavygreen+linewidth(1));

real v=(b+f(ame))/2;
label("$\delta$",(0.4,v),red);
draw((0.4,v+0.15)--(0.4,b),red,Arrow);
draw((0.4,v-0.15)--(0.4,f(ame)),red,Arrow);
real h=(a+ame)/2;
label("$\epsilon$",(h,1),red);
draw((h+0.12,1)--(a,1),red,Arrow);
draw((h-0.12,1)--(ame,1),red,Arrow);
draw((0,b)--(a,b)--(a,0),red+dashed);
draw((0,f(ame))--(ame,f(ame))--(ame,0),red+dashed);

