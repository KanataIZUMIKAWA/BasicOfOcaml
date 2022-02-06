let deleteODD l =
  List.filter (fun x -> x mod 2 = 0) l
;;

deleteODD [1;2;3;4;4;5;6;7];;