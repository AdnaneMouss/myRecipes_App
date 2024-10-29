package ma.ac.uir.presentation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ac.uir.DAO.singleton;
import ma.ac.uir.metier.IRecetteMetier;
import ma.ac.uir.modele.Favoris;
import ma.ac.uir.metier.RecetteMetier;

@WebServlet("/removeFav")
public class removeFav extends HttpServlet {
    private static final long serialVersionUID = 1L;
     RecetteMetier r = new RecetteMetier();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String recipeOwner = request.getParameter("recipeOwner");
        String title = request.getParameter("title");

        Favoris favoris = new Favoris(0, userName, recipeOwner, title, "", "", null, "");
        boolean result = r.removeFavorite(favoris);
if(result) {
	response.sendRedirect("http://localhost:8080/najib/views/successdelete.jsp");
}
else {
	response.sendRedirect("http://localhost:8080/najib/views/errordelete.jsp");
}
    }

   
}
