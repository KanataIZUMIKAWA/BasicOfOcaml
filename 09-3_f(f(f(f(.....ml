let apply f n =
  let rec iter ff i =
     if i = n then
      ff 
    else 
      iter (fun x -> f(ff x)) (i + 1)
  in (iter f 1)

(*
let duble x = x * 2;;
let fff = apply duble 3;;
fff 4;;
*)

let mysqrt a =
  let f = (fun x -> x*. x -. a) in
  let df = (fun x -> 2.0 *. x) in
  let newton = apply (fun x -> x -. ((f x) /. (df x))) 20 in 
  newton a
;;

(*
mysqrt 2.0;;
mysqrt 3.0;;
*)