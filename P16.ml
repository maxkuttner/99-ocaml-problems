
(* 
Problem 16
=========
 Split a List Into Two Parts; The Length of the First Part Is Given 
*)


 let split k lst = 
  let rec aux ix acc = function
    | [] -> List.rev acc, []
    | x :: rest as l-> if ix = k then List.rev acc, l else aux (ix+1) (x::acc) rest in
  aux 1 [] lst;;

  
  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_second_list = ["a"; "b"; "c"; "c"; "d"] in
  let first_part, second_part = split 3 my_second_list in
  Printf.printf "First part: [%s]\n" (String.concat "; " first_part);
  Printf.printf "Second part: [%s]\n" (String.concat "; " second_part);
    
    

