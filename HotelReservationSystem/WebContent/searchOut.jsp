<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- tag library -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Hind SemiBold;
	color:white;
}

table, td {
	border: 1px solid black;
	background-color: rgba(48, 55, 48, 0.8);
	margin: auto;
 	text-align: center;
 	padding:0px;
 	
}
th{
	background-color: #8D8DAA;
}

.idcls{
	width: 5%;
}

.descls{
	width: 30%;
	font-size:15px;
}

.loccls{
	width: 10%;
}

.ratecls{
	width: 5%;
}

.pacls{
	width: 1%;
}
.wificls{
	width: 1%;
}
.rtcls{
	width: 4%;
}
.imgcls{
	width: 20%;
}
.buttoncls{
	width: 10%;
}
.
</style>
<link rel="stylesheet" href="css/AdminPages.css">
</head>
<body>

	<h2 class="welcome">Results are...</h2>
	<div class = "tablediv">
	<table class="table">

		<tr>
			<th>ID</th>
			<th>description</th>
			<th>location</th>
			<th>rating</th>
			<th>ParkingAvilable?</th>
			<th>WifiAvilable?</th>
			<th>RwsidenceType?</th>
			<th>image</th>
		</tr>
		<c:if test="${empty Details}">
			<tr>
				<td colspan="8" style="text-align: center;">No values found !</td>
			</tr>
		</c:if>
		<c:forEach var="srch" items="${Details}">



			<c:set var="id" value="${srch.id}" />
			<c:set var="desc" value="${srch.description}" />
			<c:set var="location" value="${srch.location}" />
			<c:set var="rating" value="${srch.rating}" />
			<c:set var="pa" value="${srch.pa}" />
			<c:set var="wifi" value="${srch.wifi}" />
			<c:set var="rt" value="${srch.rt}" />
			<c:set var="image" value="${srch.image}" />


			<tr>
				<td class = "idcls">${srch.id}</td>
				<td class = "descls">${srch.description}</td>
				<td class = "loccls">${srch.location}</td>
				<td class = "ratecls">${srch.rating}</td>
				<td class = "pacls">${srch.pa}</td>
				<td class = "wificls">${srch.wifi}</td>
				<td class = "rtcls">${srch.rt}</td>
				<td  class = "imgcls"><img src="${srch.image}" width="100px" height="100px"
					alt="Image"></td>
				<td class = "buttoncls"><c:url value="manageHotel.jsp" var="sender">
						<c:param name="id" value="${id}"></c:param>
						<c:param name="desc" value="${desc}"></c:param>
						<c:param name="location" value="${location}"></c:param>
						<c:param name="rating" value="${rating}"></c:param>
						<c:param name="pa" value="${pa}"></c:param>
						<c:param name="wifi" value="${wifi}"></c:param>
						<c:param name="rt" value="${rt}"></c:param>
						<c:param name="image" value="${image}"></c:param>
					</c:url> <a href="${sender}"> <input type="button" NAME="UPDATE"
						value="update" class = "button1">
				</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>

</body>
</html>