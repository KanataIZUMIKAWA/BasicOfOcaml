type 'a mylist =
    Node of 'a * 'a mylist
  | Null

let rec myconcat lst1 lst2 =
  match lst1 with
      Node(hd, tl) -> Node(hd, (myconcat tl lst2))
    | Null -> lst2
;;

let l1 = Node(1, Node(2, Null));;
let l2 = Node(1, Node(2, Node(3, Null)));;

myconcat l1 l2;;
