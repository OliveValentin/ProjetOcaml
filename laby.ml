open Directions;;
module ObjetMobile = Mobile;;
module Personnage = Personnage;;
let perso = Personnage.hamster;;
(* Graphics.close_graph ();; *)
Graphics.open_graph " 500x500";;

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

let pieces =  [(ref 9,ref 9)];;

let rochers =  [(ref 0,ref 3);(ref 0, ref 8);(ref 1,ref 0);(ref 1, ref 1);(ref 1, ref 2);(ref 1,ref 3);(ref 1, ref 5);(ref 1,ref 6);(ref 1,ref 9);(ref 2,ref 0);(ref 2, ref 2);(ref 2,ref 3);(ref 2,ref 6);(ref 2, ref 7);(ref 2,ref 9);(ref 3,ref 0);(ref 3, ref 2);(ref 3,ref 3);(ref 3, ref 4);(ref 3,ref 6);(ref 3, ref 7);(ref 3,ref 9);(ref 4,ref 0);(ref 4,ref 6);(ref 4, ref 7);(ref 4,ref 9);(ref 5,ref 0);(ref 5, ref 2);(ref 5,ref 3);(ref 5, ref 4);(ref 5, ref 5);(ref 5,ref 9);(ref 6,ref 0);(ref 6, ref 4);(ref 6, ref 5);(ref 6, ref 7);(ref 6,ref 9);(ref 7,ref 0);(ref 7, ref 1);(ref 7, ref 2);(ref 7, ref 4);(ref 7, ref 5);(ref 7, ref 7);(ref 7, ref 8);(ref 8, ref 1);(ref 8, ref 2);(ref 8, ref 5);(ref 8,ref 9);(ref 9, ref 5);(ref 9,ref 6);(ref 9, ref 7)];;

let bornes =	[(ref (-1),ref 0);(ref (-1), ref 1);(ref (-1),ref 2);(ref (-1), ref 3);(ref (-1), ref 4);(ref (-1),ref 5);(ref (-1), ref 6);(ref (-1),ref 7);(ref (-1),ref 8);(ref (-1),ref 9);(ref 10,ref 0);(ref 10, ref 1);(ref 10,ref 2);(ref 10, ref 3);(ref 10, ref 4);(ref 10,ref 5);(ref 10, ref 6);(ref 10,ref 7);(ref 10,ref 8);(ref 10,ref 9);(ref 0,ref (-1));(ref 1, ref (-1));(ref 2,ref (-1));(ref 3, ref (-1));(ref 4, ref (-1));(ref 5,ref (-1));(ref 6, ref (-1));(ref 7,ref (-1));(ref 8,ref (-1));(ref 9,ref (-1));(ref 0,ref 10);	(ref 1, ref 10);(ref 2,ref 10);(ref 3, ref 10);(ref 4, ref 10);(ref 5,ref 10);(ref 6, ref 10);(ref 7,ref 10);(ref 8,ref 10);(ref 9,ref 10)];;

let perso_i,perso_j = ref 8, ref 0;;

let nb_deplacement_restant = ref 38;;

let afficher_decor () = Graphics.synchronize();;
let afficher_perso() = afficher perso (perso_i,perso_j);;
let afficher_mobiles () =
  List.iter (afficher ObjetMobile.piece) pieces;
  List.iter (afficher ObjetMobile.rocher) rochers;
  afficher_perso ();;


