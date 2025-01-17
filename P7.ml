
(* 
Problem 7
=========
Flatten a nested list structure

*)

(* a nested list *)
type 'a node =
  | One of 'a (* a node can be either a singelton ...*)
  | Many of 'a node list (* ... or a sublist *)

let flatten lst =
  let rec aux acc = function
    | [] -> acc
    | One x :: rest -> aux (x :: acc) rest
    | Many x :: rest -> aux (aux acc x) rest
  in
  List.rev (aux [] lst)



(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  List.iter (Printf.printf "%s ") (flatten my_list);
  
  let my_second_list = [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]] in
  List.iter (Printf.printf "%s ") (flatten my_second_list)


    
    

