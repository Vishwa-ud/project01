<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Reviews</title>
   <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        
        input[type="text"],
        textarea {
            margin-top: 5px;
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type="radio"] {
            margin-top: 5px;
        }
        
        input[type="submit"] {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
//user edit review
    <h1>Edit Review</h1>
    
    <%
        String roomNum = request.getParameter("roomNum");
        String behavRecep = request.getParameter("behavRecep");
        String checkIn = request.getParameter("checkIn");
        String cleanliness = request.getParameter("cleanliness");
        String houseKeeping = request.getParameter("houseKeeping");
        String food = request.getParameter("food");
        String price = request.getParameter("price");
        String comment = request.getParameter("comment");
        
        boolean result1 = false;
        if (behavRecep != null && behavRecep.equalsIgnoreCase("satisfied")) {
            result1 = true;
        }
        
        boolean result2 = false;
        if (checkIn != null && checkIn.equalsIgnoreCase("satisfied")) {
            result2 = true;
        }
        
        boolean result3 = false;
        if (cleanliness != null && cleanliness.equalsIgnoreCase("satisfied")) {
            result3 = true;
        }
        
        boolean result4 = false;
        if (houseKeeping != null && houseKeeping.equalsIgnoreCase("satisfied")) {
            result4 = true;
        }
        
        boolean result5 = false;
        if (food != null && food.equalsIgnoreCase("satisfied")) {
            result5 = true;
        }
        
        boolean result6 = false;
        if (price != null && price.equalsIgnoreCase("satisfied")) {
            result6 = true;
        }
    %>
    
    <form action="update2" method="post">
        <label><b>Room Number:</b></label>
        <input type="text" name="roomNum" value="<%= roomNum %>" readonly>
        
		<label><b>How satisfied were you with the behavior of the receptionist?</b></label>
		<input type="radio" name="behavRecep" value="satisfied" <% if (result1) { %> checked <% } %>> satisfied
		<input type="radio" name="behavRecep" value="unsatisfied" <% if (!result1) { %> checked <% } %>> unsatisfied<br>

		<label for="checkIn"><b>How satisfied were you with the check-in process?</b></label>
		<input type="radio" name="checkIn" value="satisfied" <% if (result2) { %> checked <% } %>> satisfied
		<input type="radio" name="checkIn" value="unsatisfied" <% if (!result2) { %> checked <% } %>> unsatisfied<br>

		<label for="cleanliness"><b>How satisfied were you with the cleanliness of the hotel?</b></label>
		<input type="radio" name="cleanliness" value="satisfied" <% if (result3) { %> checked <% } %>> satisfied
		<input type="radio" name="cleanliness" value="unsatisfied" <% if (!result3) { %> checked <% } %>> unsatisfied<br>

		<label for="houseKeeping"><b>How satisfied were you with the behavior of the housekeeping during your stay?</b></label>
		<input type="radio" name="houseKeeping" value="satisfied" <% if (result4) { %> checked <% } %>> satisfied
		<input type="radio" name="houseKeeping" value="unsatisfied" <% if (!result4) { %> checked <% } %>> unsatisfied<br>

		<label for="food"><b>How satisfied were you with the food service?</b></label>
		<input type="radio" name="food" value="satisfied" <% if (result5) { %> checked <% } %>> satisfied
		<input type="radio" name="food" value="unsatisfied" <% if (!result5) { %> checked <% } %>> unsatisfied<br>

		<label for="price"><b>How satisfied were you with the prices charged in comparison to the service?</b></label>
		<input type="radio" name="price" value="satisfied" <% if (result6) { %> checked <% } %>> satisfied
		<input type="radio" name="price" value="unsatisfied" <% if (!result6) { %> checked <% } %>> unsatisfied<br>

        
        <label for="comment"><b>Additional comment:</b></label>
		<textarea name="comment" rows="4" cols="50"><%= comment %></textarea><br><br>

        
        <input type="submit" name="submit" value="Update My Data">
    </form>
</body>
</html>
