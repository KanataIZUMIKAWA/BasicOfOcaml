type expression =
    Add of expression * expression (*  ... + ...  *)
  | One                            (* 1 *)
  | X                              (* X *) 

type statement = 
    Print of expression    (* print(...) *)
  | AssignX of expression  (* X = ... *)

type program = statement list
(*******)
let prog = [AssignX(Add(One, One)); Print(Add(X, One))];;

let rec eval_expr exp x = 
    match exp with
            Add(e1, e2) -> (eval_expr e1 x) + (eval_expr e2 x)
        |   One -> 1
        |   X -> x
;;

let x = ref 0;;

let eval_stmt stmt =
    match stmt with
            Print(exp) -> let v = eval_expr exp (!x) in print_int v
        |   AssignX(exp) -> let v = eval_expr exp (!x) in x := v
;;

let rec eval_prog prog = List.iter eval_stmt prog;;