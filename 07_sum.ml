let sum n m = 
  let rec iter n m r = 
    if n = m then
      r
    else 
      iter (n + 1) m (r + n)
  in iter n m 0
;;

sum 10 20;;