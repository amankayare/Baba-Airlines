<%@page import="com.baba.service.*"%>
<%@page import="com.baba.*"%>
<%@page import="com.baba.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	int flight_id = Integer.parseInt(request.getParameter("flightId"));
%>


<!DOCTYPE html>
<html>
<head>
<title>Customer Details</title>
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
			<b> BABA AIRLINES &#9992 </b>
		</div>
		<div class="nav navbar-nav">
			<!--<a class="nav-item nav-link active" href="aboutus.html">About us</a>-->
		</div>
	</nav>

	<div
		class="container-fluid justify-content-center bg-light align-items-center">
		<div class="row justify-content-center align-items-center my-5">
			<div class="col-10 align-items-center mt-5">
				<div class="dash-header">
					<div class="dash-title">
						<h1>Customer Details</h1>
					</div>
				</div>
				<br>
				<br>
				<div class="blog-form">
					<form action="calculate_Bill_controller.jsp" method="post">
						<div class="form-group form-row">
							<label class="col-md-3">Name </label>
							<div class="col-md-9">
								<input type="text" name="customerName" class="form-control" required>
							</div>
						</div>

						<div class="form-group form-row">
							<label class="col-md-3">Phone</label>
							<div class="col-md-9">
								<input type="text" name="customerPhone" class="form-control" required>
							</div>
						</div>

						<input type="hidden" name="bookingId">
						



						<div class="form-group form-row">
							<label class="col-md-3">No of Seats Economy Class </label>
							<div class="col-md-9">
								<input type="number" name="bookedSeatEconomy" class="form-control"
									required>
							</div>
						</div>

						<div class="form-group form-row">
							<label class="col-md-3">No of Seats Business Class </label>
							<div class="col-md-9">
								<input type="number" name="bookedSeatBuisness" class="form-control"
									required />
							</div>
						</div>
						
						<input type="hidden" name="flightId" value=<%= flight_id %>>



						<div class="form-group form-row">
							<label class="col-md-3"></label>
							<div class="col-md-9">
								<a href=""
									onclick="if(!(confirm('Are You Sure you want to book Tickets?'))) return false">
									<input type="submit" value="Confirm" class="btn btn-primary">
									
									</a>
							</div>
							<a href="search_Flights.jsp"> Click here to Cancel!!!</a>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer font-small bg-dark text-light fixed-bottom" >
		<div class="footer-copyright text-center">Created by : SUPER30</div>
		<!-- Copyright -->
		<div class="footer-copyright text-center">
			© 2020 Copyright: <a href="https://mdbootstrap.com/"> CDAC</a>
		</div>
		<!-- Copyright -->
	</footer>
</body>
</html>