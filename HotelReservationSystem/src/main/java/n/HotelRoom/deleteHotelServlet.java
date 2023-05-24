package n.HotelRoom;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteRoomServlet")
public class deleteHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idTemp = request.getParameter("idToDelete");
		String[] parts = idTemp.split(" ");
		String id = parts[2];
		
		
		
		boolean isTrue = false;
		isTrue = HotelDButility.deleteHotel(id);
		if (isTrue == true) {
			
			
			request.setAttribute("message", "for [id :"+id +"-Delete]Data Deleted successfully !!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("deletion failed");
			request.setAttribute("message", "for [id :"+id +"-Delete]Failed to delete data !!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
			dis.forward(request, response);

		}

	}
}
