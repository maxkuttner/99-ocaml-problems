
(* 
Problem 9
=========
Pack consecutive duplicates of list elements into sublists.
*)
let pack list = 
  let rec aux small big lst =
    match lst with
    | [] -> []
    | [x] -> (x :: small) :: big
    | x :: (y :: _ as rest) -> 
      if x = y then aux (x :: small) big rest 
      else aux [] ((x :: small) :: big) rest in
  List.rev (aux [] [] list)
  

(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
   List.iter (List.iter (Printf.printf "%s ")) (pack my_list);;
  let my_second_list = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
  List.iter (List.iter (Printf.printf "%s ")) (pack my_second_list);;

    
    

