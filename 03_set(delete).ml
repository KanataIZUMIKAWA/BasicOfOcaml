type 'a set = 'a list;;
(*
let delete s x =
  let rec iter is x result =
    match is with
        hd::tl when (hd <> x) -> (iter tl x (result::hd))
      | _ -> result
  in iter s x ()
;;
*)