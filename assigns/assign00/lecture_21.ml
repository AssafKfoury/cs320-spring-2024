(* Material for CS 320, lecture 21, April 11, 2024 *)

(*
CALL-BY-VALUE
The arguments of a function are evaluated and
then their results are passed to the function.
*)

(*
CALL-BY-NAME
The arguments of a function are substituted directly 
in the function’s body and evaluated only when necessary.
*)

(* the doubling function *)
let double = fun x -> x + x

(*
Try the following expressions after loading this script with:
    # use "lecture_21.ml"
Suspend utop with "Ctrl z" if stuck in infinite loop.

double (print_string "hi!!"; 4)   

-- if double (print_string “hi!!”; 4) is evaluated using call-by-value, 
the argument will be evaluated once, hi!! will be printed ONCE and the 
return value will be 8.

-- if double (print_string “hi!!”; 4) is evaluated using call-by-name, 
the argument will be copied to the body of the function, which will become: 
(print_string “hi!!”; 4) + (print_string “hi!!”; 4). Then, each part of the 
sum will be evaluated, hi!! will be printed TWICE and the return value will be 8.
*)

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

let arg () = print_endline "Function evaluated.";;

let cbv_fn f =
    print_endline "=> Not using the argument, evaluated anyway." ;;
let cbn_fn f =
    print_endline "=> Not using the argument, not evaluated."  ;;
