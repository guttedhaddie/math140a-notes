if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(230,150,IgnoreAspect);

dotfactor=4;

real f(real n){return 4+sin(n/2)+4*exp(-n/20)*cos(n/2);}

int Max=50;
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
	dot((j-1,m),darkgreen,NoFill);
	}
	
ytick("$\limsup t_n$",5,blue);
ytick("$\liminf t_n$",3,darkgreen);

xaxis("$n$",0,50,red,RightTicks(new real[]{0,20,40,60,80,100}));
yaxis("$t_n$",0,red,LeftTicks(new real[]{0}));
