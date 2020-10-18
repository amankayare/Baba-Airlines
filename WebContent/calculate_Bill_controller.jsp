<%@ page import ="com.baba.service.*" %>
<%@ page import ="java.util.*" %>

<jsp:useBean id="bookingDto" class="com.baba.dto.BookingDto" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="bookingDto"/>

<%
BookingService bs = new BookingServiceImple();
Map<String,Double> hashmap = new HashMap();
int i = bs.insertLog(bookingDto);
if(i != 0){
	hashmap = bs.GetInvoice(bookingDto, bookingDto.getBookedSeatEconomy(), bookingDto.getBookedSeatBuisness());
}

session.setAttribute("GST", hashmap.get("GST"));

session.setAttribute("BILL", hashmap.get("BILL"));
response.sendRedirect("invoice.jsp");
%>


