(* Material for CS 320, lecture 21, April 11, 2024 *)

(* the polymorphic identity function *)
let id = fun x -> x 
(* the squaring function on integers *)
let sq : int -> int = fun x -> x * x
(* the always-diverging function on integers *)
let rec myst : int -> int = fun x -> myst x 
(* the polymorphic first-projection function *)
let proj_1 = fun x y -> y ;;
(* the polymorphic second-projection function *)
let proj_2 = fun x y -> x ;;

(* 
   
Try the following expressions after loading this script with:
    # use "lecture_21.ml"
Suspend utop with "Ctrl z" if stuck in infinite loop.

id myst
myst 3
fun (z : int) -> myst 3
(fun (z : int) -> myst 3) 5
proj_1 (myst 3) ;;
proj_1 myst 10               -- int = 10
proj_1 (myst 3) 10           -- diverges
proj_1 (fun z -> myst 3) 10  -- int = 10 

*)