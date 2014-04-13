open Directions;;
module ObjetMobile = Mobile;;
module Personnage = Personnage;;
let perso = Personnage.mario;;
(* Graphics.close_graph ();; *)
Graphics.open_graph " 500x500";;
Graphics.set_color (Graphics.rgb 0 40 180);;
Graphics.fill_rect 0 0 500 500;;
Graphics.set_color (Graphics.rgb 0 128 255);;
let f i =
  Graphics.draw_segments [|
      (50*i,0,50*i,500);
      (0,50*i,500,50*i)
     |];
in
List.iter f [1;2;3;4;5;6;7;8;9];;

Graphics.remember_mode false;;

let afficher img (i,j) =

  Dessiner.dessiner_image img (!j * 50) (450 - !i * 50);;

let pieces =  [(ref 0,ref 0);(ref 6,ref 6);(ref 4, ref 5)
                ;(ref 2, ref 2);(ref 3,ref 5)];;

let rochers =  [(ref 1,ref 2)];;

let perso_i, perso_j = ref 5, ref 5;;

let afficher_decor () =
  Graphics.synchronize();;
let afficher_perso() =
  afficher perso (perso_i,perso_j);;
let afficher_mobiles () =
  List.iter (afficher ObjetMobile.piece) pieces;
  List.iter (afficher ObjetMobile.rocher) rochers;
  afficher_perso ();;


let deplacer direction =
  let () = match direction with
    | E -> perso_j := ((!perso_j + 1) mod 10)
    | O -> perso_j := ((!perso_j - 1) mod 10); if (!perso_j<0) then begin perso_j := !perso_j + 10 end
    | S -> perso_i := ((!perso_i + 1) mod 10)
    | N -> perso_i := ((!perso_i - 1) mod 10); if (!perso_i<0) then begin perso_i := !perso_i + 10 end
  in
  let dans_le_decors (di, dj) = 
    if(!di,!dj) = (!perso_i,!perso_j) then (match direction with
    | E ->  begin perso_j := (!perso_j - 1) mod 10; print_string "Déplacement impossible \n" end
    | O -> begin perso_j := (!perso_j + 1) mod 10; print_string "Déplacement impossible \n" end
    | S -> begin perso_i := (!perso_i - 1) mod 10; print_string "Déplacement impossible \n" end
    | N -> begin perso_i := (!perso_i + 1) mod 10; print_string "Déplacement impossible \n" end)
  in
  let ramasser_pieces (ri,rj) =
    if (!ri,!rj) = (!perso_i,!perso_j) then
      begin
        ri := -1;
        rj := 11;
      end
  in
  List.iter dans_le_decors rochers;
  List.iter ramasser_pieces pieces;
  afficher_decor ();
  afficher_mobiles ();;

let jouer p = Interprete.run p deplacer;;

print_string "\n##############################################\n";;
print_string "#######                                #######\n";;
print_string "####### Mario revisité : It's me Mario #######\n";;
print_string "#######                                #######\n";;
print_string "##############################################\n";;

(*Auteur image dans le image50.ml Kenney Vleugels*)
print_string " Crédit image : http://fr.fordesigner.com\n\t\timg1.wikia.nocookie.net\n\t\thttp://img101.imageshack.us\n\t\thttp://www.babelio.com/\n\t\thttp://www.fancyicons.com/free-icons/\n\t\thttp://images.wikia.com/mariofanon/\n\n";;
afficher_mobiles ();;
