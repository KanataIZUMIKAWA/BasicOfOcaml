let rec sum xs = 
    match xs with 
      hd::tl -> hd +. (sum tl)
    | [] -> 0.0
;;


let sum xs =
  let rec sum_iter r i =
    match i with 
    hd::tl ->
    let new_hd = r +. hd in
    sum_iter new_hd tl
    | [] -> 0.0
  in sum_iter 0.0 xs
;;

sum [1.1; 2.2; 3.3];;

let sum xs =
  let add x y = x +. y
  in List.fold_left add 0.0 xs
;;

