open Directions;;

type expression = Ent of int
                | Plus of expression * expression
                | Mult of expression * expression
                | Div of expression * expression
                | Moins of expression * expression
                | Opp of expression
                | Egal of expression * expression
		| Dif of expression * expression
                | Sup of expression * expression
                | Inf of expression * expression
;;
type instruction = Est
		   | Ouest
		   | Nord
		   | Sud
		   | PrintStr of string
		   | Print of expression
		   | Bloc of instruction list
		   | While of expression * instruction
;;

let rec eval e = match e with
  | Ent n -> n
  | Plus (e1, e2) -> (eval e1) + (eval e2)
  | Mult (e1, e2) -> (eval e1) * (eval e2)
  | Div (e1, e2) -> (eval e1) / (eval e2)
  | Moins (e1, e2) -> (eval e1) - (eval e2)
  | Opp e1 -> (-1) * (eval e1)
  | Egal (e1, e2) -> (match (eval e1) = (eval e2) with true -> 1
                                                    | false -> 0)
  | Dif (e1, e2) -> (match (eval e1) != (eval e2) with true -> 1
                                                    | false -> 0)
    | Sup (e1, e2)  -> (match (eval e1) > (eval e2) with true -> 1
                                                    | false -> 0)
  | Inf (e1, e2)  -> (match (eval e1) < (eval e2) with true -> 1
                                                    | false -> 0)
;;

let rec run p deplacer =
  match p with
  | Est -> deplacer E
  | Ouest -> deplacer O
  | Sud -> deplacer S
  | Nord -> deplacer N
  | Bloc (x::xs) -> run x deplacer; run (Bloc xs) deplacer
  | Bloc [] -> ()
  | PrintStr ch -> print_string ch
  | Print exp -> print_int (eval exp)
  | While (expres,instruct) as w -> (match (eval expres) with
    | 0 -> ()
    | _ -> run instruct deplacer; run w deplacer)
  


;;
