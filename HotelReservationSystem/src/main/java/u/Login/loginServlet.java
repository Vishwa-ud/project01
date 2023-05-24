package u.Login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String username = request.getParameter("user");
	    String password = request.getParameter("pass");
	    
	    User user = LoginDbUtility.getPass(username);
	    
	    if (user != null && user.getPassword().equals(password)) {
	        if (user.getUsertype().equalsIgnoreCase("g")) {
	            request.setAttribute("message", "Welcome Guest!");
	            RequestDispatcher disp = request.getRequestDispatcher("Home.jsp");
	            disp.forward(request, response);
	        } else if (user.getUsertype().equalsIgnoreCase("a")) {
	            request.setAttribute("message", "Login Successful as Admin!");
	            RequestDispatcher disp = request.getRequestDispatcher("AdminView.jsp");
	            disp.forward(request, response);
	        } else {
	            RequestDispatcher disp = request.getRequestDispatcher("unsuccess.jsp");
	            disp.forward(request, response);
	        }
	    } else {
	        RequestDispatcher disp = request.getRequestDispatcher("unsuccess.jsp");
	        disp.forward(request, response);
	    }
	}
}


