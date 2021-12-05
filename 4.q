x:read0`:4.txt;
board:"J"$"," vs first x;
bg:(1_) each 6 cut except[;0N] each "J"$" " vs/: 1_x;
fn:{any each (all each x) or all each/: x};
s:{'string y*(sum/)prd@[x;1;not]}
args:((bg;0N=bg);board);

// Part 1
p1:.[{[fn;s;bg;bd]
  bg[1]|:bg[0]=bd;
  if[count w:where fn bg 1; s[bg[;w];bd]]; 
  bg
 }[fn;s]/[;];args;"J"$];

// Part 2
p2:.[{[fn;s;bg;bd] 
  bg[1]|:bg[0]=bd;
  $[1<=count w:where not fn b:bg 1;
    if[(count w)<>count b; bg:bg[;w]];
    if[count w:where fn b; s[bg;bd]]
  ];
  bg
 }[fn;s]/[;];args;"J"$];
