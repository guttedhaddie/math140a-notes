settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(240,180,IgnoreAspect);

dotfactor=4;

real m=0;
real c=2;
real M=3.2;
real sh=0.03;

real ep=0.42;
real de=0.45;

real f(real x){return 3.5-sqrt(x);}
real g(real x){return 0.35(x-4)^2+0.1;}



draw(graph(f,m,c),blue+linewidth(1));
draw(graph(g,c+sh,M),blue+linewidth(1));
dotfactor=10;
dot((c,g(c)),blue,NoFill);
dot((c,f(c)),blue);

xtick(Label("$a+\delta$",align=S),c+de,S,heavygreen);
xtick(Label("$a-\delta$",align=S),c-de,S,heavygreen);
ytick(Label("$f(a)+\epsilon$",align=W),f(c)+ep,W,magenta);
ytick(Label("$f(a)-\epsilon$",align=W),f(c)-ep,W,magenta);

path p=box((0,f(c)-ep),(M-1,f(c)+ep));
fill(p,magenta+opacity(0.1));

path q=(0,g(c))--graph(g,c,c+de)--(c+de,0)--(c-de,0)--(c-de,g(c+de))--(0,g(c+de))--cycle;
fill(q,lightgreen+opacity(0.4));
path r=(0,f(c-de))--graph(f,c-de,c)--(c,g(c))--(c-de,g(c))--(c-de,f(c))--(0,f(c))--cycle;
fill(r,lightgreen+opacity(0.4));

dot((c,f(c)),blue);
draw(graph(f,c-de,c),green);
dot((c,g(c)),blue,Fill(white));
draw(graph(g,c,c+de),green);

ytick(Label("$f(a)$",align=W),f(c),W,red);

xaxis(0,red);
yaxis(0,red);
xtick(Label("$a$",align=S),c,S,red);
xtick(Label("$x$",align=N),c+0.3,N,heavygreen+linewidth(1));
ytick(Label("$f(x)$",align=W),g(c+0.3),W,heavygreen);

label("\parbox{125pt}{Regardless of $\delta$, there is always some \textcolor{Green}{$x$ here}\ldots}",(1.9,3.1));

label("\parbox[l]{100pt}{\ldots\ so that \textcolor{Green}{$f(x)$}\\ does not live \textcolor{Magenta}{here}}",(0.9,0.65));

draw((1.7,0.45){dir(15)}..(M-0.8,f(c)-0.01){dir(165)},magenta,Arrow);
draw((2.53,2.8){dir(-60)}..(c+0.4,0.4){dir(230)},heavygreen,Arrow);

draw(brace((c-de,0.05),(c+de,0.05),0.12),heavygreen+linewidth(1));
draw(shift((M-0.97,f(c)))*rotate(-90,(0,0))*brace((-ep,0),(ep,0),0.12),magenta+linewidth(1));