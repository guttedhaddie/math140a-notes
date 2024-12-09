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

size(400,180,IgnoreAspect);

dotfactor=6;

real f(int n){return 1+((-1)^n)/n;}
real g(int n){return 1/(2n-1);}

int Max=14;

for(int j=1; j<=Max; ++j){
	dot((2j,f(j)),red);
	}
for(int j=1; j<=Max; ++j){
	dot((2j-1,g(j)),red);
	}
	
for(int i=1; i<=Max/2; ++i){
dot((4i,f(2i)),blue+linewidth(0.9),NoFill);
}

for(int i=1; i<=Max; ++i){
dot((2i-1,g(i)),heavygreen+linewidth(0.9),NoFill);
}

xaxis(0,2*Max,red,RightTicks(new real[]{0,10,20,30}));
yaxis(0,2.5,red,LeftTicks(new real[]{0,1,2}));
//ytick("$s$",s,blue);
labelx("$n$",2*Max,S,red);
labely("$s_n$",2.5,W,red);

label("$s_n=\begin{cases}
1+\frac{(-1)^n}{n}&\text{if $n$ even}\\
\frac 1n&\text{if $n$ odd}
\end{cases}$",(12,2));

