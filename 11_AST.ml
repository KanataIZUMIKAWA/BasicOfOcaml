type expr =
    Add of expr * expr
  | Mul of expr * expr
  | StrVal of string
  | IntVal of int
  | FloVal of float
  | VAR of string
;;

type typ = IntType | StrType | FloType;;
exception Type_missmatch;;
let env = [("a", IntType); ("b", StrType)];;

let rec type_infer expr = 
  match expr with
      Add(e1, e2) -> 
        let (t1, t2) = ((type_infer e1), (type_infer e2)) in
          begin
            match t1, t2 with
                IntType, IntType -> IntType
              | FloType, FloType -> FloType
              | StrType, StrType -> StrType
              | IntType, FloType | FloType, IntType -> FloType
              | _, _ -> raise Type_missmatch
          end
    | Mul(e1, e2) ->
      let (t1, t2) = ((type_infer e1), (type_infer e2)) in
        begin
          match t1, t2 with
              IntType, IntType -> IntType
            | FloType, FloType -> FloType
            | IntType, FloType | FloType, IntType -> FloType
            | IntType, StrType | StrType, IntType -> StrType
            | _, _ -> raise Type_missmatch
        end
    | StrVal(_) -> StrType
    | IntVal(_) -> IntType
    | FloVal(_) -> FloType
    | VAR(name) -> List.assoc name env
;;

(*
let formula1 = Mul(Add(IntVal(1), IntVal(2)), StrVal("345"));;
let formula2 = Mul(VAR("a"), VAR("b")) ;;
let formula3 = Add(Mul(FloVal(2.0), FloVal(3.0)), FloVal(1.0));;

type_infer formula1;;
type_infer formula2;;
type_infer formula3;;
*)