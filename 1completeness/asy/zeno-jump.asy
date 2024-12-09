settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(260);

real f(int n){return 1-(0.5)^n;}

real amp=0.03;
real ht=0.04;

draw(Label("$\frac 12$",align=N),brace((f(0),ht),(f(1),ht),amp));
draw(Label("$\frac 1{2^2}$",align=N),brace((f(1),ht),(f(2),ht),amp));
draw(Label("$\frac 1{2^3}$",align=N),brace((f(2),ht),(f(3),ht),amp));
draw(Label("$\frac 1{2^4}$",align=N),brace((f(3),ht),(f(4),ht),amp));

label("$\cdots$",(0.975,0.115));

xaxis(0,1,red);

xtick(1,red);

for(int i=0; i<=20; ++i){
	xtick(1-(1/2)^i,red);
}

labelx("$0$",0,S,red);
labelx("$1$",1,S,red);
labelx("$\frac 12$",0.5,S,red);
labelx("$\frac 34$",0.75,S,red);
labelx("$\cdots$",0.875,S,red);