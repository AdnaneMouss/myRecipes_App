package ma.ac.uir.DAO;

import java.util.LinkedList;

import ma.ac.uir.modele.*;


public interface IRecetteDAO {
	
public boolean ajouterRecette(recette rc);
public boolean modifierRecette(recette rc);
public LinkedList<recette> getAllRecipes();
public boolean addFavorite(Favoris f);
public boolean removeFavorite(Favoris f);
public LinkedList<recette> getRecipesByCategory(String category);
public recette getRecette(String cat);
Favoris getUserById(String username);
boolean supprimerRecette(String username, String title);
recette getRecetteByUser(String username);
}
