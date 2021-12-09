x:"J"$''read0 `:9.txt;

// Part 1
idx:(-1 0;0 -1;1 0;0 1);
f1:{(x . y)<min x ./: y+/:idx}[x];
i:{$[f1 y;x,enlist y;x]}/[();(cross).(til count@)each(x;first x)];
p1:sum 1+x ./:i;

// Part 2
f2:{f where(0<v-x . y)and 9>v:x ./: f:y+/:idx};
p2:prd 3#desc(count distinct raze (raze f2[x] each) scan enlist ::) each i;
