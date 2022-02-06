let square_list l =
  let func n = (n *. n) 
  in
  List.map func l
;;

square_list [1.0; 2.0; 3.0];;

let rec square_list xs = 
  match xs with
      hd::tl -> (hd *.hd)::(square_list tl)
    | [] -> []
;;

square_list [1.0; 2.0; 3.0];;