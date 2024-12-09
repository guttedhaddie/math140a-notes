settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

scale(Broken(0.1,0.9));

xaxis(-0.05,sqrt(2)+0.1,red,RightTicks(new real[]{0,1}));
xtick(Label("$x$",align=S),1.3,S,red);
xtick(Label("$\sqrt{2}$",align=S),sqrt(2),S,red);
xtick(Label("$s_0$",align=N),1,N,blue);
xtick(Label("$s_{N-1}$",align=N),1.25,N,blue);
xtick(Label("$s_N$",align=N),sqrt(2)-(sqrt(2)-1.25)/10,N,blue);

label(rotate(90)*Break,(0.1,point(S).y));
//label(rotate(90)*Break,(0.3,point(S).y));

path br=brace((0.01,0),(0.1,0),0.01);
draw(Label("$10^{-N}$",align=S),shift((sqrt(2)-0.9,-0.05))*reflect((0,0),(1,0))*br);




