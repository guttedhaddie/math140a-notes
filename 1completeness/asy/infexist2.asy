settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

draw((1.01,0)--(2,0),blue+linewidth(3));

label("$S$",(1.5,-0.2),blue);

draw((-1.01,0)--(-2,0),heavygreen+linewidth(3));

label("$T$",(-1.5,-0.2),heavygreen);

xaxis(-2.2,2.2,red,RightTicks(new real[]{0}));
xtick(Label("$\inf S=-\sup T$",align=N),1,N,orange);
xtick(Label("$m$",align=S),0.8,S,orange);
xtick(Label("$\sup T$",align=N),-1,N,heavymagenta);
xtick(Label("$-m$",align=S),-0.8,S,heavymagenta);

xtick(Label("$s$",align=S),1.1,S,blue);
xtick(Label("$-s$",align=S),-1.1,S,blue);

draw((1,-0.3)..(0,-0.4)..(-1,-0.3),red+dashed,Arrow);

//label("lower bound?",(1.1,-0.6));
//label("lower bound?",(1.1,-0.6));


