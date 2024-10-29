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

import ma.ac.uir.DAO.IRecetteDAO;
import ma.ac.uir.DAO.IUserDAO;
import ma.ac.uir.DAO.RecetteDAO;
import ma.ac.uir.DAO.singleton;
import ma.ac.uir.DAO.userDAO;
import ma.ac.uir.metier.UserMetier;
import ma.ac.uir.modele.recette;

@WebServlet("/deleteRecipe")
@MultipartConfig
public class deleteRecipe extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IRecetteDAO userMetier = new RecetteDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("userName");
        String title = request.getParameter("title");

        boolean ajoutReussi = userMetier.supprimerRecette(username,title);

        if (ajoutReussi==true) {
            response.sendRedirect("http://localhost:8080/najib/views/succesSuppression.jsp"); 
        } else {
            response.sendRedirect("http://localhost:8080/najib/views/echecSuppression.jsp"); 
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
