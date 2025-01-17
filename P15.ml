
(* 
Problem 15
=========
 Drop Every N'th Element From a List 
*)


 let drop k lst = 
 (*important pattern - comes up all the time!*) 
  let rec aux ix = function
    | [] -> []
    | x :: rest -> if ix = k then aux 1 rest else x :: (aux (ix + 1) rest) in
  aux 1 lst;;

  
  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_second_list = ["a"; "b"; "c"; "c"; "d"] in
  List.iter (Printf.printf "%s ") (drop 3 my_second_list);;

    
    

