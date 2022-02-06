type 'a ibtree = 
  Node of 'a * 'a ibtree * 'a ibtree
| Leaf
;;

let rec flatten tree = 
    match tree with
            Node(element, t1, t2) -> (flatten t1) @ [element] @ (flatten t2)
        |   Leaf -> []
;;

flatten (Node(1, Node(2, Leaf, Leaf), Node(3, Leaf, Node(4, Leaf, Leaf))))