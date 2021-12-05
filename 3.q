// Part 1
x:"1"=read0`:3.txt;
p1:prd 2 sv/: (g;not g:0.5<avg x);

// Part 2
fn:{if[1=count y; :y]; y where $[x;(not;::);(::;not)][0.5<=avg d]d:y[;z]};
p2:prd {[x;b] 2 sv last fn[b]/[x;til count first x]}[x] each 10b;
