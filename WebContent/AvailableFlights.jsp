<%@page import="com.baba.service.*"%>
<%@page import="com.baba.dto.*"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
 ArrayList<FlightDto> list = (ArrayList<FlightDto>)session.getAttribute("FLIGHT_LIST");
 for(FlightDto flight : list){
	 System.out.println(flight);
 }
 %>


<!DOCTYPE html>
<html>
<head>
    <title>Available-Flights</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/0ff6456f25.js"
      crossorigin="anonymous"
    ></script>
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
      @media only screen and (min-device-width: 320px) and (max-device-width: 580px) {
        .mobileShow {
          display: inline;
        }
      }

      .mobileHide {
        display: inline;
      }

      /* Smartphone Portrait and Landscape */
      @media only screen and (min-device-width: 320px) and (max-device-width: 580px) {
        .mobileHide {
          display: none;
        }
      }
    </style>
  </head>
<body>
	<nav
      class="navbar navbar-expand fixed-top text-light navbar-dark bg-dark justify-content-between"
    >
      <div class="nav navbar-nav">
        <!--<a class="nav-item nav-link active" href="#">
          <i class="fa fa-home" aria-hidden="true"></i> Home</a
        >-->
      </div>
      <div class="nav navbar-nav" style="font-family: cursive; font-size: 25px">
        <b> BABA AIRLINES &#9992 </b>
      </div>
      <div class="nav navbar-nav">
        <!--<a class="nav-item nav-link active" href="aboutus.html">About us</a>-->
      </div>
    </nav>
    <div class="container-fluid">
      <div class="row" style="height: 100vh">
        <div id="top" class="container-fluid ">
		<div class="row content">
			<div class=" col-sm-12 main jumbotron">
				
			</div>
		</div>
		
		<div class="row content">
			<div class=" col-sm-12 main jumbotron">
				<h3 class="text-center">
					<b>Flight Info</b>
				</h3>
				
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Flight Id</th>
							<th class="align-middle">Source</th>
							<th class="align-middle">Destination</th>
							<th class="align-middle">Date</th> 
							<th class="align-middle">Time</th>
							<th class="align-middle">Economy Seats</th>
							<th class="align-middle">Business Seats</th>
							<th class="align-middle">Economy Amount</th>
							<th class="align-middle">Business Amount</th> 
							<th class="align-middle">Modify</th> 
						</tr>
					</thead>
					<tbody id="myTableBody">
					<% 
						for(FlightDto fly : list){
					%>
						<tr style="">
							<td class="align-middle"><%= fly.getFlightId() %></td>
							<td class="align-middle"><%= fly.getSource() %></td>
							<td class="align-middle"><%= fly.getDestination() %></td>
							<td class="align-middle"><%= fly.getDate() %></td>
							<td class="align-middle"><%= fly.getTime() %></td>
							<td class="align-middle"><%= fly.getSeatsEconomy() %></td>
							<td class="align-middle"><%= fly.getSeatsBuisness() %></td>
							<td class="align-middle"><%= fly.getAmountEconomy() %></td>
							<td class="align-middle"><%= fly.getAmountBuisness() %></td>
							<td class="align-middle">
								<a href="fills_customers_details.jsp?flightId=<%=fly.getFlightId()%>" >
				<button type="button" class="btn btn-danger  btn-sm" id="btn0" data-toggle="modal" data-target="#myModal">Book Now!</button></a>

																	
							</td>
							
						</tr>
						<% } %>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-xl">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title" id="modal-title" style="text-align: center"></h3>
				</div>
				<div class="modal-body container-fluid">
					<h3 class="text-center" style="margin-top: 0px"><small>Click on colored code snippets to compare. Same colored codes have possible similarities.</small></h3>
					<div class="row content" id="code_modal">
						<div class=" col-sm-6 container">
							<div id="name_1" style="text-align: center"></div>
							<div id="code_1_div"></div>
						</div>
						<div class=" col-sm-6 container">
							<div id="name_2" style="text-align: center"></div>
							<div id="code_2_div"></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
        
      </div>
    </div>
    <footer class="page-footer font-small bg-dark text-light">
      <div class="footer-copyright text-center">Created by : SUPER30</div>
      <!-- Copyright -->
      <div class="footer-copyright text-center">
        © 2020 Copyright:
        <a href="https://mdbootstrap.com/"> CDAC</a>
      </div>
      <!-- Copyright -->
    </footer>
</body>
</html>