package u.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.sql.*;

public class LoginDbUtility {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/hotel";
	private static String jdbcUsername = "root";
	private static String jdbcPassword = ".Qnadun2001";

	//SQL STATEMENTS 
	private static final String INSERT_USER_SQL = "INSERT INTO user" + "  (username, password, usertype, mobile) VALUES "
			+ " (?, ?, ?, ?);"; //INSERT INTO USER

	private static final String SELECT_ALL_USER = "select * from user";//SELECT ALL 
	
	
	

    //Connection With MySQL
	protected static Connection getConnection() {
		
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
//Create Or Insert USER
	public static int insertUser(User user) throws SQLException {
		
		int result = -1;
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getUsertype());
			preparedStatement.setString(4, user.getMobile());
			System.out.println(preparedStatement);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
		
		return result;
	}
//Select USER by ID
	public static User getPass(String usernm) {
		User user = null;

		//Establishing a Connection
		try (Connection connection = getConnection();
		    //Create a statement using connection object
		    Statement statement = connection.createStatement();) {

		    //Build the query to retrieve the user by username and password
		    String query = "SELECT * FROM User WHERE username='" + usernm + "'";
		    
		    //Execute the query and store the result set
		    ResultSet rs = statement.executeQuery(query);
		    
		    //Check if a user was found
		    if (rs.next()) {
		        //Get the user data from the resultset and create a new User object
		        int userId = rs.getInt("id");
		        String username = rs.getString("username");
		        String password = rs.getString("password");
		        String userType = rs.getString("UserType");
		        String phoneNumber = rs.getString("mobile");
		        user = new User(userId, username, password, userType, phoneNumber);
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		}

		//Return the User object or null if no user was found
		return user;
	}
	
//Errors and Exceptions handler
	private static void printSQLException(SQLException ex) {
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
