settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,140,IgnoreAspect);

real sh=-0.4;
transform T=shift((sh,0));


real f(real x){return (x-1.5)^1.5+1.2;}
real finv(real y){return (y-1.2)^(2/3)+1.5;}
real g(real x){return x^2;}
real h(real x){return f(1.8)*(x-1)/0.8-g(1)*(x-1.8)/0.8;}

path p=graph(g,0.6,1,operator..)--graph(f,1.8,2.7,operator..);


real a=1.7;
real b=h(a);
real ep=0.8;
real del=min(b-g(a-ep),b+f(a+ep));

draw(T*p,blue+linewidth(1));
dot(T*(a,b),red);

//draw(Label("$2\epsilon$",align=S),brace((a+ep,-0.1),(a-ep,-0.1)),heavygreen);
draw(T*(a-ep,0)--T*(a-ep,g(a-ep))--(0,g(a-ep)),dashed+0.7brown+0.3white);
draw(T*(a+ep,0)--T*(a+ep,f(a+ep))--(0,f(a+ep)),dashed+Magenta);
draw(T*(finv(b+del),0)--T*(finv(b+del),b+del)--(0,b+del),dashed+heavygreen);

xaxis(0,red);
yaxis(0,red);
//label(rotate(90,(0,0))*"$f(x)$",(-0.8,b+0.0),red);
xtick(Label("$a$",align=S),a+sh,S,red);
xtick(Label("$a+\epsilon$",align=S),a+ep+sh,S,Magenta);
xtick(Label("$a-\epsilon$",align=S),a-ep+sh,S,0.7brown+0.3white);
ytick(Label("$b$",align=W),b,W,red);
ytick(Label("$f(a+\epsilon)$",align=W),f(a+ep),W,Magenta);
ytick(Label("$b+\delta$",align=W),b+del,W,heavygreen);
//ytick(Label("$b-\delta$",align=W),b-del,W,0.7brown+0.3white);
ytick(Label("$\begin{array}{@{}c@{}}b-\delta\\[-5pt]\text{\scalebox{0.7}{$\parallel$}}\\[-2pt]f(a-\epsilon)\end{array}$",align=W),b-del,W,0.7brown+0.3white);


