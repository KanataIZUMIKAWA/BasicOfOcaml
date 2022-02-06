type 'a btree =
    Node of 'a * 'a btree * 'a btree
  | Leaf

let rec find_cond cond tree =
    match tree with 
        Node(v, t1, t2) when (cond v) -> true
      | Node(v, t1, t2) when (cond (find_cond cond t1)) -> true
      | Node(v, t1, t2) when (cond (find_cond cond t2)) -> true
      | Leaf -> false
      | _ -> false
;;

(*
let con = fun v -> (v mod 2) = 0
let t = Node(2, Node(3, Leaf, Leaf), Leaf);;
find_cond con t;;
*)
