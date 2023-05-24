package u.Login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import n.HotelRoom.HotelDButility;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String un = request.getParameter("un");
		String pn = request.getParameter("pn");
		String pass = request.getParameter("pass");

		User u = new User(0 , un, pass, "g", pn);

		int result = 0;
		try {
			result = LoginDbUtility.insertUser(u);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {


		if(result >= 1) {
			System.out.println("doone");
			request.setAttribute("message", "Registering successful !!");
			RequestDispatcher disp = request.getRequestDispatcher("register.jsp");
			disp.forward(request, response);
		} else {
			System.out.println("failed");
			request.setAttribute("message", "Registering failed !!");
			RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
		}
		
		}
	}
}
