package customer.reviews;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddReview")
public class AddReview extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomNum = request.getParameter("roomNum");
		String behavRecep = request.getParameter("receptionist");
		String checkIn = request.getParameter("check");
		String cleanliness = request.getParameter("clean");
		String houseKeeping = request.getParameter("house");
		String food = request.getParameter("food");	
		String price = request.getParameter("price");	
		String comment = request.getParameter("comment");
		
		boolean isTrue;
		
		isTrue = reviewDBUtil.insertReview(roomNum, behavRecep, checkIn, cleanliness, houseKeeping, food, price,  comment);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("displayReviews.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}

}
