open Directions;;
module ObjetMobile = Mobile;;
module Personnage = Personnage;;
let perso = Personnage.hamster;;
module Decors = RoadTiles;;
(* Graphics.close_graph ();; *)
Graphics.open_graph " 1250x750";;

let transformation_iso = function (i,j) -> (ref ((i+j)*50) , ref ((j-i)*25));;

let afficher_image_plateau img (i,j) = Dessiner.dessiner_image img (!i+115) (!j+330);;

Graphics.set_color (Graphics.rgb 52 201 36);;
Graphics.fill_rect 0 0 1250 750;;

let afficher_plateau () = 

  afficher_image_plateau Decors.tile_water (transformation_iso ((-1), 10));
  afficher_image_plateau Decors.tile_beachCornerSW (transformation_iso (0, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (1, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (2, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (3, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (4, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (5, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (6, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (7, 10));
  afficher_image_plateau Decors.tile_beachW (transformation_iso (8, 10));
  afficher_image_plateau Decors.tile_beachCornerNW (transformation_iso (9, 10));
  afficher_image_plateau Decors.tile_water (transformation_iso (10, 10));

  afficher_image_plateau Decors.tile_beachCornerSW (transformation_iso ((-1), 9));
  afficher_image_plateau Decors.tile_beachNE (transformation_iso (0, 9));
  afficher_image_plateau Decors.tile_roadSW (transformation_iso (1, 9));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (2, 9));
  afficher_image_plateau Decors.tile_crossroadNSW (transformation_iso (3, 9));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (4, 9));
  afficher_image_plateau Decors.tile_crossroadNSW (transformation_iso (5, 9));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (6, 9));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (7, 9));
  afficher_image_plateau Decors.tile_roadNW (transformation_iso (8, 9));
  afficher_image_plateau Decors.tile_beachES (transformation_iso (9, 9));
  afficher_image_plateau Decors.tile_beachCornerNW (transformation_iso (10, 9));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 8));
  afficher_image_plateau Decors.tile_roadSW (transformation_iso (0, 8));
  afficher_image_plateau Decors.tile_roadNE (transformation_iso (1, 8));
  afficher_image_plateau Decors.tile_grass (transformation_iso (2, 8));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (3, 8));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 8));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (5, 8));
  afficher_image_plateau Decors.tile_grass (transformation_iso (6, 8));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 8));
  afficher_image_plateau Decors.tile_roadES (transformation_iso (8, 8));
  afficher_image_plateau Decors.tile_roadNW (transformation_iso (9, 8));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 8));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 7));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (0, 7));
  afficher_image_plateau Decors.tile_grass (transformation_iso (1, 7));
  afficher_image_plateau Decors.tile_grass (transformation_iso (2, 7));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (3, 7));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 7));
  afficher_image_plateau Decors.tile_crossroadESW (transformation_iso (5, 7));
  afficher_image_plateau Decors.tile_endN (transformation_iso (6, 7));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 7));
  afficher_image_plateau Decors.tile_endS (transformation_iso (8, 7));
  afficher_image_plateau Decors.tile_crossroadNEW (transformation_iso (9, 7));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 7));


  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 6));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (0, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (1, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (2, 6));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (3, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 6));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (5, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (6, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 6));
  afficher_image_plateau Decors.tile_grass (transformation_iso (8, 6));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (9, 6));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 6));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 5));
  afficher_image_plateau Decors.tile_crossroadESW (transformation_iso (0, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (1, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (2, 5));
  afficher_image_plateau Decors.tile_crossroad (transformation_iso (3, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (4, 5));
  afficher_image_plateau Decors.tile_crossroad (transformation_iso (5, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (6, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (7, 5));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (8, 5));
  afficher_image_plateau Decors.tile_crossroadNEW (transformation_iso (9, 5));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 5));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 4));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (0, 4));
  afficher_image_plateau Decors.tile_grass (transformation_iso (1, 4));
  afficher_image_plateau Decors.tile_roadSW (transformation_iso (2, 4));
  afficher_image_plateau Decors.tile_roadNE (transformation_iso (3, 4));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 4));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (5, 4));
  afficher_image_plateau Decors.tile_grass (transformation_iso (6, 4));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 4));
  afficher_image_plateau Decors.tile_grass (transformation_iso (8, 4));
  afficher_image_plateau Decors.tile_roadHillE (transformation_iso (9, 4));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 4));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 3));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (0, 3));
  afficher_image_plateau Decors.tile_grass (transformation_iso (1, 3));
  afficher_image_plateau Decors.tile_endE (transformation_iso (2, 3));
  afficher_image_plateau Decors.tile_grass (transformation_iso (3, 3));
  afficher_image_plateau Decors.tile_endS (transformation_iso (4, 3));
  afficher_image_plateau Decors.tile_crossroad (transformation_iso (5, 3));
  afficher_image_plateau Decors.tile_endN (transformation_iso (6, 3));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 3));
  afficher_image_plateau Decors.tile_grass (transformation_iso (8, 3));
  afficher_image_plateau Decors.tile_roadHillW (transformation_iso (9, 3));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 3));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 2));
  afficher_image_plateau Decors.tile_crossroadESW (transformation_iso (0, 2));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (1, 2));
  afficher_image_plateau Decors.tile_endN (transformation_iso (2, 2));
  afficher_image_plateau Decors.tile_grass (transformation_iso (3, 2));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 2));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (5, 2));
  afficher_image_plateau Decors.tile_grass (transformation_iso (6, 2));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 2));
  afficher_image_plateau Decors.tile_grass (transformation_iso (8, 2));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (9, 2));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 2));

  afficher_image_plateau Decors.tile_beachS (transformation_iso ((-1), 1));
  afficher_image_plateau Decors.tile_roadES (transformation_iso (0, 1));
  afficher_image_plateau Decors.tile_roadNW (transformation_iso (1, 1));
  afficher_image_plateau Decors.tile_grass (transformation_iso (2, 1));
  afficher_image_plateau Decors.tile_grass (transformation_iso (3, 1));
  afficher_image_plateau Decors.tile_grass (transformation_iso (4, 1));
  afficher_image_plateau Decors.tile_roadEW (transformation_iso (5, 1));
  afficher_image_plateau Decors.tile_grass (transformation_iso (6, 1));
  afficher_image_plateau Decors.tile_grass (transformation_iso (7, 1));
  afficher_image_plateau Decors.tile_roadSW (transformation_iso (8, 1));
  afficher_image_plateau Decors.tile_roadNE (transformation_iso (9, 1));
  afficher_image_plateau Decors.tile_beachN (transformation_iso (10, 1));

  afficher_image_plateau Decors.tile_beachCornerES (transformation_iso ((-1), 0));
  afficher_image_plateau Decors.tile_beachNW (transformation_iso (0, 0));
  afficher_image_plateau Decors.tile_roadES (transformation_iso (1, 0));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (2, 0));
  afficher_image_plateau Decors.tile_roadHillN (transformation_iso (3, 0));
  afficher_image_plateau Decors.tile_roadHillS (transformation_iso (4, 0));
  afficher_image_plateau Decors.tile_crossroadNES (transformation_iso (5, 0));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (6, 0));
  afficher_image_plateau Decors.tile_roadNS (transformation_iso (7, 0));
  afficher_image_plateau Decors.tile_roadNE (transformation_iso (8, 0));
  afficher_image_plateau Decors.tile_beachSW (transformation_iso (9, 0));
  afficher_image_plateau Decors.tile_beachCornerNE (transformation_iso (10, 0));

  afficher_image_plateau Decors.tile_water (transformation_iso ((-1), (-1)));
  afficher_image_plateau Decors.tile_beachCornerES (transformation_iso (0, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (1, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (2, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (3, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (4, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (5, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (6, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (7, (-1)));
  afficher_image_plateau Decors.tile_beachE (transformation_iso (8, (-1)));
  afficher_image_plateau Decors.tile_beachCornerNE (transformation_iso (9, (-1)));
  afficher_image_plateau Decors.tile_water (transformation_iso (10, (-1)));

  afficher_image_plateau Decors.tile_treeAltShort (transformation_iso (2, 7))
;;

afficher_plateau ();;
Graphics.remember_mode false;;

let afficher_image_mobile img (i,j) = Dessiner.dessiner_image img (!i+40) (!j+425);;

let pieces =  [
		transformation_iso(2, 9);
		transformation_iso(3, 9);
		transformation_iso(4, 9);
		transformation_iso(5, 9);
		transformation_iso(6, 9);
		transformation_iso(7, 9);
		transformation_iso(8, 9);
		transformation_iso(9, 9);
		transformation_iso(10, 9);
		transformation_iso(2, 8);
		transformation_iso(3, 8);
		transformation_iso(5, 8);
		transformation_iso(7, 8);
		transformation_iso(10, 8);
		transformation_iso(11, 8);
		transformation_iso(2, 7);
		transformation_iso(5, 7);
		transformation_iso(7, 7);
		transformation_iso(11, 7);
		transformation_iso(2, 6);
		transformation_iso(5, 6);
		transformation_iso(7, 6);
		transformation_iso(11, 6);
		transformation_iso(2, 5);
		transformation_iso(3, 5);
		transformation_iso(4, 5);
		transformation_iso(5, 5);
		transformation_iso(6, 5);
		transformation_iso(7, 5);
		transformation_iso(8, 5);
		transformation_iso(9, 5);
		transformation_iso(10, 5);
		transformation_iso(11, 5);
		transformation_iso(6, 4);
		transformation_iso(2, 4);
		transformation_iso(4, 4);
		transformation_iso(5, 4);
		transformation_iso(7, 4);
		transformation_iso(11, 4);
		transformation_iso(2, 3);
		transformation_iso(7, 3);
		transformation_iso(11, 3);
		transformation_iso(2, 2);
		transformation_iso(3, 2);
		transformation_iso(7, 2);
		transformation_iso(11, 2);
		transformation_iso(2, 1);
		transformation_iso(3, 1);
		transformation_iso(10, 1);
		transformation_iso(11, 1);
		transformation_iso(3, 0);
		transformation_iso(4, 0);
		transformation_iso(5, 0);
		transformation_iso(6, 0);
		transformation_iso(7, 0);
		transformation_iso(8, 0);
		transformation_iso(9, 0);
		transformation_iso(10, 0)
	]
;;

let bornes =	[
		transformation_iso((-1), 0);
		transformation_iso((-1), 1);
		transformation_iso((-1), 2);
		transformation_iso((-1), 3);
		transformation_iso((-1), 4);
		transformation_iso((-1), 5);
		transformation_iso((-1), 6);
		transformation_iso((-1), 7);
		transformation_iso((-1), 8);
		transformation_iso((-1), 9);
		transformation_iso(10, 0);
		transformation_iso(10, 1);
		transformation_iso(10, 2);
		transformation_iso(10, 3);
		transformation_iso(10, 4);
		transformation_iso(10, 5);
		transformation_iso(10, 6);
		transformation_iso(10, 7);
		transformation_iso(10, 8);
		transformation_iso(10, 9);
		transformation_iso(0, (-1));
		transformation_iso(1, (-1));
		transformation_iso(2, (-1));
		transformation_iso(3, (-1));
		transformation_iso(4, (-1));
		transformation_iso(5, (-1));
		transformation_iso(6, (-1));
		transformation_iso(7, (-1));
		transformation_iso(8, (-1));
		transformation_iso(9, (-1));
		transformation_iso(0, 10);
		transformation_iso(1, 10);
		transformation_iso(2, 10);
		transformation_iso(3, 10);
		transformation_iso(4, 10);
		transformation_iso(5, 10);
		transformation_iso(6, 10);
		transformation_iso(7, 10);
		transformation_iso(8, 10);
		transformation_iso(9, 10)
	]
;;

let perso_i,perso_j = ref 7, ref 1;;

let nb_deplacement_restant = ref 10;;

let afficher_decor () = Graphics.synchronize();;
let afficher_perso() = afficher_image_mobile perso (transformation_iso(!perso_i, !perso_j));;
let afficher_mobiles () =
  List.iter (afficher_image_mobile ObjetMobile.piece) pieces;
  afficher_perso ();;


let deplacer direction =
  let () = match direction with
    | E -> perso_j := ((!perso_j + 1) mod 10); nb_deplacement_restant := !nb_deplacement_restant - 1
    | O -> perso_j := ((!perso_j - 1) mod 10); if (!perso_j<0) then begin perso_j := !perso_j + 10 end; nb_deplacement_restant := !nb_deplacement_restant - 1
    | S -> perso_i := ((!perso_i + 1) mod 10); nb_deplacement_restant := !nb_deplacement_restant - 1
    | N -> perso_i := ((!perso_i - 1) mod 10); if (!perso_i<0) then begin perso_i := !perso_i + 10 end; nb_deplacement_restant := !nb_deplacement_restant - 1
  in
  (*let dans_le_decors (di, dj) = 
    if(!di,!dj) = (!perso_i,!perso_j) then (match direction with
    | E ->  begin perso_j := (!perso_j - 1) mod 10; print_string "Déplacement impossible \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end
    | O -> begin if((!perso_j - 10) < 0) then perso_j := 0 else perso_j := (!perso_j + 1) mod 10; print_string "Déplacement impossible \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end
    | S -> begin perso_i := (!perso_i - 1) mod 10; print_string "Déplacement impossible \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end
    | N -> begin if((!perso_i - 10) < 0) then perso_i := 0 else perso_i := (!perso_i + 1) mod 10; print_string "Déplacement impossible \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end)
  in
  let ramasser_pieces (ri,rj) =
    if (!ri,!rj) = (transformation_iso(!perso_i,!perso_j)) then
      begin
        ri := 10000;
        rj := 10000;
      end
  in

  let hors_du_plateau (si,sj) =  
	if(!si,!sj) = (!perso_i,!perso_j) then (match direction with
    | E|O -> begin (if(!sj = -1) then perso_j := 0 else if(!sj = 10) then perso_j := 9);print_string "Déplacement impossible hors des limites du jeu \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end
    | S|N -> begin (if(!si = -1) then perso_i := 0 else if(!si = 10) then perso_i := 9);print_string "Déplacement impossible hors des limites du jeu \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end)
  in	
 let plusdepiece () =
	let rec verifpiece p = match p with
	| [] -> Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne"
	| [(x,y)] -> begin if (!x,!y)=(-10000,-10000) then Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne" end
	| (x,y)::xs -> if (!x,!y)=(-10000,-10000) then verifpiece xs else ()
	
	in verifpiece pieces
 in
 let plusdedeplacement () =
	let rec verifdeplacement p = match !p with
	| 0 -> Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez perdu"
	| _ -> ()
	
	in verifdeplacement nb_deplacement_restant

  in  
  List.iter hors_du_plateau bornes;
  List.iter dans_le_decors bornes;
  List.iter ramasser_pieces pieces;*)
  afficher_decor ();
  afficher_mobiles ();;
  (*plusdedeplacement ();
  plusdepiece ();;*)

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
