let sigma n =
  let rec sigma_iter result i = 
    if (n < i)
    then result
    else 
      let new_result = result + i in
      sigma_iter new_result (i+1)
  in sigma_iter 0 1;;


sigma 9;;
sigma 10;;