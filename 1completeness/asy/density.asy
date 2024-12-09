settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

scale(Broken(1.5,7));

real a=0.74;
real b=0.92;
real n=10;

xaxis(-0.5,11.5,red,RightTicks(new real[]{0}));

label(rotate(90)*Break,(1.5,point(S).y));

xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
xtick(Label("$an$",align=S),a*n,S,blue);
xtick(Label("$bn$",align=S),b*n,S,blue);
dot(Label("$k$",align=N),n+1-5.5,S,deepgreen);
dot(Label("$m$",align=N),8-5.5,S,deepgreen);
dot(Label("$\frac mn$",align=N),8/10,N,purple);

pair j1=(8-5.5,0);
pair j2=(9-5.5,0);
pair j3=(10-5.5,0);
pair j4=(11-5.5,0);
dot(j2,deepgreen);
dot(j3,deepgreen);

pair j=(19/2-5.5,0.25);
label("$J$",j,deepgreen);

draw(0.9j+0.1j1--0.15j+0.85j1,deepgreen,Arrow);
draw(0.8j+0.2j2--0.15j+0.85j2,deepgreen,Arrow);
draw(0.8j+0.2j3--0.15j+0.85j3,deepgreen,Arrow);
draw(0.9j+0.1j4--0.15j+0.85j4,deepgreen,Arrow);

draw((1,-0.3)..(1.9,-0.4)..(2.8,-0.3),dashed+blue,Arrow);
draw((2.4,0.1)..(1.65,0.25)..(0.95,0.1),dashed+heavymagenta,Arrow);