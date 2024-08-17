
(* 
Problem 4
=========
Find the number of elements of a list.
*)
let rec length = function (*the function keyword lets have a new input which you pattern match immediately*)
  | [] -> 0
  | _ :: rest -> (length rest) + 1
  
  




(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  Printf.printf "%d\n" (length my_list);
  
  let my_second_list = ["a"; "b"; "c"] in
  Printf.printf "%d\n" (length my_second_list)


    
    

