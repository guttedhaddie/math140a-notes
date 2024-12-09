settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(240,180,IgnoreAspect);

dotfactor=4;

real f(real x){return 1+4/x;}
real Min=1;
real Max=5.5;

draw(graph(f,Min,Max),blue+linewidth(1));


real a=3;
real ep=0.51;
real de(real x){return 1.4ep;}
ytick(Label("$f(a)+\epsilon$",align=W),f(a)+ep,W,magenta);
ytick(Label("$f(a)-\epsilon$",align=W),f(a)-ep,W,magenta);
xtick(Label("$a-\delta$",align=S),a-de(a),S,heavygreen);
xtick(Label("$a+\delta$",align=S),a+de(a),S,heavygreen);
xtick(Label("$a$",align=S),a,S,red);
path r=box((0,f(a)-ep),(Max,f(a)+ep));
fill(r,magenta+opacity(0.1));
path q=graph(f,a-de(a),a+de(a));
path p=(a-de(a),0)--(a-de(a),f(a+de(a)))--(0,f(a+de(a)))--(0,f(a-de(a)))--q--(a+de(a),0)--cycle;
fill(p,heavygreen+opacity(0.2));
draw(q,heavygreen+linewidth(2));


xtick(Label("$x$",align=N),a+0.3,N,heavygreen+linewidth(1));
ytick(Label("$f(x)$",align=W),f(a+0.3),W,heavygreen+linewidth(1));

xaxis(0,Max,red);
yaxis(0,f(Min),red);

label("\parbox{100pt}{To force $\textcolor{Green}{f(x)}$\\ to live \textcolor{Magenta}{here}\ldots}",(Max-1,4.5));
label("\parbox{110pt}{\centering\ldots\ it is enough for $\textcolor{Green}{x}$\\ to live \textcolor{Green}{here}}",(2,1.35));

path ar=(4.7,4)--(Max+0.1,3.5)..(Max+0.45,0.5(f(a)+3.5)){S}..(Max+0.1,f(a)){W};

draw(ar,magenta,Arrow);

draw((2.7,0.9){dir(300)}..a+0.3dir(95),heavygreen,Arrow);

draw(brace((a-de(ep),0.05),(a+de(ep),0.05),0.15),heavygreen+linewidth(1));

//label(rotate(90)*Label("$\left.\rule{0pt}{28pt}\right\}$"),(a,0.15),heavygreen);
