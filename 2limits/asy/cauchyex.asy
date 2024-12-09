settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,110,IgnoreAspect);

dotfactor=6;

real f(real ss,int n){return ss+(1/3)^n;}
real g(real ss,int n){return ss-(1/2)^n;}

int Max=16;

dot((0,1),blue);

real[] s={1};
	
for(int n=0; n<Max; ++n){
	if(n%2 == 0){
		s.push(f(s[n],n));
		}
	else{
		s.push(g(s[n],n));
		}
	dot((n+1,s[n+1]),blue);
	write(s[n]);
	}
	

xaxis(0,Max,red,RightTicks(new real[]{0,2,4,6,8,10,12,14}));
yaxis(0,2.3,red,LeftTicks(new real[]{0,1,2}));

labelx("$n$",Max-0.5,S,red);
labely("$s_n$",2.3,W,red);
