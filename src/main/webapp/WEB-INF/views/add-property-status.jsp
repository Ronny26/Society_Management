<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<style type="text/css">
 .material-icons {

  vertical-align: middle;
  }
  
  .navbar-dark .navbar-brand {
color: #fff;
font-size: 25px;
text-transform: uppercase;
font-weight: bold;
letter-spacing: 2px;
}
.navbar-dark .navbar-nav .active>.nav-link, .navbar-dark .navbar-nav .nav-link.active, .navbar-dark .navbar-nav .nav-link.show, .navbar-dark .navbar-nav .show>.nav-link {
color: #fff;
}
.navbar-dark .navbar-nav .nav-link {
color: #fff;
}
.navbar-nav {
text-align: center;
}
.nav-link {
padding: .2rem 1rem;
}
.nav-link.active, .nav-link:focus {
color: #fff;
}
 
 .footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
  margin-top:100px;
}

.footer-dark h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer-dark ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer-dark ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer-dark ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer-dark .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer-dark .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer-dark .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer-dark .item.social {
    text-align:center;
    margin-top:20px;
  }
}
.active {
    background-color:green;
    border-radius: 5px;
}

.footer-dark .item.social > a {
  font-size:20px;
  width:36px;
  height:36px;
  line-height:36px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  box-shadow:0 0 0 1px rgba(255,255,255,0.4);
  margin:0 8px;
  color:#fff;
  opacity:0.75;
}

.footer-dark .item.social > a:hover {
  opacity:0.9;
}

.footer-dark .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
.checkmark__circle {
  stroke-dasharray: 166;
  stroke-dashoffset: 166;
  stroke-width: 2;
  stroke-miterlimit: 10;
  stroke: #7ac142;
  fill: none;
  animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards;
}

.checkmark {
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: block;
  stroke-width: 2;
  stroke: #fff;
  stroke-miterlimit: 10;
  margin: 10% auto;
  box-shadow: inset 0px 0px 0px #7ac142;
  animation: fill .4s ease-in-out .4s forwards, scale .3s ease-in-out .9s both;
}

.checkmark__check {
  transform-origin: 50% 50%;
  stroke-dasharray: 48;
  stroke-dashoffset: 48;
  animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
}

@keyframes stroke {
  100% {
    stroke-dashoffset: 0;
  }
}
@keyframes scale {
  0%, 100% {
    transform: none;
  }
  50% {
    transform: scale3d(1.1, 1.1, 1);
  }
}
@keyframes fill {
  100% {
    box-shadow: inset 0px 0px 0px 30px #7ac142;
  }
}
.middle{

text-align:center;
verticat-align:center;
}

</style>
</head>
<body>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="/main"><img height=30px width=30px src="https://lh3.googleusercontent.com/YrIhuXYEyEmRr2Pi07r9T-ZVIcdS_XPYdxDTkgPeNuPKYo1-a45D91UjIZzo7hcdmx1dzHvxc0YP-7UQ5U_N9QFnWiguR4FLLbcjcg" style="vertical-align: middle;"/> Society App</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="/logged-home"><i
							class="material-icons">home</i> Home</a></li>
					<li class="nav-item"><a class="nav-link " href="/profile"><i
							class="material-icons">person</i> Profile</a></li>
					<li class="nav-item">
						<div class="nav-item  dropdown show">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Tools </a>

							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="/admin">Residents Bill</a> <a
									class="dropdown-item" href="/updateComplain">Complains</a> 
									 <a
									class="dropdown-item" href="/pest">Pest Control</a> 
									<a
									class="dropdown-item" href="/emi">EMI Calculator</a> 
									<a
									class="dropdown-item" href="/club">Membership</a> 
							</div>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link " href="/wishlist"><i
							class="material-icons">bookmark_border</i> WishList</a></li>
					<li class="nav-item"><a class="nav-link "
						href="/show-add-property"><i class="material-icons">add</i>
							Add Property</a></li>

					<li class="nav-item"><a class="nav-link "
						href="/view-bill/${id}"><i class="material-icons">add</i> Pay
							Bill</a></li>
					

					<li class="nav-item"><a class="nav-link " href="/logout"><i
							class="material-icons">logout</i> Logout</a></li>


				</ul>
			</div>
</nav>

<div class="middle">
<svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
  <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/>
  <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
</svg>
 
 <a href="/logged-home" class="btn btn-primary">Back</a> 
</div>
<br><br><br><br><br><br>
<div class="footer-dark">
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3 item">

						<ul>
							<li><a href="/logged-home">Home</a></li>
							<li><a href="/profile">Profile</a></li>
							<li><a href="#">About</a></li>
							<li><a href="/complainn">Complain</a></li>
						</ul>
					</div>

					<div class="col-md-6 item text">
						<h3>Society App</h3>
						<p>Praesent sed lobortis mi. Suspendisse vel placerat ligula.
							Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis
							tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel
							in justo.</p>
					</div>

				</div>
				<p class="copyright">Society App © 2021</p>
			</div>
		</footer>
	</div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
</script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
</script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
</script>
</body>


</html>