<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/AdminPages.css">
 </head>
<body>

	<div>
		<h1 class="h1main">Hotel Reservation System</h1>

		
	</div>

	<br>
	<br>
	<br>

	<div class="topnav">
		<a class="active" href="#home">Home</a> <a href="AboutUs.jsp">About</a>
		<a href="Contact.jsp">Contact</a>
		<div class="search-container">
			<form action="#" method="POST">
				<input class="rrr" type="button" placeholder="Search.."
					name="search" value="SEARCH">

			</form>
		</div>
	</div>

	<div style="padding-left: 16px">
		<h2 class="welcome">Welcome</h2>
		<div class="Adminbtn">
		
			<a href = "mainManagePage.jsp"> <button class="button1" style="vertical-align: middle">
				<span>Hotel Chain Management</span>
			</button> </a>
			
			<a href = "room-list.jsp"> <button class="button1" style="vertical-align: middle">
				<span>Room Management</span>
			</button> </a>
			
			
			<button class="button1" style="vertical-align: middle">
				<span>Reservation Management</span>
			</button>
			
			<p></p>
			<p></p>
		</div>
	</div>

</body>
</html>