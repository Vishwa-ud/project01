<%@ page import="customer.reviews.UpdateReviews" %>
<%@ page import="customer.reviews.Reviews" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Reviews</title>
    <style> 
    
     body{
     	background-image: url('images/MainPage.jpg');
     }
        table {
            border-collapse: collapse;
            width: 100%;
            font-family: Arial, sans-serif;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr {
            background-color: #e5e5e5;
        }

      

        input[type="submit"] {
            padding: 6px 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        .button1 {
		  display: inline-block;
		  border-radius: 4px;
		  background-color: #6dff00;
		  border: none;
		  color: #FFFFFF;
		  text-align: center;
		  font-size: 20px;
		  padding: 20px;
		  width: 200px;
		  transition: all 0.5s;
		  cursor: pointer;
		  margin: 5px;
		}
		
		.button1 span {
		  cursor: pointer;
		  display: inline-block;
		  position: relative;
		  transition: 0.5s;
		}
		
		.button1 span:after {
		  content: '\00bb';
		  position: absolute;
		  opacity: 0;
		  top: 0;
		  right: -20px;
		  transition: 0.5s;
		}
		
		.button1:hover span {
		  padding-right: 25px;
		}
		
		.button1:hover span:after {
		  opacity: 1;
		  right: 0;
		}
		
		h2{
			color: #f8f9fc;
		}
    </style>
</head>
<body><h2>My Reviews</h2>
//Display review
    <table>
        <tr>
            <th>Room Number</th>
            <th>Behavior of the Receptionist</th>
            <th>Check-in Process</th>
            <th>Cleanliness of the Hotel</th>
            <th>Behavior of the Housekeeping</th>
            <th>Food Service</th>
            <th>Charged Price</th>
            <th>Comment</th>
            <th>Actions</th>
        </tr>
        <% 
        UpdateReviews reviewDAO = new UpdateReviews();
        List<Reviews> reviews = UpdateReviews.getAllReviews(); 
        for (Reviews review : reviews) {
        %>
        <tr>
            <td><%= review.getRoomNum() %></td>
            <td><%= review.getBehavRecep() %></td>
            <td><%= review.getCheckIn() %></td>
            <td><%= review.getCleanliness() %></td> 
            <td><%= review.getHouseKeeping() %></td>
            <td><%= review.getFood() %></td>
            <td><%= review.getPrice() %></td>
            <td><%= review.getComment() %></td> 
            <td>
                <form action="editReviews.jsp" method="post">
                    <input type="hidden" name="roomNum" value="<%= review.getRoomNum() %>">
                    <input type="hidden" name="behavRecep" value="<%= review.getBehavRecep() %>">
                    <input type="hidden" name="checkIn" value="<%= review.getCheckIn() %>">
                    <input type="hidden" name="cleanliness" value="<%= review.getCleanliness() %>">
                    <input type="hidden" name="houseKeeping" value="<%= review.getHouseKeeping() %>">
                    <input type="hidden" name="food" value="<%= review.getFood() %>">
                    <input type="hidden" name="price" value="<%= review.getPrice() %>">
                    <input type="hidden" name="comment" value="<%= review.getComment() %>">
                    <input type="submit" name="update" value="Update">
                </form><br>
                <form action="delete2" method="post">
                    <input type="hidden" name="roomNum" value="<%= review.getRoomNum() %>">
                    <input type="submit" name="delete" value="Delete">
                </form>
            </td>
        </tr>
        <%  } %>
    </table>
    
    <a href="form.jsp">
	<button class="button1" style="vertical-align: middle">
				<span>Add Review</span>
			</button>
</a>
</body>
</html>
