<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="com.cts.project.model.Property , java.time.LocalDate ,java.util.ArrayList , java.util.List , java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Society Management App</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
body {
	background-image:
		url("https://www.adweek.com/wp-content/uploads/2020/03/behr-zoom-background-1-2020.jpg.webp"); 
	background-color: grey;
	background-size: 100%;
}

label {
	color: black;
	font-weight: bold;
	
}

h1 {
	color: #addae6;
	font-weight: bold;
}
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}
@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}
.form-control{
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}
</style>
</head>
<body>
<div class="container text-center wrapper fadeInDown" style="margin-top: 100px;" id="formContent">
		
		  <form:form action="/payBills" method="post" commandName="billForm" modelAttribute="billForm">
			<div class="m-3">
			<h1>User Bill Payment</h1>

				<div class="form-group row">
					<label class="col-4 col-form-label">Electricity Bill: </label>
					<div class="col-8">
						<form:input class="form-control" path="elecBill" readOnly="true" value="${bill.elecBill}" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-4 col-form-label">Maintainance Bill: </label>
					<div class="col-8">
					<form:input class="form-control" path="mainBill" readOnly="true" value="${bill.mainBill}" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-4 col-form-label">Water Bill: </label>
					<div class="col-8">
						<form:input class="form-control" path="watBill" readOnly="true" value="${bill.watBill}" />
					</div>
				</div>
				
			
				<div class="form-group row">
					<div class="col-6">
						<a href="https://mpwzservices.mpwin.co.in/westdiscom/home">Pay Electricity bill</a>
						
					</div>
					<div class="col-6">
					<a href="https://paytm.com/water-bill-payment/madhya-pradesh-urban-e-nagarpalika-water">Pay Water Bill</a>
					</div>
				</div>
               
				<div>
				   <c:choose>
    
    <c:when test="${newUser=='yes'}">
        
    <p class="text-danger">Please wait for bills to get updated</p>
    </c:when>      
    <c:otherwise>
       <button type="submit" class="btn btn-primary">Paid</button>
    </c:otherwise>
</c:choose>
					
				</div>
			</div>
		</form:form>
	</div>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
</script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
</script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
</script>
</body>
</html>