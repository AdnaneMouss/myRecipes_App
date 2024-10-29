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
import ma.ac.uir.modele.user;
import ma.ac.uir.metier.RecetteMetier;
import ma.ac.uir.metier.UserMetier;

@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
    private static final long serialVersionUID = 1L;
    UserMetier userMetier = new UserMetier();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String firstName = request.getParameter("firstName");
        String secondName = request.getParameter("secondName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        user updatedUser = new user(0, firstName, secondName, username, email, password);

       
        boolean updateSuccess = userMetier.UpdateProfile(updatedUser);

        if (updateSuccess) {
            response.sendRedirect("http://localhost:8080/najib/views/login.jsp"); 
        } else {
            response.sendRedirect("http://localhost:8080/najib/views/errorSignup.jsp");
        }
    }
}

