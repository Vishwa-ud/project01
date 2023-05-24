<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	@keyframes glow {
  0% {
    text-shadow: 0 0 10px #6ab7ff;
  }

  50% {
    text-shadow: 0 0 16px #6ab7ff;r
  }

  100% {
    text-shadow: 0 0 10px #6ab7ff;
  }
}

@-webkit-keyframes glow {
  0% {
    text-shadow: 0 0 10px #6ab7ff;
  }

  50% {
    text-shadow: 0 0 16px #6ab7ff;
  }

  100% {
    text-shadow: 0 0 10px #6ab7ff;
  }
}
.mainh1 {
	font-family: Monoton;
	font-weight: 700; font-size : 62px;
	color: #fff;
	text-align: center;
	animation: glow 1s ease-in-out infinite alternate;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
	font-size: 62px;
}



* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: 'Monoton', cursive;
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
	}
}

.button {
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
	float: right;
}

.button:hover {
	opacity: 3
}

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

.box-section {
  padding: 50px;
  text-align: center;
  background-color: rgba(71, 78, 93, 0.5);
  color: white;
}
.p1{
	float: CENTER;
	font-size: 48px;
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: 2px;
    color: rgb(228, 220, 207);
}

.p2{
	float: CENTER;
	font-size: 40px;
    font-weight: 800;
    text-transform: uppercase;
}


.row {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 10px;
  border: 2px solid #ddd;
  border-radius: 10px;
  height: 400px; 
}

.column1 {
  background-image: url('images/h1.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  
}
.column2 {
  background-image: url('images/h2.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
.column3 {
  background-image: url('images/h3.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
.column4 {
  background-image: url('images/h4.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
}

.row {
  display: grid;
  grid-template-columns: repeat(4, auto);
  grid-gap: 10px;
  border: 2px solid #ddd;
  border-radius: 10px;
}

.column1,
.column2,
.column3,
.column4 {
  padding: 20px;
  background-color: #f2f2f2;
  border-radius: 10px;
  margin-bottom:1px;
}

/* Set border to the first and last child */
.column1 {
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  border-right: 2px solid #ddd;
}
.column4 {
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
  border-left: 2px solid #ddd;
}

.y-highlight {
    background: rgba(255, 85, 187, 0.4);
    color:black;
}

.desc2{
	background: rgba(143, 67, 238, 0.45); /* Default color, all browsers */
    color:white;
	
}

.desc3{
	background: rgba(221, 255, 187, 0.60);
	color:black;
	
}

footer{
  text-align: center;
  padding: 3px;
  background-color: #00003d;
  color: white;
}

a{
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: blue;
  color: white;
}
div.sticky {
  position: -webkit-sticky;
  top: 0;
  border: 2px solid #4CAF50;
}
	
</style>
</head>
<body>
	<div class="sticky">
		<a href="#" class="previous">&laquo; Previous</a> <a href="#"
			class="next">Next &raquo;</a>
	</div>
	<div>
		<div>
			<h1 class="mainh1">
				H o t e l &nbsp R e s e r v a t i o n  &nbsp  S y s t e m
			</h1>
		</div>

		<a href = "login.jsp" ><button class="button">Login</button></a>
	</div>

	<br>
	<br>
	<br>

	<div class="topnav">
		<a class="active" href="#">Home</a> <a href="AboutUs.jsp">About</a> <a
			href="Contact.jsp">Contact</a>
		<div class="search-container">
			<form action="#" method="POST">
				<input class="button" type="button" placeholder="Search.."
					name="search" value="SEARCH">

			</form>
		</div>
	</div>



	<div class="box-section">
		<h1>Welcome!</h1><br><br>
		<p class="p1"><b>" &#9998;...Looking for a place to stay in Sri Lanka? RESERVE ME has got you covered. "</b></p>
		<br> <br>
		<p class="p2"><i class="fa-regular fa-fire" style="color: #ed5807;"></i>&#9734;&#9734;  Now Trending In Sri Lanka   &#9734;&#9734;</p>
		<br> <br> <br>

		<div class="row">
			<div class="column1">
				<h2>
					<span class="y-highlight"> Hotel Malabe </span>
				</h2>
				<p class="desc2">Our hotel is the perfect place for those seeking comfortable and luxurious accommodations. Our spacious rooms are designed to help our guests relax and unwind in style.
				</p>
				<p class="desc3">8.5/10 Good! (200 reviews)</p>
			</div>
			<div class="column2">
				<h2>
					<span class="y-highlight"> Hotel Room colombo </span>
				</h2>
				<p class="desc2">Luxury room with outdoor pool, near Marino
					Mall</p>
				<p class="desc3">9.0/10 Excelent! (500 reviews)</p>
			</div>
			<div class="column3">
				<h2>
					<span class="y-highlight"> Hotel Galle </span>
				</h2>
				<p class="desc2">At our hotel, we believe that every guest deserves the best</p>
				<p class="desc3">7.9/10 Good! (150 reviews)</p>
			</div>
			<div class="column4">
				<h2>
					<span class="y-highlight"> Hotel Room galle </span>
				</h2>
				<p class="desc2">3-star beachfront hotel with restaurant, near
					Galle Beach</p>
				<p class="desc3">8.6/10 Good! (300 reviews)</p>
			</div>
		</div>
		<div style="padding-left: 16px">
			<button class="button1" style="vertical-align: middle">
				<span>BOOK NOW</span>
			</button>
			<p></p>
			<p></p>
		</div>
	</div>

	<footer>
		<p>Hotel Reservation System</p>
		<small>--PAGE END--</small>
	</footer>
</body>
</html>
