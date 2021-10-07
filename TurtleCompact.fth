0 var x 0 var y 0 var a
0 var q 0 var w

hex create n -2 , F9F2 , E9DD , CEBD ,
AA95 , 7F67 , 4E34 , 1A00 , decimal

: c abs 60 mod dup 29 > if 60 swap - then dup 14 > if -1 30 rot - else 1 swap then n + c@ 1+ * ;
: h dup a ! dup c w ! 45 + c q ! ;
: t a @ + h ;
: f >r dx @ x @ y @ dy @ r 0 do >r r + >r over + dup 8 >> r 8 >> plot r> r> loop drop y ! x ! drop r> drop ;
: j dup q @ * x +! w @ * y +! ;
: k >r 80 + 8 << r> ! ;
: g y k x k ;
: s 1 vmode 1 pen cls 0 0 g 0 h ;
: e key 0 vmode ;
: r 37760 3200 0 fill ;