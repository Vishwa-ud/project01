<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add review</title>
<style>

    body {
        font-family: Arial, sans-serif;
		background-image: url('images/MainPage.jpg');
        padding: 20px;
    }
    
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.
.);
        max-width: 500px;
        margin: 0 auto;
    }
    
    h1 {
        text-align: center;
    }
    
    label {
        display: block;
        margin-bottom: 10px;
        
    }
    
    input[type="text"]
    {
        width: 100%;
        padding: 4px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-bottom: 10px;
    }
	
    
    input[type="radio"] {
        display: none;
    }
    
    .radio-label {
        display: inline-block;
        margin-right: 10px;
        padding: 3px 9px;
        background-color: #eaeaea;
        border-radius: 4px;
        cursor: pointer;
    }
    
    .radio-label:hover {
        background-color: #ddd;
    }
    
    input[type="radio"]:checked + .radio-label {
        background-color: #4CAF50;
        color: #fff;
    }
    
    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

//Get review from customer

<form action="insert2" method="post">
    <h1>Hotel feedback form</h1>
    
    <label for="roomNum"><b>Room Number</b></label>
    <input type="text" name="roomNum"><br><br>
    
    <label><b>How satisfied were you with the behavior of the receptionist?</b></label>
    <input type="radio" name="receptionist" value="satisfied" id="satisfied-receptionist">
    <label class="radio-label" for="satisfied-receptionist">Satisfied</label>
    <input type="radio" name="receptionist" value="unsatisfied" id="unsatisfied-receptionist">
    <label class="radio-label" for="unsatisfied-receptionist">Unsatisfied</label><br><br>
    
    <label><b>How satisfied were you with the check-in process?</b></label>
    <input type="radio" name="check" value="satisfied" id="satisfied-check">
    <label class="radio-label" for="satisfied-check">Satisfied</label>
    <input type="radio" name="check" value="unsatisfied" id="unsatisfied-check">
    <label class="radio-label" for="unsatisfied-check">Unsatisfied</label><br><br>
    
    <label><b>How satisfied were you with the cleanliness of the hotel?</b></label>
    <input type="radio" name="clean" value="satisfied" id="satisfied-clean">
    <label class="radio-label" for="satisfied-clean">Satisfied</label>
    <input type="radio" name="clean" value="unsatisfied" id="unsatisfied-clean">
    <label class="radio-label" for="unsatisfied-clean">Unsatisfied</label><br><br>
    
    <label><b>How satisfied were you with the behavior of the housekeeping during your stay?</b></label>
    <input type="radio" name="house" value="satisfied" id="satisfied-house">
    <label class="radio-label" for="satisfied-house">Satisfied</label>
    <input type="radio" name="house" value="unsatisfied" id="unsatisfied-house">
    <label class="radio-label" for="unsatisfied-house">Unsatisfied</label><br><br>
    
    <label><b>How satisfied were you with the food service?</b></label>
    <input type="radio" name="food" value="satisfied" id="satisfied-food">
    <label class="radio-label" for="satisfied-food">Satisfied</label>
    <input type="radio" name="food" value="unsatisfied" id="unsatisfied-food">
    <label class="radio-label" for="unsatisfied-food">Unsatisfied</label><br><br>
    
    <label><b>How satisfied were you with the prices charged in comparison to the service?</b></label>
    <input type="radio" name="price" value="satisfied" id="satisfied-price">
    <label class="radio-label" for="satisfied-price">Satisfied</label>
    <input type="radio" name="price" value="unsatisfied" id="unsatisfied-price">
    <label class="radio-label" for="unsatisfied-price">Unsatisfied</label><br><br>
    
    <label for="comment"><b>Additional comment:</b></label>
	<textarea name="comment" rows="4" cols="50"></textarea><br><br>

    
   
    <input type="submit" name="submit" value="Add Review">
</form>

</html>

