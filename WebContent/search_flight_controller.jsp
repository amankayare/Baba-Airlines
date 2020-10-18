<%@page import="com.baba.service.*" %> 
<%@page import="com.baba.dto.*" %> 

<%@page import="java.util.*" %> 



<%
System.out.println("conntroller uper");

BookingService bs = new   BookingServiceImple();
ArrayList<FlightDto> flightList = bs.getFlights( request.getParameter("source"), request.getParameter("destination"), request.getParameter("date"));
session.setAttribute("FLIGHT_LIST", flightList);
System.out.println("after session");


for(FlightDto i : flightList){
	System.out.println("hii");

	System.out.println(i);
}

response.sendRedirect("AvailableFlights.jsp");

%>>