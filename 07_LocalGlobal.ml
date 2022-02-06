type counter = {
  increment : unit -> unit;
  reset : unit -> unit;
  get : unit -> int;
}
;;
let create_counter () =
  let ctr = ref 0 in
  let increment () = ctr := !ctr + 1
  and reset () = ctr := 0
  and get () = !ctr
  in {increment = increment; reset = reset; get = get}
;;