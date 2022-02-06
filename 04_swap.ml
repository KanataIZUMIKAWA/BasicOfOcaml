let swap a b =
  let na = !a and nb = !b in
  a := nb;
  b := na;
;;

let n = ref 1;;
let m = ref 2;;

swap n m ;;

!n;;
!m;;