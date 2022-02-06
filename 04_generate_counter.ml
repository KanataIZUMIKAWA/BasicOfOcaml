let generate_counter () =
  let weeks = [|"Sun"; "Mon"; "Tue"|] in
  let cnt = ref 0 in
  fun () ->
    let week = weeks.((!cnt) mod 3) in
      (cnt := !cnt + 1;
      week)
;;

let ctr = generate_counter ();;
ctr ();;
ctr ();;
ctr ();;
ctr ();;