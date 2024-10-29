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
import ma.ac.uir.metier.RecetteMetier;

@WebServlet("/FavSer")
public class FavSer extends HttpServlet {
    private static final long serialVersionUID = 1L;
    RecetteMetier r = new RecetteMetier();
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String recipeOwner = request.getParameter("recipeOwner");
        String title = request.getParameter("title");

        Favoris favoris = new Favoris(0, userName, recipeOwner, title, "", "", null, "");
        boolean result = r.addFavorite(favoris);
        if(result) {
        	   RequestDispatcher dispatcher = request.getRequestDispatcher("/views/favoris.jsp");
        	    dispatcher.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
