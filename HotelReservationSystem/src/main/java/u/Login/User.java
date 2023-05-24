package u.Login;

public class User {
	private int id;
	private String username;
	private String password;
	private String usertype;
	private String mobile;
	
	
	public User(int id, String username, String password, String usertype, String mobile) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.usertype = usertype;
		this.mobile = mobile;
	}


	public int getId() {
		return id;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}


	public String getUsertype() {
		return usertype;
	}


	public String getMobile() {
		return mobile;
	}
	
	

}
