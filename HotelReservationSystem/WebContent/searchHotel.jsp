<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Hotel</title>

<link rel="stylesheet" href="css/AdminPages.css">
</head>
<body>



		<h2 class="welcome">Search by hotel</h2>
		<br>
		<p>
		<p>
		<div class="Adminbtn">
			<div class="searchbox">


				<form action="searchme" method="post" enctype="multipart/form-data">
					<!-- search form -->

					optional tick to enable <input type="checkbox" name="enableloc"
						value="1" unchecked="0"><br><br> by Location <input
						type="text" name="loc"> <br><br>
					<br>
					<br> optional tick to enable <input type="checkbox"
						name="enablerate" value="1" unchecked="0"><br><br> by
					rating <select name="rate">

						<option value="0">ALL</option>
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
					</select><br>
					<br><br>
					<br> optional tick to enable <input type="checkbox"
						name="enableoth" value="1" unchecked="0"><br><br> <label
						for="parking">Have parking facilities?</label> <input type="radio"
						name="parking" value="1" checked>Yes
					<!-- checked yes for all-->
					<input type="radio" name="parking" value="0">No <br><br> <label
						for="wifi">Have public wi-fi</label> <input type="radio"
						name="wifi" value="1" checked>Yes <input type="radio"
						name="wifi" value="0">No <br><br> <label for="residency">Do
						locals allowed?</label><br> <input type="radio" name="residency" value="1"
						checked>only allowed Foreigners<br> <input type="radio"
						name="residency" value="0">Locals and foreigners are
					allowed <br><br><br><br><br> <input type="submit" name="submit"
						value="search" class="button1">


				</form>
			</div>

		</div>
	
	<footer>
		<p>Hotel Reservation System</p>
		<small>--PAGE END--</small>
	</footer>
</body>
</html>