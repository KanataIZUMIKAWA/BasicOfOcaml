type hand = Rock | Scissors | Paper;;

let janken h1 h2 =
  match h1 with
      Rock when (h2 = Scissors) -> true
    | Paper when (h2 = Rock) -> true
    | Scissors when (h2 = Paper) -> true
    | _ -> false
;;

janken Rock Scissors;;
janken Rock Paper;;
janken Rock Rock;;