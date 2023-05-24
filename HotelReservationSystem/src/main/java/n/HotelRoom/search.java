package n.HotelRoom;

public class search {
	//variables
	private int id;
	private String description;
	private String location;
	private int rating;
	private int pa;
	private int wifi;
	private int rt;
	private String image;
	
	//constructor
	public search(int id, String description, String location, int rating, int pa, int wifi, int rt, String image) {
		super();
		this.id = id;
		this.description = description;
		this.location = location;
		this.rating = rating;
		this.pa = pa;
		this.wifi = wifi;
		this.rt = rt;
		this.image = image;
	}
	
	//getters
	public int getId() {
		return id;
	}
	public String getDescription() {
		return description;
	}
	public String getLocation() {
		return location;
	}
	public int getRating() {
		return rating;
	}
	public int getPa() {
		return pa;
	}
	public int getWifi() {
		return wifi;
	}
	public int getRt() {
		return rt;
	}
	public String getImage() {
		return image;
	}
	
	

}
