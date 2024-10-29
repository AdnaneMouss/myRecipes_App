package ma.ac.uir.metier;

import java.util.LinkedList;

import ma.ac.uir.modele.*;
public interface IUserMetier {
	public boolean creerCompte(user u);
	public boolean authentification(String login, String password);
	public user getUserById(String username);
	public boolean ajouterCommentaire(commentaires c);
	public boolean UpdateProfile(user updatedUser);
	public boolean ajouterRating(Rating rat);
	public boolean ajouterRecette(recette nouvelleRecette);
}
