package ma.ac.uir.presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;
import ma.ac.uir.metier.UserMetier;
import ma.ac.uir.modele.user;

@WebServlet("/CreateAccountServlet")
public class CreateAccountServlet extends HttpServlet {
    private static final long serialVersionUID = -66529087278642568L;
    private UserMetier userMetier = new UserMetier();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String firstName = request.getParameter("prenom");
        String lastName = request.getParameter("nom");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        
        user newUser = new user(0, firstName, lastName, username, email, password);

       
        boolean isAccountCreated = userMetier.creerCompte(newUser);

        if (isAccountCreated) {
            
            response.sendRedirect(request.getContextPath() + "/views/login.jsp");
        }
        else {
        	 response.sendRedirect("http://localhost:8080/najib/views/errorSignup2.jsp");
        }
    }
}
