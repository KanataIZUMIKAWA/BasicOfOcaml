type figure =
    Circle of float 
  | Rectangle of float * float
;;

let area f =
  match f with
      Circle(r) -> r *. r *. 3.14
    | Rectangle(w, h) -> w *. h
;;

area (Circle(10.0));;
area (Rectangle(3.0, 4.0));;
