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

size(320);

dotfactor=4;

real f(real x){return 1+4/x;}
real Min=1;
real Max=5;

draw(graph(f,Min,Max),blue);


real a=3;
real ep=0.49;
real de(real x){return 1.4ep;}
ytick("$f(a)+\epsilon$",f(a)+ep,blue);
ytick("$f(a)-\epsilon$",f(a)-ep,blue);
xtick(Label("$a-\delta$",align=S),a-de(a),S,heavygreen);
xtick(Label("$a+\delta$",align=S),a+de(a),S,heavygreen);
xtick(Label("$a$",align=S),a,S,red);
path r=box((0,f(a)-ep),(Max,f(a)+ep));
fill(r,lightblue+opacity(0.2));
path q=graph(f,a-de(a),a+de(a));
path p=(a-de(a),0)--(a-de(a),f(a+de(a)))--(0,f(a+de(a)))--(0,f(a-de(a)))--q--(a+de(a),0)--cycle;
fill(p,heavygreen+opacity(0.2));
draw(q,heavygreen+linewidth(1.5));


xaxis("$x$",0,Max,red,RightTicks(new real[]{0}));
yaxis("$f(x)$",0,f(Min),red,LeftTicks(new real[]{0}));

label("To force $f(x)$ to live \textcolor{blue}{here}\ldots",(Max-1,4));
label("\parbox{100pt}{\centering \ldots\ it is enough for $x$\\ to live \textcolor{Green}{here}}",(1.15,1));

pair CC=(Max+0.3,f(a)+0.5);
path ar=CC+(0,1)--arc(CC,0.5,30,-90,CW);

label("$\left.\rule{0pt}{23pt}\right\}$",(Max+0.1,f(a)),blue);
draw(ar,blue,Arrow);

draw((1.9,0.8){E}..a+0.3dir(100),heavygreen,Arrow);
label(rotate(90)*Label("$\left.\rule{0pt}{36pt}\right\}$"),(a,0.15),heavygreen);
