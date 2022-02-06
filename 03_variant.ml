type person =
    Student of {id: int; name: string; grade: int}
  | Teacher of {title: string; name: string}
;;

let person_to_str s = 
  match s with
      Student{id = _; name = fname; grade = _} -> fname
    | Teacher{title = _; name = fname} -> fname
;;

let i = Student{id = 19; name = "Kanata"; grade = 3} ;;
let t = Teacher{title = "prof."; name = "Enryo"} ;;

person_to_str i;;
person_to_str t;;



type person2 =
  Student2 of int * string * int
| Teacher2 of string * string
;;

let person_to_str2 s = 
  match s with
      Student2(_, fname2, _) -> fname2
    | Teacher2(_, fname2) -> fname2
;;

let i2 = Student2(19, "Kanata", 3) ;;
let t2 = Teacher2("prof.", "Enryo") ;;

person_to_str2 i2;;
person_to_str2 t2;;