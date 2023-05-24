
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/AdminPages.css">
<title>Room Details Form</title>
<style>
.container {
	border-radius: 5px;
	padding: 20px;
}

input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=text]:focus {
	border: 3px solid #555;
}

button[type=submit] {
	background-color: #04AA6D;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

h1 {
	color: white;
	text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
	text-transform: uppercase;
}
h2{
	color:Red;
 	text-transform: uppercase;
  	text-align: center;
	position: relative;
	top:0;
	left:0;
	right:0;
}

a.a1 {
	color: white;
	font-size: 20px
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
</style>
</head>
<body>

	<header>

		<div>
			<h2 class="title">Room Information</h2>
		</div>
	</header>

	<div class="Adminbtn">
		<div class="searchbox">

			<c:if test="${room != null}">
				<form action="update" method="post">
			</c:if>
			<c:if test="${room == null}">
				<form action="insert" method="post">
			</c:if>

			<caption>
				<h1>
					<c:if test="${room != null}">
            			Edit Room
            		</c:if>
					<c:if test="${room == null}">
            			Add New Room
            		</c:if>
				</h1>
			</caption>

			<c:if test="${room != null}">
				<input type="hidden" name="id" value="<c:out value='${room.id}' />" />
			</c:if>


			<fieldset style="border: none;">
			
						<label>Room Status</label> 
					<input type="text" value="<c:out value='${room.status}' />" name="status" required="required" onkeypress="return allowOnlyLettersAndSpaces(event)" onkeydown="return blockNumbersAndSymbols(event)">
					
						<label>Bed Type</label>
					<input type="text" value="<c:out value='${room.bed}' />" name="bed" >
					
						<label>Price</label> 
					<input type="text" value="<c:out value='${room.price}' />" name="price" onkeyup="this.value=this.value.replace(/[^\d.-]/g, '');"> 
					
						<label>Facilities</label>
					<input type="text" value="<c:out value='${room.facilities}' />" name="facilities"> 
					
						<label>Location</label> 
					<input type="text" value="<c:out value='${room.location}' />" name="location">
					
			</fieldset>

			<button type="submit">Save</button>
			
			</form>
		</div>
	</div>
	<br>
	<br>
	
	<script>
function allowOnlyLettersAndSpaces(event) {
  var charCode = event.which || event.keyCode;
  var charStr = String.fromCharCode(charCode);
  var pattern = /^[A-Za-z\s]+$/;    // Allows only letters and spaces
  return pattern.test(charStr);
}

function blockNumbersAndSymbols(event) {
  var key = event.keyCode || event.charCode;
  var charStr = String.fromCharCode(key);
  var pattern = /^[A-Za-z\s]+$/;    // Allows only letters and spaces
  if (pattern.test(charStr))
    return true;
  else if (key == 8 || key == 46)   // Allows Backspace and Delete keys
    return true;
  else
    return false;
}
</script>
</body>
</html>
