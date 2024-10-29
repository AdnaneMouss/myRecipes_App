package ma.ac.uir.presentation;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ma.ac.uir.DAO.singleton;
import ma.ac.uir.metier.UserMetier;
import ma.ac.uir.modele.recette;

@WebServlet("/AddRecipe")
@MultipartConfig
public class AddRecipe extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserMetier userMetier = new UserMetier();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("userName");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String ingredients = request.getParameter("ingredients");
String category = request.getParameter("category");
        recette nouvelleRecette = new recette(0, username, title, description, ingredients, null, category);

        boolean ajoutReussi = userMetier.ajouterRecette(nouvelleRecette);

        if (ajoutReussi) {
            response.sendRedirect("http://localhost:8080/najib/views/recetteAjoutee.jsp"); 
        } else {
            response.sendRedirect("http://localhost:8080/najib/views/echecAjoutRecette.jsp"); 
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
