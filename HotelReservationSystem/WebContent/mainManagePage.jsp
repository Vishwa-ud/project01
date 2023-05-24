<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="css/AdminPages.css">
<title>Manage Hotels</title>
</head>
<body>
  <h2 class="welcome">Main hotel managing page</h2>
  <br>
  <p><p>
  <div class = "mngdiv">
    <div class="Adminbtn">
      <form action="searchHotel.jsp">
        <button type="submit" class="button1">&#128269; Search Hotel</button>
      </form>
      <br>
      <form action="addHotel.jsp">
        <button type="submit" class="button1"><b>&#43;</b>&nbsp Add New Entry</button>
      </form>
    </div>
  </div>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br><br><br>
  <footer>
    <p>Hotel Reservation System</p>
    <small>--PAGE END--</small>
  </footer>
  <script>
  <% String message = (String) request.getAttribute("message"); %>
  <% if (message != null) { %>
    var container = document.createElement("div");
    container.className = "container";
    var h2 = document.querySelector(".welcome");
    h2.parentNode.insertBefore(container, h2.nextSibling);
    var div = document.createElement("div");
    div.className = "alert-success";
    div.setAttribute("role", "alert");
    var h3 = document.createElement("h3");
    h3.innerHTML = "<%= message %>";
    div.appendChild(h3);
    container.appendChild(h2);
    container.appendChild(div);
  <% } %>
</script>
</body>
</html>