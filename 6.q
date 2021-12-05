x:"J"$"," vs first read0 `:6.txt;

// Part 1 Slow
fs:count {@[x-1;f;:;6],count[f:where x=0]#8}/[;x]::;
p1s:fs 80;

// Part 1 Fast
f:sum{x:1 rotate x;@[x;6;+;x 8]}/[;@[9#0;x;1+]]::;
p1:f 80;

// Part 2
p2:f 256;