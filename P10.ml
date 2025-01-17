
(* 
Problem 10
=========
Run-length encoding https://en.wikipedia.org/wiki/Run-length_encoding
# encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : (int * string) list =
[(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
*)
let encode list = 
  let rec aux c acc lst =
    match lst with
    | [] -> []
    | [x] -> (c + 1, x) :: acc
    | x :: (y :: _ as rest) -> 
      if x = y then aux (c+1) acc rest
      else aux 0 ((c + 1, x) :: acc) rest in
  List.rev (aux 0 [] list)
  

(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  List.iter (fun (count, s) -> Printf.printf "(%d, %s)\n" count s) (encode my_list);
  let my_second_list = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
  List.iter (fun (count, s) -> Printf.printf "(%d, %s)\n" count s) (encode my_second_list)

    
    

