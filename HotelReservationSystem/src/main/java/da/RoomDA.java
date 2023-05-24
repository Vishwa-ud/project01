package da;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Room;



//this data access class  provides CRUD database  operations for the table rooms in the database  
public class RoomDA {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/hotel";
	private String jdbcUsername = "root";
	private String jdbcPassword = ".Qnadun2001";

	//SQL STATEMENTS 
	private static final String INSERT_ROOMS_SQL = "INSERT INTO rooms" + "  (status, bed, price, facilities, location) VALUES "
			+ " (?, ?, ?, ?, ?);"; //INSERT INTO ROOMS

	private static final String SELECT_ROOMS_BY_ID = "select id,status,bed,price,facilities,location from rooms where id =?";//RETRIVE A ROOM BY ID
	private static final String SELECT_ALL_ROOMS = "select * from rooms";//SELECT ALL 
	private static final String DELETE_ROOMS_SQL = "delete from rooms where id = ?;";//DELETE FROM ROOMS
	private static final String UPDATE_ROOMS_SQL = "update rooms set status = ?,bed= ?, price =?, facilities =?, location =? where id = ?;";//UPDATE ROOMS
	

    //Connection With MySQL
	protected Connection getConnection() {
		
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	//Create Or Insert ROOMS
	public void insertRoom(Room room) throws SQLException {
		System.out.println(INSERT_ROOMS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ROOMS_SQL)) {
			preparedStatement.setString(1, room.getStatus());
			preparedStatement.setString(2, room.getBed());
			preparedStatement.setString(3, room.getPrice());
			preparedStatement.setString(4, room.getFacilities());
			preparedStatement.setString(5, room.getLocation());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	//Update ROOMS
	public boolean updateRoom(Room room) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();//Establishing a Connection
				PreparedStatement statement = connection.prepareStatement(UPDATE_ROOMS_SQL);) {
			statement.setString(1, room.getStatus());
			statement.setString(2, room.getBed());
			statement.setString(3, room.getPrice());
			statement.setString(4, room.getFacilities());
			statement.setString(5, room.getLocation());
			
			
			statement.setInt(6, room.getId());//

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	//Select ROOM by ID
	public Room selectRoom(int id) {
		Room room = null;
		//Establishing a Connection
		try (Connection connection = getConnection();
				//Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ROOMS_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			//Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			//Process the ResultSet object.
			while (rs.next()) {
				String status = rs.getString("status");
				String bed = rs.getString("bed");
				String price = rs.getString("price");
				String facilities = rs.getString("facilities");
				String location = rs.getString("location");
				room = new Room(id, status, bed, price, facilities, location);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return room;
	}
	
	//Select ROOMS
	public List<Room> selectAllRooms() {

		// using try-with-resources to avoid closing resources
		List<Room> rooms = new ArrayList<>();//room array
		//Establishing a Connection
		try (Connection connection = getConnection();

			//Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ROOMS);) {
			System.out.println(preparedStatement);
			//Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			//Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String status = rs.getString("status");
				String bed = rs.getString("bed");
				String price = rs.getString("price");
				String facilities = rs.getString("facilities");
				String location = rs.getString("location");
				rooms.add(new Room(id, status, bed, price, facilities, location));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return rooms;
	}
	
	//Delete ROOMS
	public boolean deleteRoom(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_ROOMS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	//Errors and Exceptions handler
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
	
	
	
	
	
	
}
