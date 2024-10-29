package ma.ac.uir.presentation;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma.ac.uir.metier.*;
import ma.ac.uir.modele.commentaires;
import ma.ac.uir.modele.recette;


@WebServlet("/RecipeServlet")  
public class RecipeServlet extends HttpServlet {  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;



    @Override
    public void init() throws ServletException {
        super.init();
    }
        IRecetteMetier jdbc = new RecetteMetier();
IUserMetier r = new UserMetier();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	    recette pdej = jdbc.getRecette("Petit-dejeuner");
	    recette dej=jdbc.getRecette("Dejeuner");
	    recette diner=jdbc.getRecette("Diner");
	    recette boissonf=jdbc.getRecette("Boisson Froide");
	    recette dessert=jdbc.getRecette("Dessert");
        request.setAttribute("pdej", pdej);
        request.setAttribute("dej", dej);
        request.setAttribute("diner", diner);
        request.setAttribute("boissonf", boissonf);
        request.setAttribute("dessert", dessert);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/catalogueUser.jsp");
        dispatcher.forward(request, response);
        
}
    
}
