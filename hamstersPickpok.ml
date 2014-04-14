open Directions;;
module ObjetMobile = Mobile;;
module Personnage = Personnage;;
let perso = Personnage.hamster;;
(* Graphics.close_graph ();; *)
Graphics.open_graph " 500x500";;

(* let transformation_iso = function (i,j) -> (ref ((i - j)) , ref ((i + j));;



let afficher_image_plateau img (i,j) = Dessiner.dessiner_image img (!j * 50) (450 - !i * 50);;

let afficher_plateau () = 

  afficher_image_plateau Decors.beachCornerES (transformation_iso (4, 4));
  afficher_image_plateau Decors.beachCornerNE (transformation_iso (6, 4));
  afficher_image_plateau Decors.beachCornerNW (transformation_iso (6, 6));
  afficher_image_plateau Decors.beachCornerSW (transformation_iso (4, 6));
  afficher_image_plateau Decors.beachE (transformation_iso (5, 4));
  afficher_image_plateau Decors.beachN (transformation_iso (6, 5));
  afficher_image_plateau Decors.beachS (transformation_iso (4, 5));
  afficher_image_plateau Decors.beachW (transformation_iso (5, 6));
  afficher_image_plateau Decors.beach (transformation_iso (5, 5))
;;

afficher_plateau ();;
*)
Graphics.set_color (Graphics.rgb 49 140 231);;
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

let afficher img (i,j) = Dessiner.dessiner_image img (!j * 50) (450 - !i * 50);;

let pieces =  [(ref 1, ref 5);(ref 0,ref 0);(ref 1,ref 6);(ref 2, ref 2);(ref 3,ref 5)];;

let rochers =  [(ref 1,ref 2)];;

let perso_i,perso_j = ref 5, ref 5;;

let afficher_decor () = Graphics.synchronize();;
let afficher_perso() = afficher perso (perso_i,perso_j);;
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
        rj := -1;
      end
  in

  let plusdepiece () =
	let rec verifpiece p = match p with
	| [] -> Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne"
	| [(x,y)] -> begin if (!x,!y)=(-1,-1) then Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne" end
	| (x,y)::xs -> if (!x,!y)=(-1,-1) then verifpiece xs else ()
	
	in verifpiece pieces
 in
  List.iter dans_le_decors rochers;
  List.iter ramasser_pieces pieces;
  afficher_decor ();
  afficher_mobiles ();
  plusdepiece ();;

let jouer p = Interprete.run p deplacer;;

print_string "\n##############################################\n";;
print_string "#######                                #######\n";;
print_string "#######         Hamster pickpocket     #######\n";;
print_string "#######                                #######\n";;
print_string "##############################################\n";;

(*Auteur image dans le image50.ml *)
print_string " Crédit image : Kenney Vleugels\n\t\thttp://www.ebookanoid.com\n\t\thttp://fr.fordesigner.com\n\t\timg1.wikia.nocookie.net\n\t\thttp://img101.imageshack.us\n\t\thttp://www.babelio.com/\n\n";;
afficher_mobiles ();;

print_string " Pour ce jeu, vous devez ramasser les pièces qui se trouvent sur le plateau tant qu'il reste des pièces sur le plateau, le jeu continue. \n\n"

(* jouer (Bloc[Nord;Nord;Sud;Sud;Sud;Est;Est;Est;Est;Est;Nord;Nord;Nord;Nord;Est;Est;Ouest;Ouest;Nord]) *)