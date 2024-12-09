settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,115,IgnoreAspect);

dotfactor=5;

real g(real n){return 0.1+0.45*sqrt(n)*(1+sin(n));}
real g(real n){return 0.5*sqrt(n)*(1+sin(n));}

int Max=32;
	
for(int j=1; j<=Max; ++j){
	dot((j,g(j)),red);
	}

int[] J={2,7,14,20,27};
for(int j : J){
dot((j,g(j)),blue+linewidth(3.8));
write(g(j));
}

for(int j=1; j<=5; ++j){
	xtick(Label("$s_{n_"+(string) j+"}$",align=S),J[j-1],S,blue);
}

	
xaxis(0,Max,red);
yaxis(0,5.9,red,LeftTicks(new real[]{0,1,2,3,4,5,6,7,8}));
labelx("$n$",Max-1,S,red);
labely("$s_n$",6,W,red);
//labely("$s_{n_k}$",0.8,W,deepgreen);




