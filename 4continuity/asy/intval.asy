settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(240,120,IgnoreAspect);

real a=0.5;
real b=6.8;
real y=2.8;

path p=(0,0)..(1,1)..(3,3.7)..(4,2)..{NE}(6,3)..(7,3.8);
path p=(a,1.5){dir(70)}..(3,3.7)..(4,2)..(5.3,3)..(6,3.5)..(b,3.3);
draw(p,blue);

draw((0,y)--(b,y),heavygreen+dashed);


xaxis(0,7.1,red);
yaxis(0,red);
ytick(Label("$y$",align=W),y,W,heavygreen);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
pair fa=intersectionpoint(p,(a,0)--(a,5));
ytick(Label("$f(a)$",align=W),fa.y,W,red);
pair fb=intersectionpoint(p,(b,0)--(b,5));
ytick(Label("$f(b)$",align=W),fb.y,W,red);
draw((0,fa.y)--(b,fa.y),red+dashed);
draw((0,fb.y)--(b,fb.y),red+dashed);
draw((b,0)--(b,fb.y),red+dashed);
draw((a,0)--(a,fb.y),red+dashed);

pair[] ff=intersectionpoints(p,(0,y)--(b,y));

for(int i=1; i<=10; ++i){
	xtick((ff[2].x-1/(i^1.5)),S,brown);
	xtick((ff[2].x+1/(i^1.5)),S,magenta);
}
labelx("$s_n\to$",ff[2].x-0.72,2.2S,brown);
labelx("$\leftarrow x_n$",ff[2].x+0.72,2.2S,magenta);

draw((a,0)--(ff[0].x,0),heavygreen+linewidth(2));
draw((ff[1].x,0)--(ff[2].x,0),heavygreen+linewidth(2));
xtick(Label("$\xi$",align=S),ff[2].x,S,heavygreen+linewidth(1));

pair SS=(3,0.7);
label("$S$",SS,heavygreen);
pair sl(real t){return t*(a/2+ff[0].x/2,0)+(1-t)*SS;}
pair sr(real t){return t*(ff[1].x/2+ff[2].x/2,0)+(1-t)*SS;}
draw(sl(0.15)--sl(0.85),heavygreen,Arrow);
draw(sr(0.15)--sr(0.85),heavygreen,Arrow);

