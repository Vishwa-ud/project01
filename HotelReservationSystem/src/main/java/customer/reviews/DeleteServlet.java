package customer.reviews;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
//Delete controller
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomNum = request.getParameter("roomNum");
		boolean isTrue;
		
		isTrue = reviewDBUtil.deleteReview(roomNum);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayReviews.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Reviews> revDetails = reviewDBUtil.getreviewDetails(roomNum);
			request.setAttribute("revDetails", revDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayReviews.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
