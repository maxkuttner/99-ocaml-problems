
(* 
Problem 12
=========
Given a run-length code list generated as specified in the previous problem, construct its uncompressed version.
*)

type 'a rle =
  | One of 'a
  | Many of int * 'a

 let decode lst = 
  let rec unpack n x acc = 
    if n = 0 then acc else unpack (n - 1) x (x :: acc)
  in
  let rec aux acc = function
    | [] -> acc
    | One x :: rest -> aux (x :: acc) rest 
    | Many (cnt, x) :: rest -> aux (unpack cnt x acc) rest
  in
  List.rev (aux [] lst)
  


  
  
  

(* Main function to run the program and print the result *)
let () =
  let my_second_list = [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] in
  List.iter (Printf.printf "%s") (decode my_second_list);;

    
    

