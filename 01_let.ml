let fanc a b c = a/2 + b/2 + c/2;;
fanc 2 4 6;;
fanc 1 2 3;;

let flt y = y *. 0.3;;
flt 8.0;;
flt 3.0;;

let bl y = ((y mod 3) = 0) && (y <> 6);;

bl 5;;
bl 6;;
bl 9;;

let s_plus_s s1 s2 = s1 ^ s2;;
s_plus_s "a" "b";;
s_plus_s "Hello " "world";;