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
import ma.ac.uir.modele.Favoris;
import ma.ac.uir.modele.commentaires;
import ma.ac.uir.metier.RecetteMetier;
import ma.ac.uir.metier.UserMetier;

@WebServlet("/Comment")
public class Comment extends HttpServlet {
    private static final long serialVersionUID = 1L;
    UserMetier r = new UserMetier();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("userName");
        String recette = request.getParameter("title");
        String text = request.getParameter("com");

        commentaires c = new commentaires(0, username, recette, text);
        
        
        boolean ajoutReussi = r.ajouterCommentaire(c);

        if (ajoutReussi) {
            response.sendRedirect("http://localhost:8080/najib/views/commentsuccess.jsp"); 
        } else {
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
