package customer.reviews;

public class Reviews {
 
    private int roomNum;
    private String behavRecep;
    private String checkIn;
    private String cleanliness;
    private String houseKeeping;
    private String food;
    private String price;
    private String comment;

    public Reviews( int roomNum, String behavRecep, String checkIn, String cleanliness, String houseKeeping, String food, String price, String comment) {
        
        this.roomNum = roomNum;
        this.behavRecep = behavRecep;
        this.checkIn = checkIn;
        this.cleanliness = cleanliness;
        this.houseKeeping = houseKeeping;
        this.food = food;
        this.price = price;
        this.comment = comment;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public String getBehavRecep() {
        return behavRecep;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public String getCleanliness() {
        return cleanliness;
    }

    public String getHouseKeeping() {
        return houseKeeping;
    }

    public String getFood() {
        return food;
    }

    public String getPrice() {
        return price;
    }

    public String getComment() {
        return comment;
    }

    public void setBehavRecep(String behavRecep) {
        this.behavRecep = behavRecep;
    }

    public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public void setCleanliness(String cleanliness) {
        this.cleanliness = cleanliness;
    }

    public void setHouseKeeping(String houseKeeping) {
        this.houseKeeping = houseKeeping;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
