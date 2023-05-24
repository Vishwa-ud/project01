<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/AdminPages.css">
</head>
<body>

	<%
	String id = request.getParameter("id");
	String desc = request.getParameter("desc");
	String location = request.getParameter("location");
	String rating = request.getParameter("rating");
	String image = request.getParameter("image");
	String pa = request.getParameter("pa");
	String wifi = request.getParameter("wifi");
	String rt = request.getParameter("rt");
	int paInt = Integer.parseInt(pa);
	int wifiInt = Integer.parseInt(wifi);
	int rtInt = Integer.parseInt(rt);
	int ratingInt = Integer.parseInt(rating);
%>


	<h1 class = "welcome">UPDATE PAGE</h1>

	
<div class="Adminbtn">
<div class="searchbox">
	<form action="changeme" method="post" >
		<!-- search form -->
		<h1>room id to manage is <%= id%></h1>  <input type="hidden" name="id" value="<%= id%>">

		Description <input type="text" name="desc" value="<%= desc%>"> <br><br>
		
		location <input type="text" name="location" value="<%= location%>"> <br><br>
		
		by Rating <select name="rating" value="<%= rating%>">
			<option value="0" <% if (ratingInt == 0) { %> selected <% } %>>ANY</option>
			<option value="1" <% if (ratingInt == 1) { %> selected <% } %>>1</option>
			<option value="2" <% if (ratingInt == 2) { %> selected <% } %>>2</option>
			<option value="3" <% if (ratingInt == 3) { %> selected <% } %>>3</option>
			<option value="4" <% if (ratingInt == 4) { %> selected <% } %>>4</option>
			<option value="5" <% if (ratingInt == 5) { %> selected <% } %>>5</option>
			<option value="6" <% if (ratingInt == 6) { %> selected <% } %>>6</option>
			<option value="7" <% if (ratingInt == 7) { %> selected <% } %>>7</option>
			<option value="8" <% if (ratingInt == 8) { %> selected <% } %>>8</option>
			<option value="9" <% if (ratingInt == 9) { %> selected <% } %>>9</option>
			<option value="10" <% if (ratingInt == 10) { %> selected <% } %>>10</option>
		</select><br><br><br> 
		
		<label for="a"><br>is parking avilable?</label>
		<input type="text" name="pa" value="<%= pa%>" pattern="[01]"> <br><br>

		<label for="b">is wifi avilable?</label> 
		<input type="text" name="wifi" value="<%= wifi%>" pattern="[01]" > <br><br>

		<label for="c">Is Locals Allowed ?</label> 
		<input type="text" name="rt" value="<%= rt%>" pattern="[01]" > <br><br>

		<label for="d">Image source</label> 
		<input type="text" name="image" id="image" value="<%= image%>">
		<br>
		<img alt="image" src="<%= image%>" width="100px" height="100px"><!--image path-->
		<br>
		<br> <input type="submit" name="submit" value="CHANGE"  class = "button1">
		
	</form>
	
	<form id="deleteForm" method="post" action="deleteme">
   		<input type="submit" id="dataToDelete" name="idToDelete" value="DELETE ID <%= id%>"  class = "button1" />
	</form>

</div></div>
</body>
</html>