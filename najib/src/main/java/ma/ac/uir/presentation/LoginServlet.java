package ma.ac.uir.presentation;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import ma.ac.uir.metier.UserMetier;
 // Import your JDBC class
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -7403520702226966774L;

	/**
	 * 
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        UserMetier jdbc = new UserMetier();

        boolean isAuthenticated = jdbc.authentification(username, password);

        if (isAuthenticated) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            response.sendRedirect(request.getContextPath() + "/views/interfaceUser.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/views/errorPageLogin.jsp");
        }
    }
}
