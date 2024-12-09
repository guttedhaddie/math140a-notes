settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,115,IgnoreAspect);

dotfactor=5;

real f(real n){return 0.25+12*exp(-n/4);}
real g(real n){return 3-4*exp(-n/10)-cos(n/2);}

int Max=45;

//dot((1,f(1)),red);
	
for(int j=2; j<=7; ++j){
	dot((j,f(j)),red);
	}

for(int j=8; j<=Max; ++j){
	dot((j,g(j)),red);
	}


//label("dominant terms",(10,8),E,magenta);
label("dominant terms",(6,0.5(f(1)+f(4))+0.15),E,magenta);
draw(brace((5,f(1)),(5,f(4)),1),magenta);

int[] I={1,2,3,4};
for(int i : I){
dot((i,f(i)),magenta+linewidth(3.8));
//draw(0.8*(12.5,8)+0.2*(i,f(i))--0.1*(12.5,8)+0.9*(i,f(i)),magenta,Arrow);
}


int[] J={8,16,21,30,43};
for(int j : J){
dot((j,g(j)),deepgreen+linewidth(3.8));
}
	
xaxis(0,Max,red);
yaxis(0,f(1)+0.2,red);
labelx("$n$",Max-1,S,red);
labely("$s_n$",f(1),W,red);
labely("$s_{n_k}$",0.8f(1),W,deepgreen);




