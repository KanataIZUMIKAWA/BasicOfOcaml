let times x =
  match x with 
      (n, m) -> (n * m)
  ;;

times (3, 2);;
times (8, 16);;


let discardZero (_, b) = b;;
discardZero (2, 3);;