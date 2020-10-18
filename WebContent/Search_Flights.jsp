<%@page import="com.baba.service.*"%>
<%@page import="com.baba.*"%>
<%@page import="com.baba.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	
%>


<!DOCTYPE html>
<html>
<head>
<title>Search Flights</title>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/0ff6456f25.js"
	crossorigin="anonymous"></script>
<style>
body {
	background-repeat: no-repeat;
	background-size: cover;
}

.img {
	width: 50vh;
	height: 50vh;
	margin-left: 16%;
	margin-top: 40%;
}

#icn {
	font-size: 25px;
	margin: 19px;
	color: white;
	cursor: pointer;
}

.mobileShow {
	display: inline;
}

/* Smartphone Portrait and Landscape */
@media only screen and (min-device-width: 320px) and (max-device-width:
	580px) {
	.mobileShow {
		display: inline;
	}
}

.mobileHide {
	display: inline;
}

/* Smartphone Portrait and Landscape */
@media only screen and (min-device-width: 320px) and (max-device-width:
	580px) {
	.mobileHide {
		display: none;
	}
}
</style>
</head>
<body>
	<nav
		class="navbar navbar-expand fixed-top text-light navbar-dark bg-dark justify-content-between">
		<div class="nav navbar-nav">
			<!--<a class="nav-item nav-link active" href="#">
          <i class="fa fa-home" aria-hidden="true"></i> Home</a
        >-->
		</div>
		<div class="nav navbar-nav"
			style="font-family: cursive; font-size: 25px">
			<b> <a href="index.jsp">BABA AIRLINES &#9992</a>> </b>
		</div>
		<div class="nav navbar-nav">
			<!--<a class="nav-item nav-link active" href="aboutus.html">About us</a>-->
		</div>
	</nav>

	<div
		class="container-fluid justify-content-center bg-light align-items-center" style="height:90vh">
		<div class="row justify-content-center align-items-center my-5">
			<div class="col-10 align-items-center mt-5">
				<div class="dash-header">
					<div class="dash-title">
						<h1>Search Flights</h1>
					</div>
				</div>
				<br> <br>
				<div class="blog-form ">
					<form action="search_flight_controller.jsp" method="post">
						<div class="form-group form-row">
							<label class="col-md-3">Source </label>
							<div class="col-md-9">
								<select name="source" id="src">
									<option value="mumbai" id="mumbai"">Mumbai</option>
									<option value="indore" id="indore">Indore</option>
									<option value="delhi" id="delhi">Delhi</option>
									<option value="jaipur" id="jaipur">Jaipur</option>
									<option value="dadar" id="dadar">Dadar</option>
								</select>
							</div>
						</div>

						<div class="form-group form-row">
							<label class="col-md-3">Destination</label>
							<div class="col-md-9">
								<select name="destination" id="dest">
									<option value="mumbai" id="mumbai"">Mumbai</option>
									<option value="indore" id="indore">Indore</option>
									<option value="delhi" id="delhi">Delhi</option>
									<option value="jaipur" id="jaipur">Jaipur</option>
									<option value="dadar" id="dadar">Dadar</option>
								</select>
							</div>
							
						</div>

						<div class="form-group form-row">
							<label class="col-md-3">Date (YYYY-MM-DD) <span
								class="required"></span></label>
							<div class="col-md-2">
								<input type="date" name="date" class="form-control" required>
							</div>
						</div>
						<div class="form-group form-row">
							
							<div class="col-md-2">
								<input type="submit" class="form-control btn btn-primary" value="Search">
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer font-small bg-dark text-light">
		<div class="footer-copyright text-center">Created by : SUPER30</div>
		<!-- Copyright -->
		<div class="footer-copyright text-center">
			© 2020 Copyright: <a href="https://mdbootstrap.com/"> CDAC</a>
		</div>
		<!-- Copyright -->
	</footer>
	<script>


	</script>
</body>
</html>