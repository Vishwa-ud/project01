<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
h1{color:#616161;}
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #616161;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #22fa47;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }}
 .button{
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 2px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  float: right ;
}
.button:hover {opacity: 3}
body {
  background-image: url('images/MainPage.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
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

<div>
<h1 class ="h1">Hotel Reservation System</h1>

<button class="button">Login</button>
</div>

<br>
<br>
<br>

<div class="topnav">
  <a  href="Home.jsp">Home</a>
  <a href="AboutUs.jsp">About</a>
  <a class="active" href="#">Contact</a>
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      
    </form>
  </div>
</div>

<div style="padding:100px;
	 float: CENTER;
	font-size: 28px;
    font-weight: 500;
    letter-spacing: 2px;
    color: rgb(228, 220, 207);">
  
  <p class = "x">Hello there!

Thank you for choosing our hotel reservation system. We are thrilled to have you as our valued customer. If you have any questions or concerns regarding your reservation, please do not hesitate to contact us. Our friendly and knowledgeable team is always here to assist you and ensure that your stay with us is a memorable one.

You can reach us via email at [insert email address] or by phone at [insert phone number]. We are available 24/7 to answer your queries and provide you with the best possible service.

Thank you for choosing our hotel reservation system. We look forward to welcoming you soon!

Best regards,


-Devs</p>
  <p></p>
</div>

</body>
</html>
