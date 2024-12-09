settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

draw((1.01,0)--(2,0),heavygreen+linewidth(3));

label("$S$",(1.5,-0.2),heavygreen);

draw((-1.01,0)--(-2,0),heavygreen+linewidth(3));

label("$T$",(-1.5,-0.2),heavygreen);

xaxis(-2.2,2.2,red,RightTicks(new real[]{0}));
xtick(Label("$\inf S=-\sup T$",align=N),1,N,red);
xtick(Label("$m$",align=S),0.8,S,blue);
xtick(Label("$\sup T$",align=N),-1,N,red);
xtick(Label("$-m$",align=S),-0.8,S,blue);


