
(* 
Problem 1
=========
Write a function last : 'a list -> 'a option that returns the last element of a list 
*)
let rec last lst =
  match lst with
  | [ ] -> None
  | [x] -> Some x
  | _ :: tl -> last tl




(* Main function to run the program and print the result *)
let () =
  let my_list = [1; 2; 3; 4; 123] in
    let res = last my_list in
      match res with
      | None -> Printf.printf "None"
      | Some x -> Printf.printf "%d\n" x

    
    

