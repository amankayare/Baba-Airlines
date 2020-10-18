<jsp:useBean id="bookingDto" class="com.baba.dto.BookingDto" scope="session"></jsp:useBean>


<!DOCTYPE html>
<html>
<head>
    <title>Invoice</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/0ff6456f25.js"
      crossorigin="anonymous"
    >
    </script>
    <script>
    $(document).ready(function() {
		$("#myInput").on("keyup", function() {
			var value = $(this).val().toLowerCase();
			$("#myTableBody tr").filter(function() {
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
	});
    </script>


    
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

        .invoice-title h2, .invoice-title h3 {
        display: inline-block;
        }

        .table > tbody > tr > .no-line {
        border-top: none;
        }

        .table > thead > tr > .no-line {
        border-bottom: none;
        }

        .table > tbody > tr > .thick-line {
        border-top: 2px solid;
        }
    </style>
  </head>
<body>
	<nav class="navbar navbar-expand sticky-top position-sticky text-light navbar-dark bg-dark justify-content-between"  >
      <div class="nav navbar-nav">
        <!--<a class="nav-item nav-link active" href="#">
          <i class="fa fa-home" aria-hidden="true"></i> Home</a
        >-->
      </div>
      <div class="nav navbar-nav" style="font-family: cursive; font-size: 25px">
        <b> BABA AIRLINES &#9992 </b>
      </div>
      <div class="nav navbar-nav">
         <!--<a class="nav-item nav-link active" href="index.jsp"><button class="btn btn-danger">Logout</button></a>-->
      </div>
    </nav>

<div style="height:10px;"></div>

    <div class="container-fluid">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="invoice-title">
                        <h2>Invoice</h2><h3 class="pull-right">Invoice # <%= bookingDto.getBookingId() %></h3>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-xs-10">
                            <address>
                            <strong>Billed To:</strong><br>
                                <b>Cust. Name:<%= bookingDto.getCustomerName() %> </b><br>
                                <b>Phone: <%= bookingDto.getCustomerPhone() %></b><br>
                                <b> No. of seats : <%= bookingDto.getBookedSeatBuisness() + bookingDto.getBookedSeatEconomy() %></b><br>
                                
                            </address>
                        </div>
                        <div class="col-xs-2 text-right">
                            <address>
                               
                                <strong>Booking Date:</strong><br>
                                <%= new java.util.Date() %><br><br>
                            </address>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            
                        </div>
                        <div class="col-xs-6 text-right">
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Order summary</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>
                                            <td ><strong>Flight ID</strong></td>
                                            <td class="text-center"><strong>Booking ID</strong></td>
                                            <td class="text-center"><strong>GST</strong></td>
                                            <td class="text-right"><strong>Totals</strong></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      	<tr>
                                      		<td ><%= bookingDto.getFlightId() %></td>
                                            <td class="text-center"><%= bookingDto.getBookingId() %></td>
                                            <td class="text-center"><%= session.getAttribute("GST") %></td>
                                            <td class="text-right"><strong><%= session.getAttribute("BILL") %></strong></td>
                                      	
                                      	</tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="text-align: center;">
        <input class="btn btn-secondary" onclick="window.print()" type="button" value="Print Invoice">
        <br><br><br><br>
        <a href="index.jsp">Back To HOME</a>
    </div>
    </div>




    <footer class="page-footer font-small bg-dark text-light fixed-bottom">
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