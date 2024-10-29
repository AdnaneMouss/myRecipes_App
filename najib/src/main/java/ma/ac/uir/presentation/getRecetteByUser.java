package ma.ac.uir.presentation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma.ac.uir.DAO.IRecetteDAO;
import ma.ac.uir.DAO.RecetteDAO;
import ma.ac.uir.modele.recette;

/**
 * Servlet implementation class getRecetteByUser
 */
@WebServlet("/getRecetteByUser")
public class getRecetteByUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getRecetteByUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	IRecetteDAO r = new RecetteDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	    String username = request.getParameter("username");
	   recette rec = r.getRecetteByUser(username);
        request.setAttribute("get", rec);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/myRecipes.jsp");
        dispatcher.forward(request, response);
        
}

}
