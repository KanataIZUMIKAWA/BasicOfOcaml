let rec take xs n =
  match xs with
      hd::tl when(n > 0) -> (hd :: (take tl (n - 1)))
    | hd::tl when(n <= 0) -> (take tl (n - 1))
    | _ -> []
;;


let lst = [1; 3; 5; 7; 9; 11];;
take lst 2;;
take lst 3;;