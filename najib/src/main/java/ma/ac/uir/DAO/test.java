package ma.ac.uir.DAO;

import java.util.LinkedList;


import ma.ac.uir.modele.*;
import java.util.LinkedList;

public class test {
	public static void main(String[] args) {
		try {
			singleton.getConnection();
			System.out.print("Connection established ");
			
			userDAO pdao = new userDAO();
			RecetteDAO r = new RecetteDAO();
			user u = new user(0,"adnane","mouss", "aaa","u","ee");
			Favoris favoris = new Favoris(0, "adnane_12", "ghjk", "ghjk", "", "", null, "");
			commentaires c = new commentaires(0,"a","a","a");
			Rating rat = new Rating(0, "a", "b", 1);
			recette rec = new recette(0, "", "", "", "", null, "");
			//boolean b=pdao.creerCompte(u);
            //boolean a = pdao.authentification("uu", "ee");
            //boolean com = pdao.ajouterCommentaire(c);
            //System.out.println(""+a);
			//RecetteDAO rdao = new RecetteDAO();
			//recette r = new recette(1, "é", "ERTY", "ERTYUIUYTR", "e", "f", "d");
			//boolean modif = rdao.modifierRecette(r);
			//boolean z = rdao.ajouterRecette(r);
			//System.out.println(""+modif);
			//r.getRecette("Dejeuner");
//pdao.getUserById("uu");
			//boolean s =pdao.ajouterCommentaire(c);System.out.println(""+s);
            //LinkedList<recette> z =r.getAllRecipes();
         // pdao.getAllUsers();
			//boolean add = r.addFavorite(fav);  System.out.println(""+add);
			//r.addFavorite(favoris);
			//r.getUserById("adnane_12");
			r.getUserById("dem");
		} catch (Exception e) {
			System.err.println("Connection failed check the exception message");
			e.printStackTrace();
		}
	}
}
