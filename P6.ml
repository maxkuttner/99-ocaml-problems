
(* 
Problem 6
=========
Find out whether a list is a palindrome. Tipp: you can use rev from before or even better O(n) List.rev
*)
let palindrome lst = 
  (List.rev lst) = lst
  




(* Main function to run the program and print the result *)
let () =
  let my_list = [] in
  Printf.printf "%B " (palindrome my_list);
  
  let my_second_list = ["a"; "b"; "c"] in
  Printf.printf "%B " (palindrome my_second_list)


    
    

