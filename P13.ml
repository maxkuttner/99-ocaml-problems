
(* 
Problem 13
=========
 Duplicate the Elements of a List.
*)


 let rec duplicate = function
  | [] -> []
  | x :: rest -> x :: x :: duplicate (rest)
  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_second_list = ["a"; "b"; "c"; "c"; "d"] in
  List.iter (Printf.printf "%s ") (duplicate my_second_list);;

    
    

