package ma.ac.uir.presentation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma.ac.uir.metier.IUserMetier;
import ma.ac.uir.metier.UserMetier;
import ma.ac.uir.modele.user;

@WebServlet("/profile")  
public class profile extends HttpServlet {  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


        IUserMetier i = new UserMetier();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
String userName =request.getParameter("userName");
           
            user user = i.getUserById(userName);
            request.setAttribute("util", user);

            response.sendRedirect(request.getContextPath() + "/views/profile.jsp");
        } 
    }
