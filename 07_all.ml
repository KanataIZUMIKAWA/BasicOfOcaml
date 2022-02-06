let rec sigma l =
  match l with
      []  -> 0
    | hd::tl -> (hd + (sigma tl))
;;

let sigma xs =
  List.fold_left (fun result x -> result + x) 0 xs ;;