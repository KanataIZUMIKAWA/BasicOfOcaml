let doubleList l =
  let func n = (n * 2) 
  in
  List.map func l
;;

doubleList [1;2;3;4];;
