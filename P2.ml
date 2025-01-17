
(* 
Problem 2
=========
Find the last but one (last and penultimate) elements of a list.
*)
let rec last2 lst =
  match lst with
  | [ ] | [_] -> None (* no or 1 element*)
  | [x; y] -> Some (x, y)  (* only 2 elements left *)
  | _ :: rest -> last2 rest (* else pop off the first element and try again*)
  




(* Main function to run the program and print the result *)
let () =
  let my_list = [1; 2; 3; 4; 123] in
    let res = last2 my_list in
      match res with
      | None -> Printf.printf "None"
      | Some (x, y) -> Printf.printf "(%d, %d)\n" x y 

    
    

