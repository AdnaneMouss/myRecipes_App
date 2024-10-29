package ma.ac.uir.presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;
import ma.ac.uir.DAO.IUserDAO;
import ma.ac.uir.DAO.userDAO;

/**
 * Servlet implementation class DistinctUsernameServlet
 */
@WebServlet("/DistinctUserNameServlet")
public class DistinctUserNameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IUserDAO userDao = new userDAO();
        List<String> distinctUserNames = userDao.getDistinctUserNames();

        
        request.setAttribute("distinctUserNames", distinctUserNames);

       
        request.getRequestDispatcher("/views/catalogueUser.jsp").forward(request, response);
    }
}
