settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(380,220,IgnoreAspect);

dotfactor=8;

real f(real n){return 6+5*(-4/5)^(n)+(-1)^n;}

int Max=25;
//real[] M=sequence(f,120);

//for(int j=0; j<=Max+20; ++j){
//	M.push(f(j));
//	}


dot((1,f(1)),red);
	
for(int j=2; j<=Max; ++j){
	real[] a=sequence(j,Max+20);
	real M=max(map(f,a));
	real m=min(map(f,a));
	dot((j,f(j)),red);
	dot((j-1,M),blue,NoFill);
	dot((j-1,m),deepgreen+linewidth(0.6),NoFill);
	}
	
draw((0,7)--(Max,7),blue+dashed);
draw((0,5)--(Max,5),darkgreen+dashed);
	
ytick(Label("$\limsup s_n=7$",align=W),7,W,blue);
ytick(Label("$\liminf s_n=5$",align=W),5,W,deepgreen);

xaxis(0,Max,red,RightTicks(new real[]{0,10,20}));
yaxis(0,12,red,LeftTicks(new real[]{0,6}));
labely("$s_n$",11.5,W,red);
labely("$u_N$",2.5,W,deepgreen);
labely("$v_N$",10.5,W,blue);
labelx("$n/N$",Max-1,S,red);

xtick(Label("$3$",align=S),3,S,deepgreen);
xtick(Label("$7$",align=S),7,S,blue);
draw(reflect((0,0),(1,0))*brace((4,1.8),(Max,1.8),0.5),deepgreen);
label("$u_3=\inf\{s_n:n>3\}$",(4+(Max-4)/2,-3),deepgreen);
