// Part 1
x:("SJ";" ") 0: `:2.txt;
p1:prd (sum prd @[x;0;]@) each (`forward=;`up`down!-1 1);

// Part 2
p2:prd 2#{$[`forward=y 0;@[x;0 1;+;(1;x 2)*y 1];@[x;2;$[`up=y 0;-;+];y 1]]}/[3#0;flip x];
