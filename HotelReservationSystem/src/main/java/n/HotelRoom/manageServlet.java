package n.HotelRoom;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/manageServlet")
public class manageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String id = request.getParameter("id");
		int idInt = 0;
		if (id != null && !id.isEmpty()) {
			idInt = Integer.parseInt(id);
		}

		String desc = request.getParameter("desc");
		String location = request.getParameter("location");
		String image = request.getParameter("image");
		
		int rating = 0;
		if (request.getParameter("rating") != null) {
			rating = Integer.parseInt(request.getParameter("rating"));
		}
		int pa = 0;
		if (request.getParameter("pa") != null) {
			pa = Integer.parseInt(request.getParameter("pa"));
		}
		int wifi = 0;
		if (request.getParameter("wifi") != null) {
			wifi = Integer.parseInt(request.getParameter("wifi"));
		}
		int rt = 0;
		if (request.getParameter("rt") != null) {
			rt = Integer.parseInt(request.getParameter("rt"));
		}
//		

		boolean bool = HotelDButility.updateHotel(idInt, desc, location, rating, pa, wifi, rt, image); 
		
		if(bool == true) {
			request.setAttribute("message", "for [id :"+idInt +"-Manage]Data Changed successfully !!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
			dis.forward(request, response);
		} else {
			request.setAttribute("message", "SORRY [id :"+idInt +"-Manage]REQUEST FAILED !!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
			dis.forward(request, response);
		}
		
	}

}
