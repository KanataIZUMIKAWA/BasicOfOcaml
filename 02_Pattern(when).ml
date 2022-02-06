let times x =
  match x with 
      (n, m) when n = 0 || m = 0 -> (-1)
    | (n, m) -> (n * m)
  ;;

times (3, 2);;
times (8, 16);;
times (3, 0);;
times (0, 1);;