R<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Hotel to system</title>
<link rel="stylesheet" href="css/AdminPages.css">
</head>
<body>
<title></title>
	<h1 class = "welcome">ADD HOTEL</h1><br>
	<div class="Adminbtn">
<div class="searchbox">

	<form action="addme" method="post" enctype="multipart/form-data">    <!-- adds data to database--> 
	
		Description <input type="text" name="desc">  <br><br><!--getInformation--> 
		
		Location <input type="text" name="loc">  <br><br>
		
		Rating <select name="rate">
			<option value="0">NOT RATED</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
		</select><br> <br><br><br>
		
		
			<label for="parking"><br>is Parking avilable?</label>
			<input type="radio" name="parking" value="1" checked>Yes  <!-- checked yes for all-->
			<input type="radio" name="parking" value="0">No   <br><br>
			
			<label for="wifi">is wifi avilable</label>
			<input type="radio" name="wifi" value="1" checked>Yes
			<input type="radio" name="wifi" value="0">No   <br><br>
			
			<label for="residency">Residence</label>
			<input type="radio" name="residency" value="1" checked>foreigners only
			<input type="radio" name="residency" value="0">locals and foreigners <br><br><br>
			
			 <input type="file" name="image" id="image"> <!--image-->
																<br>
			<input type="submit" name="submit" value="addNew" class = "button1">

	</form>
</div>
</div>
</body>
</html>