let ac s =
  match s with
      "abc" | "arc" -> "Yes"
    | "agc" -> "No"
    | _ -> "Error"
;;

ac "abc";;
ac "agc";;
ac "nusuke";;