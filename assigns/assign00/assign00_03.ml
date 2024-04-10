(* THIS IS A TEST AND ONLY A TEST AND NOTHING BUT A TEST *)
let square (x : int) : int = x * x 
let id = fun x -> x 
let sq = fun x -> x * x
let rec myst : int -> int = fun x -> myst x (* always diverging *)
let proj_1 = fun x y -> x ;;
let proj_2 = fun x y -> y ;;

(* values to try:
   10.0 ** 10.0    

*)