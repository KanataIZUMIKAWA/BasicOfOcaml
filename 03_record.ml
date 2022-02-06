type student = {id: int; name: string; grade: int};;

let student_to_str {id = fid; name = fname; grade = fgrade} =
"grade: " ^ (string_of_int fgrade) ^ "  name: " ^ fname
;;
let i = {id = 19; name = "Kanata"; grade = 3};;
student_to_str i;;

