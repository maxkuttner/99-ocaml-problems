
(* 
Problem 5
=========
Reverse a list.
*)
let rec rev lst = match lst with (*the function keyword lets have a new input which you pattern match immediately*)
  | [] -> []
  | h :: t -> (rev t) @ [h]
  
  




(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  List.iter (Printf.printf "%d ") (rev my_list);
  
  let my_second_list = ["a"; "b"; "c"] in
  List.iter (Printf.printf "%s ") (rev my_second_list)


    
    

