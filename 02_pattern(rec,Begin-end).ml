let sumlist i =
  match i with
      hd::tl -> 
      begin
        match hd with 
          (x, y) -> (x + y)
      end
    | [] -> 0
  ;;

sumlist [(1, 2);(1, 3);(2, 3)];;