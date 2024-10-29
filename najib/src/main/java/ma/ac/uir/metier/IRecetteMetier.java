package ma.ac.uir.metier;

import java.util.LinkedList;
import java.util.List;

import ma.ac.uir.modele.*;
public interface IRecetteMetier {
	public boolean ajouterRecette(recette rc);
	public boolean modifierRecette(recette rc);
	public boolean supprimerRecette(String username, String title);
	public LinkedList<recette> getAllRecipes();
	public LinkedList<recette> getRecipesByCategory(String category);
	public boolean addFavorite(Favoris f);
	public boolean removeFavorite(Favoris f);
	public recette getRecette(String cat);
}
