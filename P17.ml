
(* 
Problem 17
=========
Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 0 (this is the way the List module numbers elements).

*)


let slice list i k =
  let rec take n = function
    | [] -> []
    | h :: t -> if n = 0 then [] else h :: take (n - 1) t
  in
  let rec drop n = function
    | [] -> []
    | _ :: t as l -> if n = 0 then l else drop (n - 1) t
  in
  take (k - i + 1) (drop i list);;

  
  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_list = ["a"; "b"; "c"; "c"; "d"] in
  let first_part = (slice my_list 2 4) in
  List.iter (Printf.printf "%s ") first_part; 
    
