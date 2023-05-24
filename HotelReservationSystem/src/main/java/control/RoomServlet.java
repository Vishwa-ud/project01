package control;

import java.io.IOException;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import da.RoomDA;
import model.Room;

/**
 * Servlet implementation class RoomServlet
 **/

@WebServlet("/")
public class RoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoomDA roomDA;
	
	public void init() {
		roomDA = new RoomDA();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();// request object
			//Switch to handle all requests
		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);//handle new request
				break;
			case "/insert":
				insertRoom(request, response);//handle insert request
				break;
			case "/delete":
				deleteRoom(request, response);//handle delete request
				break;
			case "/edit":
				showEditForm(request, response);//handle edit request
				break;
			case "/update":
				updateRoom(request, response);//handle update request
				break;
			case "/list":
				listRoom(request, response);//handle update request
				break;
			default:
				listRoom(request, response);//handle default request
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	//Forward Request 
	private void listRoom(HttpServletRequest request, HttpServletResponse response)
	        throws SQLException, IOException, ServletException {
	    List<Room> listRoom = roomDA.selectAllRooms();
	    request.setAttribute("listRoom", listRoom);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("room-list.jsp");
	    dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("room-form.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Room existingRoom = roomDA.selectRoom(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("room-form.jsp");
		request.setAttribute("room", existingRoom);
		dispatcher.forward(request, response);

	}
	 //insert method
	private void insertRoom(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		String status = request.getParameter("status");//extracting details from request object
		String bed = request.getParameter("bed");
		String price = request.getParameter("price");
		String facilities = request.getParameter("facilities");
		String location = request.getParameter("location");
		
		Room newRoom = new Room(status, bed, price, facilities, location);
		roomDA.insertRoom(newRoom);//to save details
		response.sendRedirect("list");
	}
	//update method
	private void updateRoom(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String status = request.getParameter("status");
		String bed = request.getParameter("bed");
		String price = request.getParameter("price");
		String facilities = request.getParameter("facilities");
		String location = request.getParameter("location");
		Room editRoom = new Room(id, status, bed, price, facilities, location);
		roomDA.updateRoom(editRoom);
		response.sendRedirect("list");
	}
	//delete  method
	private void deleteRoom(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		roomDA.deleteRoom(id);
		response.sendRedirect("list");

	}

}
