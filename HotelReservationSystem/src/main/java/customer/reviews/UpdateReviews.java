package customer.reviews;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UpdateReviews {
    public static List<Reviews> getAllReviews() {
        List<Reviews> reviewsList = new ArrayList<>();
        try (Connection con = DBconnect.getConnection();
             PreparedStatement stmt = con.prepareStatement("SELECT * FROM my_reviews");
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int roomNum = rs.getInt("roomNum");
                String behavRecep = rs.getString("behavRecep");
                String checkIn = rs.getString("checkIn");
                String cleanliness = rs.getString("cleanliness");
                String houseKeeping = rs.getString("houseKeeping");
                String food = rs.getString("food");
                String price = rs.getString("price");
                String comment = rs.getString("comment");

                Reviews review = new Reviews(roomNum, behavRecep, checkIn, cleanliness, houseKeeping, food, price, comment);
                reviewsList.add(review);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reviewsList;
    }
}
