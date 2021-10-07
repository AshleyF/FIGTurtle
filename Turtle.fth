0 var x 0 var y 0 var angle
0 var dx 0 var dy

hex create cosTable -2 , F9F2 , E9DD , CEBD ,
AA95 , 7F67 , 4E34 , 1A00 , decimal

: cos ( ang -- cos[ang])
  abs 60 mod dup 29 > if
    60 swap -
  then
  dup 14 > if
    -1 30 rot -
  else
    1 swap
  then
  cosTable + c@ 1+ *
;

: heading ( ang --)
  dup angle !
  45 + cos dx !
  dup cos dy !
;

: turn ( turn--)
  angle @ + heading
;

: forward ( dist--)
  >r dx @ x @ y @ dy @
  r 0 do
    >r r + >r over +
    dup 8 >> r 8 >> plot
    r> r>
  loop
  drop y ! x ! drop
  r> drop
;

: jump ( dist--)
  dup dx @ * x +!
  dy @ * y +!
;

: fixPoint!
  >r 80 + 8 << r> !
;

: go ( x y --)
  y fixPoint!
  x fixPoint!
;

: turtleStart
  1 vmode 1 pen cls
  0 0 go 0 heading
;

: turtleEnd
  key 0 vmode
;

: clear
  9380 C80 0 fill
;