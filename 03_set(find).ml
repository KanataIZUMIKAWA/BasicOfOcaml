type 'a set = 'a list;;

let rec find s x = 
  match s with
      hd::tl -> 
        if hd = x then 
          true
        else 
          (find tl x)
    | [] -> false

let myset = [1; 2; 3];;
find myset 2;;
find myset 9;;