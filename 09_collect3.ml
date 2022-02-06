let rec collect3 l = 
    match l with
            hd::tl when (String.length hd = 3) -> hd::(collect3 tl)
        |   hd::tl when (String.length hd <> 3) -> collect3 tl
        |   _ -> []
;;

collect3 ["a";"bc";"def";"g";"hij"]

let rec collect3_2 l = 
    List.filter (fun word -> String.length word = 3) l
;;

collect3_2 ["a";"bc";"def";"g";"hij"]