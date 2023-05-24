package n.HotelRoom;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class HotelDButility {
	@SuppressWarnings("unused")
	private static boolean isSuccess;  //used when insert hotel function executed
	private static Connection con = null;
	private static Statement stmt = null;
	
	private static ResultSet rs = null;

	public static boolean insertHotel(String description,String location, int rating, int parking, int wifi, int recidence, String image) {

		boolean isSuccess = false;

		try {
			con = dbConnector.getConnection();
			stmt = con.createStatement();
			String sql = "insert into hotels values(0,'"+description+"','"+location+"', "+rating+", "+parking+", "+wifi+","+recidence+", '"+image+"');";
			int res = stmt.executeUpdate(sql);

			if(res > 0) {
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

	public static ArrayList<search> searchByQuery(String query){
		ArrayList<search> list = new ArrayList();

		try {
			con = dbConnector.getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int id = rs.getInt(1);
				String desc = rs.getString(2);
				String loc = rs.getString(3);
				int rate = rs.getInt(4);
				int pa = rs.getInt(5);
				int wifi = rs.getInt(6);
				int rt = rs.getInt(7);
				String path = rs.getString(8);

				search item = new search(id, desc, loc, rate, pa, wifi, rt, path);
				list.add(item);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;


	}
	
	
	public static boolean updateHotel(int id, String description,String location,int rating, int pa, int wifi, int rt, String image) {
		
		boolean isSuccess = false;
		
		try {
			con = dbConnector.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE hotels SET HotelDesc = '"+description+"' ,Location = '"+location+"' , Rating = "+rating+" , ParkingAvilable = "+pa+" , wifiAvilable = "+wifi+" , ResidenceType = "+rt+" , HotelImage = '"+image+"'  WHERE Hid =  "+id+" ;";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
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
	
	public static boolean deleteHotel(String id) {
		
		boolean res = false;
		int delId = Integer.parseInt(id);
		
		try {
			
			con = dbConnector.getConnection();
			stmt = con.createStatement();
			String sql = "delete from hotels where Hid="+delId+";";
			
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				res = true;
				
			}
			else {
				res = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
		
	}
	
	class MyException extends Exception {
		
		private static final long serialVersionUID = 1L;

		MyException(String msg){
			super(msg);
		}
		
	}
	
//	
//	public static ArrayList<search> getCustomer(int id){
//		ArrayList<search> list = new ArrayList();
//		
//		try {
//			con = dbConnector.getConnection();
//			stmt = con.createStatement();
//			String query = "SELECT * FROM rooms WHERE rid = "+id+";";
//			
//			ResultSet rs = stmt.executeQuery(query);
//
//			while (rs.next()) {
//				int rid = rs.getInt(1);
//				String desc = rs.getString(2);
//				float price = rs.getFloat(3);
//				int bedc = rs.getInt(4);
//				int ac = rs.getInt(5);
//				int ab = rs.getInt(6);
//				int pav = rs.getInt(7);
//				String path = rs.getString(8);
//
//				search item = new search(rid, desc, price, bedc, ac, ab, pav, path);
//				list.add(item);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		
//		
//		return list;
//
//	}
//	



}
