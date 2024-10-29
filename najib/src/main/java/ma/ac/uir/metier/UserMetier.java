package ma.ac.uir.metier;

import java.util.LinkedList;

import ma.ac.uir.modele.*;
import ma.ac.uir.presentation.Comment;
import ma.ac.uir.DAO.*;

public class UserMetier implements IUserMetier {
	IUserDAO dao = new userDAO();
	public boolean creerCompte(user u){
		return dao.creerCompte(u);
	}
	public boolean authentification(String login, String password) {
		return dao.authentification(login, password);
	}
	
	public user getUserById(String username) {
        return dao.getUserById(username);
    }
	@Override
	public boolean ajouterCommentaire(commentaires c) {
return dao.ajouterCommentaire(c);
	}
	@Override
	public boolean UpdateProfile(user updatedUser) {
		return dao.UpdateProfile(updatedUser);
	}
	@Override
	public boolean ajouterRating(Rating rat) {
return dao.ajouterRating(rat);
	}
	public boolean ajouterRecette(recette nouvelleRecette) {
		return dao.ajouterRecette( nouvelleRecette);
		
	}
	
}
