y:(asc "J"$ "," vs/: " -> " vs) each read0`:5.txt;
x:(2#1+max/[y])#0;

// Part 1
gf:{./[y;x\[not (z 1)~;z 0];1+]};
s:"j"$(sum/)2<=::;
vhfn:{$[any n:(=). y; gf[$[first where n;1 0+;0 1+];x;y]; x]};
p1:s vhfn/[x;y];

// Part 2
dfn:{$[(=). abs (-). y; gf[$[any(>). y;1 -1+;1+];x;y]; x]};
p2:s {dfn[;y] vhfn[;y] x}/[x;y];