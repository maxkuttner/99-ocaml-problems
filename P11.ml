
(* 
Problem 11
=========
Modify the result of the previous problem in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

Since OCaml lists are homogeneous, one needs to define a type to hold both single elements and sub-lists.Run-length encoding https://en.wikipedia.org/wiki/Run-length_encoding
# encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : (int * string) list =
[(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
*)
type 'a rle =
  | One of 'a
  | Many of int * 'a;;
type 'a rle = One of 'a | Many of int * 'a
let encode l =
    let create_tuple cnt elem =
      if cnt = 1 then One elem
      else Many (cnt, elem) in
    let rec aux count acc = function
      | [] -> []
      | [x] -> (create_tuple (count + 1) x) :: acc
      | hd :: (snd :: _ as tl) ->
          if hd = snd then aux (count + 1) acc tl
          else aux 0 ((create_tuple (count + 1) hd) :: acc) tl in
      List.rev (aux 0 [] l)let encode list = 
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

    
    

