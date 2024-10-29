package ma.ac.uir.DAO;

import java.util.LinkedList;
import java.util.List;

import ma.ac.uir.modele.*;
public interface IUserDAO {
public boolean creerCompte(user u);
public boolean authentification(String login, String password);
public boolean ajouterCommentaire(commentaires comment);
public boolean ajouterRating(Rating rat);
public user getUserById(String username);
public boolean UpdateProfile(user updatedUser);
LinkedList<user> getAllUsers();
public boolean ajouterRecette(recette nouvelleRecette);
public List<String> getDistinctUserNames();

}
