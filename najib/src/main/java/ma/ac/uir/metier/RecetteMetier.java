package ma.ac.uir.metier;

import java.util.LinkedList;
import java.util.List;

import ma.ac.uir.modele.*;
import ma.ac.uir.DAO.*;
public class RecetteMetier implements IRecetteMetier {
	IRecetteDAO dao = new RecetteDAO();
	public boolean ajouterRecette(recette rc) {
		return dao.ajouterRecette(rc);
	}
	@Override
	public boolean modifierRecette(recette rc) {
		return dao.modifierRecette(rc);
	}
	@Override
	public boolean supprimerRecette(String username, String title) {
		return dao.supprimerRecette(username,title);
	}
	@Override
	public LinkedList<recette> getAllRecipes(){
		return dao.getAllRecipes();
	}
	@Override
	public boolean addFavorite(Favoris f) {
		return dao.addFavorite(f);
	}
	public boolean removeFavorite(Favoris f) {
		return dao.removeFavorite(f);
	}
	@Override
	public LinkedList<recette> getRecipesByCategory(String category) {
		return dao.getRecipesByCategory(category);
	}
	@Override
	public recette getRecette(String cat) {
		return dao.getRecette(cat);
	}

}


