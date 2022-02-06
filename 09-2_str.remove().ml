let remove xs n =
  let rec iter xs n r =
    match xs with
        hd::tl when (n <> 1) -> iter tl (n - 1) (r @ [hd])
      | hd::tl when (n = 1) -> iter tl (n - 1) r
      | _ -> r
    in (iter xs n [])
;;

let lst = ["a";"bc";"def";"g";"hij"];;
remove lst 3;;