<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Room Information</title>
<link rel="stylesheet" href="css/AdminPages.css">
<style>
body {
	font-family: Hind SemiBold;
	color:white;
}

table, th, td {
  border-collapse: collapse;
  	border: 1px solid black;
	background-color: rgba(48, 55, 48, 0.8);
	margin: auto;
 	text-align: center;
 	padding:0px;
}
 td {
  padding: 15px;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th {
  height: 30px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}

hr.new2 {
  border-top: 1px dashed white;
}
h1 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
a.a1 {
  color: white;
  font-size: 20px;
  
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

h1{ 
	text-align: center;
	text-transform: uppercase;
	

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
		<nav>
			<div>
				<h2> Room Information </h2>
			</div>

			
		</nav>
	</header>
	<br>

	<div>

		<div>
		
		
			<h1>List of Rooms</h1>
			
			
			<hr>
			<div>

				<a href="room-form.jsp" class="a1">Add New Room +</a>
			</div>
			<br>
			
			
			<table style="width:75%" class="center">
				<thead>
					<tr>
						<th>Room ID</th>
						<th>Room Status</th>
						<th>Bed Type</th>
						<th>Price</th>
						<th>Facilities</th>
						<th>Location</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach var="room" items="${listRoom}">

						<tr>
							<td><c:out value="${room.id}" /></td>
							<td><c:out value="${room.status}" /></td>
							<td><c:out value="${room.bed}" /></td>
							<td><c:out value="${room.price}" /></td>
							<td><c:out value="${room.facilities}" /></td>
							<td><c:out value="${room.location}" /></td>
							<td><a href="edit?id=<c:out value='${room.id}' />">Edit</a>
							
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
								<a href="delete?id=<c:out value='${room.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					
				</tbody>

			</table>
			
		</div>
	</div>
	<hr class=new2>
	<hr class=new2>
	<hr class=new2>
</body>
</html>
