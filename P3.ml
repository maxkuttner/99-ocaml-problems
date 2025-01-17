
(* 
Problem 3
=========
Find the N'th element of a list.
*)
let rec at k = function (*the function keyword lets have a new input which you pattern match immediately*)
  | [] -> None
  | h :: t -> if k = 0 then Some h else at (k-1) t (*the compiler deduced that this must be partial application with a list as input*)
  
  
  




(* Main function to run the program and print the result *)
let () =
  let my_list = [1; 2; 3; 4; 123] in
    let res = at 2 my_list in
      match res with
      | None -> Printf.printf "None"
      | Some x -> Printf.printf "%d\n" x 

    
    

