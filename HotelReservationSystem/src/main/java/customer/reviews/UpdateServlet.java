package customer.reviews;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
//update controller
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomNum = request.getParameter("roomNum");
		String behavRecep = request.getParameter("behavRecep");
		String checkIn = request.getParameter("checkIn");
		String cleanliness = request.getParameter("cleanliness");
		String houseKeeping = request.getParameter("houseKeeping");
		String food = request.getParameter("food");
		String price = request.getParameter("price");
		String comment = request.getParameter("comment");
		
		boolean isTrue;
		
		isTrue = reviewDBUtil.editReviews(roomNum, behavRecep, checkIn, cleanliness, houseKeeping, food, price, comment);
		
		if(isTrue == true) {  
			
			List<Reviews> revDetails = reviewDBUtil.getreviewDetails(roomNum); 
			request.setAttribute("revDetails", revDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displayReviews.jsp");
			dis.forward(request, response);
		}
		else {
			List<Reviews> revDetails = reviewDBUtil.getreviewDetails(roomNum);
			request.setAttribute("revDetails", revDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displayReviews.jsp");
			dis.forward(request, response);
		}
		
		
		
			
		}

}
