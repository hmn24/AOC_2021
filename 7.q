x:"J"$"," vs first read0 `:7.txt;

// Part 1
y:abs x-/:til 1+max x;
f1:min sum each ::;
p1:f1 y;

// Alternative Part 1 - Less memory intensive
z:til 1+max x;
p1a:{y&sum abs x-z}[x]/[0W;z];

// Part 2
f2:{sum 1+til x}'';
p2:f1 f2 y;

// Alternative Part 2 - Less memory intensive
p2a:{y&sum(sum 1+til ::)each abs x-z}[x]/[0W;z];
