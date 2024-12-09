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

size(400,140,IgnoreAspect);


pair[] E={(-1,1),(0,1),(0,1/2),(1/4,1/2),(3/8,1/2),(3/8,7/16)};
int Max=6;

for(int i=0; i<Max; ++i){
	draw((E[i].x,0)--(E[i].y,0),blue+linewidth(2)+opacity(0.2));
	}

xaxis(-1.1,1.1,red);
labelx("$s_n$",1.1,S,red);

