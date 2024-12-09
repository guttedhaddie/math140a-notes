settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,100,IgnoreAspect);
dotfactor=3;

for(int j=0; j>-4; --j){
	label("$1$",(0,j));
	label("$\frac 12$",(1,j));
	label("$\frac 13$",(2,j));
	label("$\frac 14$",(3,j));
	label("$\frac 15$",(4,j));
	label("$\cdots$",(5,j));
	}

for(int j=0; j<5; ++j){
	label("$\vdots$",(j,-4));
	}
	
draw(arc((0.5,0),0.5,135,45),EndArrow);
draw(arc((2.5,0),0.5,135,45),EndArrow);
draw(arc((0,-1.5),0.5,135,225),EndArrow);
draw(arc((0,-3.5),0.5,135,225),EndArrow);
draw(shift((-0.2,-0.2))*(1,0)--shift((0.2,0.2))*(0,-1),EndArrow);
draw(shift((0.2,0.2))*(0,-2)--shift((-0.2,-0.2))*(1,-1),EndArrow);
draw(shift((0.2,0.2))*(1,-1)--shift((-0.2,-0.2))*(2,0),EndArrow);
draw(shift((-0.2,-0.2))*(3,0)--shift((0.2,0.2))*(2,-1),EndArrow);
draw(shift((-0.2,-0.2))*(2,-1)--shift((0.2,0.2))*(1,-2),EndArrow);
draw(shift((-0.2,-0.2))*(1,-2)--shift((0.2,0.2))*(0,-3),EndArrow);
