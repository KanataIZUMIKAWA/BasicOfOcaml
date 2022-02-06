type 'a mylist = 
    Node of 'a * 'a mylist
  | Null

let rec myappend l x =
  match l with
      Node(hd, tl) -> Node(hd, (myappend tl x))
    | Null -> Node(x, Null)
;;

let lst = Node("a", Node("b", Null));;
myappend lst "c";;
