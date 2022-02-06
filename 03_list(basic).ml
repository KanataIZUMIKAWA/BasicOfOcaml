type 'a mylist = 
    Node of 'a * 'a mylist
  | Null;;

let len l =
  let rec len_iter lst result =
      match lst with
          Node(_, tl) -> (len_iter tl (result + 1))
        | Null -> result
  in len_iter l 0
;;

let rec len l =
  match l with
      Node(_, a) -> (len a) + 1
    | Null -> 0
;;




let lst1 = Null in len lst1;;
let lst2 = Node("a", Node("c", Null)) in len lst2;;