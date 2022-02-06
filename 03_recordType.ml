type fraction = {num: int; deno: int};;

let mal_frac a b = 
  let numf = (a.num * b.num) and denof = (a.deno * b.deno) in
    (string_of_int numf) ^ "/" ^ (string_of_int denof)
;;

let mal_frac2 {num = n1; deno = d1} {num = n2; deno = d2} =
  {num = n1 *n2; deno = d1 *d2}
;;

let f1 = {num = 1; deno=2} and f2 = {num = 1; deno=3} in
mal_frac f1 f2;;
let f1 = {num = 1; deno=2} and f2 = {num = 1; deno=3} in
mal_frac2 f1 f2;;
