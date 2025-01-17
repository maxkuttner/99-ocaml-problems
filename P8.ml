
(* 
Problem 8
=========
Eliminate consecutive duplicates of list elements.
*)


let rec compress = function
  | x :: (y :: _ as rest) -> if x = y then compress rest else x :: compress rest
  | [x] -> [x]
  | [] -> []

(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  List.iter (Printf.printf "%s ") (compress my_list);
  
  let my_second_list = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
  List.iter (Printf.printf "%s ") (compress my_second_list)

    
    

