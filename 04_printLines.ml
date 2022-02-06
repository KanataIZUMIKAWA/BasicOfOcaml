let rec print_lines lst =
  match lst with
      hd::tl -> 
      (
        prerr_endline hd;
        print_lines tl
      )
    | [] -> ()
;;

print_lines ["a"; "bc"; "def"];;