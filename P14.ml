
(* 
Problem 14
=========
 Replicate the Elements of a List a Given Number of Times  
*)


 let replicate k lst = 
 (*important pattern - comes up all the time!*) 
  let rec multiply n acc x = 
    if n = 0 then acc else multiply (n-1) (x :: acc) x in
  let rec aux acc = function
    | [] -> acc (*pattern only matched if original list is empty*)
    | x :: rest -> aux (multiply k acc x) rest in
  aux [] (List.rev lst);; (*better to reverse the shorter list than the longer list at the end*)
  

  
  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_second_list = ["a"; "b"; "c"; "c"; "d"] in
  List.iter (Printf.printf "%s ") (replicate 3 my_second_list);;

    
    

