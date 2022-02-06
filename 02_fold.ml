let rec fold func x xs =
  match xs with 
      hd::tl -> fold func (func x hd) tl
    | [] -> x;;

let times = fold ( * ) 1;;
times [2;3;4];;

let conn = fold (fun s t-> s ^ " " ^ t) "";;
conn ["AtCoder";"Grand";"Contest"];;