let deplacer direction =
  let () = match direction with
    | E -> perso_j := ((!perso_j + 1)); nb_deplacement_restant := !nb_deplacement_restant - 1
    | O -> perso_j := ((!perso_j - 1)); nb_deplacement_restant := !nb_deplacement_restant - 1
    | S -> perso_i := ((!perso_i + 1)); nb_deplacement_restant := !nb_deplacement_restant - 1
    | N -> perso_i := ((!perso_i - 1)); nb_deplacement_restant := !nb_deplacement_restant - 1
  in
  let dans_le_decors (di, dj) = 
    if(!di,!dj) = (!perso_i,!perso_j) then (match direction with
    | E ->  begin perso_j := (!perso_j - 1);print_string "Déplacement impossible \n"(*; nb_deplacement_restant := !nb_deplacement_restant + 1*) end
    | O -> begin perso_j := (!perso_j + 1); print_string "Déplacement impossible \n"(*; nb_deplacement_restant := !nb_deplacement_restant + 1*) end
    | S -> begin perso_i := (!perso_i - 1); print_string "Déplacement impossible \n"(*; nb_deplacement_restant := !nb_deplacement_restant + 1*) end
    | N -> begin perso_i := (!perso_i + 1); print_string "Déplacement impossible \n"(*; nb_deplacement_restant := !nb_deplacement_restant + 1*) end)
  in
  let ramasser_pieces (ri,rj) =
    if (!ri,!rj) = (!perso_i,!perso_j) then
      begin
        ri := -1;
        rj := -1;
      end
  in

  let hors_du_plateau (si,sj) =  
	if(!si,!sj) = (!perso_i,!perso_j) then (match direction with
    | E|O -> begin (if(!sj = -1) then perso_j := 0 else if(!sj = 10) then perso_j := 9);print_string "Déplacement impossible hors des limites du jeu \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end
    | S|N -> begin (if(!si = -1) then perso_i := 0 else if(!si = 10) then perso_i := 9);print_string "Déplacement impossible hors des limites du jeu \n"; nb_deplacement_restant := !nb_deplacement_restant + 1 end)
  in	
 let plusdepiece () =
	let rec verifpiece p = match p with
	| [] -> (*Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne"*) print_string "Vous avez gagné(e)\n"
	| [(x,y)] -> begin if (!x,!y)=(-1,-1) then (*Graphics.moveto (Graphics.size_x () /2) (Graphics.size_y () /2);Graphics.set_color Graphics.white;Graphics.set_text_size 72; Graphics.draw_string "Vous avez gagne"*)print_string "Vous avez gagné(e)\n" end
	| (x,y)::xs -> if (!x,!y)<>(-1,-1) then verifpiece xs else ()
	
	in verifpiece pieces
 in
  let plusdedeplacement () =
	let rec verifdeplacement p q= match (!p,q) with
	| (0,[]) -> ()
	| (0,[x,y]) -> begin if (!x,!y)<>(-1,-1) then print_string "Vous avez perdu\nVeuillez recommencer la partie.\n" else () end
	| (_,_) -> ()
	
	in verifdeplacement nb_deplacement_restant pieces
 in
  let afficher_deplacement_restant () = 
	print_string "Il vous reste ";print_int(!nb_deplacement_restant);print_string" déplacement(s).\n"

  in  
  List.iter hors_du_plateau bornes;
  List.iter dans_le_decors rochers;
  List.iter ramasser_pieces pieces;
  afficher_decor ();
  afficher_mobiles ();
  afficher_deplacement_restant ();
  plusdepiece ();
  plusdedeplacement ();;

let jouer p = Interprete.run p deplacer;;

print_string "\n##############################################\n";;
print_string "#######                                #######\n";;
print_string "#######         Hamster pickpocket     #######\n";;
print_string "#######                                #######\n";;
print_string "##############################################\n";;

(*Auteur image dans le image50.ml *)
print_string " Crédit image : Kenney Vleugels\n\t\thttp://www.ebookanoid.com\n\t\thttp://fr.fordesigner.com\n\t\timg1.wikia.nocookie.net\n\t\thttp://img101.imageshack.us\n\t\thttp://www.babelio.com/\n\n";;
afficher_mobiles ();;

print_string " Pour ce jeu, vous devez ramasser la pièces qui se trouve au bout du labyrinthe, vous avez 38 déplacement pour ce jeu. Si vous vous prenez un rocher, vous perdez quand même un déplacement. \n\n"

(* jouer (Bloc[Sud;Est;Est;Est;Nord;Nord;Nord;Ouest;Ouest;Nord;Nord;Est;Est;Est;Est;Nord;Nord;Ouest;Nord;Nord;Est;Est;Est;Sud;Est;Sud;Sud;Sud;Sud;Ouest;Ouest;Sud;Sud;Sud;Est;Est;Sud]) *)
