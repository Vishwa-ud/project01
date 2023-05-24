package model;

public class Room {//declaring variables
	private int id;
	private String status;
	private String bed;
	private String price;
	private String facilities;
	private String location;
	
	//Constructors
	public Room(int id, String status, String bed, String price, String facilities, String location) {
		super();
		this.id = id;
		this.status = status;
		this.bed = bed;
		this.price = price;
		this.facilities = facilities;
		this.location = location;
	}
	//Constructors
	public Room(String status, String bed, String price, String facilities, String location) {
		super();
		this.status = status;
		this.bed = bed;
		this.price = price;
		this.facilities = facilities;
		this.location = location;
	}
	//Getters And Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBed() {
		return bed;
	}
	public void setBed(String bed) {
		this.bed = bed;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}public String getLocation() {//edit
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
}
