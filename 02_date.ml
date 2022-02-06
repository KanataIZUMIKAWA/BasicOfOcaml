let date y m d =
  let m_str =
    match m with
        1 -> "January"
      | 2 -> "Feb"
      | 3 -> "Match"
      | _ -> "Erorr"

  in m_str ^ " " ^ (string_of_int d) ^ ", " ^ (string_of_int y)
;;

date 2021 4 15;;
