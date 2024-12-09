settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,160,IgnoreAspect);

dotfactor=8;

real f(real n){return 6+(-1)^n*(1+5/n);}

int Max=16;

dot((1,f(1)),red);
	
for(int j=2; j<=Max+1; ++j){
	real[] a=sequence(j,Max+20);
	real M=max(map(f,a));
	real m=min(map(f,a));
	dot((j,f(j)),red);
	dot((j-1,M),blue,NoFill);
	dot((j-1,m),deepgreen+linewidth(0.6),NoFill);
	}
	
clip(box((0,-10),(Max+0.5,20)));
	
draw((0,7)--(Max,7),blue+dashed);
draw((0,5)--(Max,5),darkgreen+dashed);
	
ytick(Label("$7$",align=W),7,W,blue);
ytick(Label("$5$",align=W),5,W,deepgreen);

xaxis(0,Max,red,RightTicks(new real[]{0,10,20}));
yaxis(0,12,red,LeftTicks(new real[]{0}));
labely("$s_n$",11.5,W,red);
labely("$u_N$",2.5,W,deepgreen);
labely("$v_N$",10.5,W,blue);
labelx("$n/N$",Max-1,S,red);

xtick(Label("$3$",align=S),3,S,deepgreen);
xtick(Label("$7$",align=S),7,S,blue);
draw(reflect((0,0),(1,0))*brace((4,2),(Max,2),0.5),deepgreen);
label("$u_3=\inf\{s_n:n>3\}$",(4+(Max-4)/2,-3.3),deepgreen);
