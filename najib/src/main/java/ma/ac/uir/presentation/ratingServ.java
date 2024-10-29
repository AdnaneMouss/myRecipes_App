package ma.ac.uir.presentation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;  // Ajout de l'importation pour List
import javax.servlet.RequestDispatcher;  // Ajout de l'importation pour RequestDispatcher
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ac.uir.DAO.singleton;
import ma.ac.uir.metier.IRecetteMetier;
import ma.ac.uir.modele.Rating;
import ma.ac.uir.modele.commentaires;
import ma.ac.uir.metier.RecetteMetier;
import ma.ac.uir.metier.UserMetier;


@WebServlet("/ratingServ")
public class ratingServ extends HttpServlet {
    private static final long serialVersionUID = 1L;
    UserMetier r = new UserMetier();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("userName");
        String recette = request.getParameter("title");
        int rating = Integer.parseInt(request.getParameter("rating"));

        Rating rat = new Rating(0, username, recette, rating);
        
       
        boolean ajoutReussi = r.ajouterRating(rat);

        if (ajoutReussi) {
            response.sendRedirect("http://localhost:8080/najib/views/ratingsuccess.jsp"); 
        } else {
        	 response.sendRedirect("http://localhost:8080/najib/views/acceuil.jsp"); 
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
