package n.HotelRoom;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

import com.mysql.jdbc.exceptions.MySQLSyntaxErrorException;
@WebServlet("/searchServlet")
@javax.servlet.annotation.MultipartConfig
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int enablerloc = 0;
		if (request.getParameter("enableloc") != null) {                          //enabling tickboxes
			enablerloc = Integer.parseInt(request.getParameter("enableloc"));
		}
		int enablerate = 0;
		if (request.getParameter("enablerate") != null) {
			enablerate = Integer.parseInt(request.getParameter("enablerate"));
		}
		int enableoth = 0;
		if (request.getParameter("enableoth") != null) {
			enableoth = Integer.parseInt(request.getParameter("enableoth"));
		}
		
		String a = request.getParameter("loc"); //get string      //form inputs
		

		int rate = 0;
		if (request.getParameter("rate") != null) {
			rate = Integer.parseInt(request.getParameter("rate"));
		}
	
		int parking = 0;
		if (request.getParameter("parking") != null) {
			parking = Integer.parseInt(request.getParameter("parking"));
		}
		
		
		int wifi = 0;
		if (request.getParameter("wifi") != null) {
			wifi = Integer.parseInt(request.getParameter("wifi"));
		}
		int residency = 0;
		if (request.getParameter("residency") != null) {
			residency = Integer.parseInt(request.getParameter("residency"));
		}



		String searcher = "SELECT * FROM hotels WHERE 1=1"; // initialize the query with a WHERE clause that is always true
		String searcherComp = "SELECT * FROM hotels WHERE 1=1";   //1=1 is a placeholder

		if (enablerloc == 1) { 
			searcher += " AND Location = '" + a + "'";
		}

		
		if (enablerate == 1) {
			
			if (rate > 0) {
				searcher += " AND Rating = " + rate;
			} else if (rate == 0) { //-99 takes as any value
				searcher += " AND 2 = 2"; //placeholder 2 gives all results
			}
			
		}

		if (enableoth == 1) {
			if (parking == 1) {
				searcher += " AND ParkingAvilable = 1";
			}else {
				searcher += " AND ParkingAvilable = 0";
			}

			if (wifi == 1) {
				searcher += " AND WifiAvilable = 1";
			}else {
				searcher += " AND WifiAvilable = 0";
			}

			if (residency == 1) {
				searcher += " AND ResidenceType = 1";
			}else {
				searcher += " AND ResidenceType = 0";
			}

		}

		if(searcher.equals(searcherComp)) {
			searcher += " LIMIT 0"; // add LIMIT 0 when no other filters have been added so no result shown
		}

		@SuppressWarnings("rawtypes")
		ArrayList list = new ArrayList();
		list = HotelDButility.searchByQuery(searcher); 


		request.setAttribute("Details", list);
		RequestDispatcher dis = request.getRequestDispatcher("searchOut.jsp");
		dis.forward(request, response);
		System.out.println(searcher);

		// Prints the generated query for debugging purposes
		//System.out.println(">   "+searcher+"   <");
		

	}



}
