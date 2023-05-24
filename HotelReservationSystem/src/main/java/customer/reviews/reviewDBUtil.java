package customer.reviews; 

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;

public class reviewDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insertReview(String roomNum, String behavRecep, String checkIn, String cleanliness, String houseKeeping, String food, String price, String  comment) {
		
		boolean isSuccess = false;		
		//Exception handling
		try {
			
			con = DBconnect.getConnection();
    		stmt = con.createStatement();		
    		String sql = "INSERT INTO my_reviews VALUES ('"+roomNum+"','"+behavRecep+"', '"+checkIn+"','"+cleanliness+"','"+houseKeeping+"','"+food+"','"+price+"','"+comment+"')";
    		int rs = stmt.executeUpdate(sql);
    		 
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
	}
	
	
	//Edit review function
    public static boolean editReviews(String roomNum, String behavRecep, String checkIn, String cleanliness, String houseKeeping, String food, String price, String comment) {
    	
    	boolean isSuccess = false;
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update my_reviews set behavRecep='"+behavRecep+"',checkIn='"+checkIn+"',cleanliness='"+cleanliness+"',houseKeeping='"+houseKeeping+"',food='"+food+"',price='"+price+"',comment='"+comment+"'"
    				+ "where roomNum='"+roomNum+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    //Get review function
    public static List<Reviews> getreviewDetails(String roomNum) {
    	
    	int convertedRoomNum = Integer.parseInt(roomNum);
    	
    	ArrayList<Reviews> rev = new ArrayList<>();
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where roomNum='"+convertedRoomNum+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int roomNumb = rs.getInt(1);
    			String behavRecep = rs.getString(2);
    			String checkIn = rs.getString(3);
    			String cleanliness = rs.getString(4);
    			String houseKeeping = rs.getString(5);
    			String food = rs.getString(6);
				String price = rs.getString(7);
    			String comment = rs.getString(8);
    			
    			Reviews r = new Reviews(roomNumb,behavRecep,checkIn,cleanliness,houseKeeping,food,price,comment);
    			rev.add(r);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return rev;	
    }
    	//Delete review function
        public static boolean deleteReview(String roomNum) {
        	
        	int conroomNum = Integer.parseInt(roomNum);
        	boolean isSuccess = false; 
        	
        	try {
        		
        		con = DBconnect.getConnection();
        		stmt = con.createStatement();
        		String sql = "delete from my_reviews where roomNum='"+conroomNum+"'";
        		int r = stmt.executeUpdate(sql);
        		
        		if (r > 0) {
        			isSuccess = true;
        		}
        		else {
        			isSuccess = false;
        		}
        		
        	}
        	catch (Exception e) {
        		e.printStackTrace();
        	}
        	
        	return isSuccess; 
        
        
    	
    }
}
