let sigma n = 
  let rec sigma_iter sum i = 
    if i = 0 then 
      sum
    else 
      sigma_iter (sum + i) (i - 1)
  in sigma_iter 0 n
;;

sigma 9;;
sigma 10;;