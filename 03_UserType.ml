type check = int * bool;;

let edit (n : check) = 
  match n with 
      (a, b) when b -> (a * 2)
    | (a, b) when not(b) -> (a * 3)
    | _ -> (-1);;

edit (2, true);;
edit (3, false);;
