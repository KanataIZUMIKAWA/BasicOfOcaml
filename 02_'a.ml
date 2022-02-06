let hed (x, y) = x;;

hed ("a", "b");;
hed (1, 2);;
hed ([1; 2], 3);;

let hed2 ((x : int), y) = x;;
hed (1, "a");;