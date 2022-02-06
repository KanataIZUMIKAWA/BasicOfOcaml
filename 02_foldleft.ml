let my_concat l =
  let connection n m = 
    match n with 
        "SKIP" -> ""
      | _ -> (n ^ " " ^ m)
  in
  List.fold_left connection "" l
;;

my_concat ["Information"; "SKIP"; "Networking"; "for"; "Innovation"; "And"; "SKIP"; "Design"];;