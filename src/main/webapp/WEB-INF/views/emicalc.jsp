<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<title>Society Management App</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<style>
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

.navbar-dark .navbar-nav .active>.nav-link, .navbar-dark .navbar-nav .nav-link.active,
	.navbar-dark .navbar-nav .nav-link.show, .navbar-dark .navbar-nav .show>.nav-link
	{
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

#heading {
	display: none;
}

#Subheading {
	margin-top: 30px;
}

.partone {
	margin-top: 10px;
}

.card {
	border-radius: 4px;
	background: #fff;
	box-shadow: 0 6px 10px rgba(0, 0, 0, .08), 0 0 6px rgba(0, 0, 0, .05);
	transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s
		box-shadow, .3s -webkit-transform
		cubic-bezier(.155, 1.105, .295, 1.12);
	cursor: pointer;
	margin: 10px 5px 10px 5px;
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06);
}

h3 {
	padding: 10px 10px 10px 10px;
	margin-left: 5px;
	margin-top: 10px;
	font-weight: strong;
	color: blue;
}

h6 {
	padding: 5px 5px 5px 5px;
	color: gray;
	margin-left: 5px;
}

.name {
	font-weight: bold;
}

li {
	padding: 5px 5px 5px 5px;
}

.active {
	background-color: green;
	border-radius: 5px;
}

.active-btn {
	background-color: red;
}

.fav {
	float: right;
}

.active-fav {
	color: red;
}

.footer-dark {
	padding: 50px 0;
	color: #f0f9ff;
	background-color: #282d32;
}

.footer-dark h3 {
	margin-top: 0;
	margin-bottom: 12px;
	font-weight: bold;
	font-size: 16px;
}

.footer-dark ul {
	padding: 0;
	list-style: none;
	line-height: 1.6;
	font-size: 14px;
	margin-bottom: 0;
}

.footer-dark ul a {
	color: inherit;
	text-decoration: none;
	opacity: 0.6;
}

.footer-dark ul a:hover {
	opacity: 0.8;
}

@media ( max-width :767px) {
	.footer-dark .item:not(.social) {
		text-align: center;
		padding-bottom: 20px;
	}
}

.footer-dark .item.text {
	margin-bottom: 36px;
}

@media ( max-width :767px) {
	.footer-dark .item.text {
		margin-bottom: 0;
	}
}

.footer-dark .item.text p {
	opacity: 0.6;
	margin-bottom: 0;
}

.footer-dark .item.social {
	text-align: center;
}

@media ( max-width :991px) {
	.footer-dark .item.social {
		text-align: center;
		margin-top: 20px;
	}
}

.footer-dark .item.social>a {
	font-size: 20px;
	width: 36px;
	height: 36px;
	line-height: 36px;
	display: inline-block;
	text-align: center;
	border-radius: 50%;
	box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.4);
	margin: 0 8px;
	color: #fff;
	opacity: 0.75;
}

.footer-dark .item.social>a:hover {
	opacity: 0.9;
}

.footer-dark .copyright {
	text-align: center;
	padding-top: 24px;
	opacity: 0.3;
	font-size: 13px;
	margin-bottom: 0;
}

.carousel-indicators li {
	width: 10px;
	height: 10px;
	border-radius: 100%;
}

.carousel-item:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.7);
}

@media ( max-width :1199px) {
	.carousel-caption h5 {
		font-size: 32px;
	}
	.carousel-caption p {
		font-size: 18px;
	}
}

@media ( max-width :991px) {
	.carousel-caption p {
		display: none;
	}
}

@media ( max-width :930px) {
	.carousel-caption p {
		display: none;
	}
	.carousel-indicators {
		margin-bottom: 100px;
	}
}

@media ( max-width :767px) {
	.carousel-caption h5 {
		font-size: 24px;
		margin-bottom: 150px;
	}
	.carousel-caption {
		padding-bottom: 8%;
	}
	.carousel-indicators {
		margin-bottom: 50px;
	}
	.carousel-item {
		height: 50vh;
		margin-top: 50px;
	}
}

@media ( max-width :400px) {
	.carousel-item {
		height: 30vh;
	}
}

@media ( max-width :300px) {
	#carouselExampleIndicators {
		display: none;
	}
	.carousel-item {
		height: 100vh;
		background: no-repeat center center scroll;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	.carousel-caption {
		bottom: 270px;
	}
	.carousel-caption h5 {
		font-size: 45px;
		text-transform: uppercase;
		letter-spacing: 2px;
		margin-top: 25px;
		text-shadow: black 1px 0px 5px;
	}
	.carousel-caption p {
		width: 75%;
		margin: auto;
		font-size: 18px;
		line-height: 1.9;
	}
}
</style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
			<a class="navbar-brand" href="/logged-home"><img height=30px
				width=30px
				src="https://lh3.googleusercontent.com/YrIhuXYEyEmRr2Pi07r9T-ZVIcdS_XPYdxDTkgPeNuPKYo1-a45D91UjIZzo7hcdmx1dzHvxc0YP-7UQ5U_N9QFnWiguR4FLLbcjcg"
				style="vertical-align: middle;" /> Society App</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
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
									class="dropdown-item" href="/updateComplain">Complains</a> <a
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
	</header>
	<br><br><br><br><br><br><br><br>
	<script
		src="https://emicalculator.net/widget/2.0/js/emicalc-loader.min.js"
		type="text/javascript"></script>
	<div id="ecww-widgetwrapper" style="min-width: 250px; width: 100%;">
		<div id="ecww-widget"
			style="position: relative; padding-top: 0; padding-bottom: 280px; height: 0; overflow: hidden;"></div>
		<div id="ecww-more"
			style="background: #333; font: normal 13px/1 Helvetica, Arial, Verdana, Sans-serif; color: #FFF; text-align: center; width: 100%; clear: both; margin: 0; clear: both; float: left;">
			
		</div>
	</div>


<br><br><br><br><br><br><br><br><br>
	<div class="footer-dark">
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3 item">

						<ul>
							<li><a href="/logged-home">Home</a></li>
							<li><a href="/profile">Profile</a></li>
							<li><a href="/about">About</a></li>
							<li><a href="/complainn">Complain</a></li>
							<li><a href="/pest">Pest Control</a></li>

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
				<p class="copyright">Society App � 2021</p>
			</div>
		</footer>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
		
	</script>
</body>

<script>
	$(function() {
		$('.nav-link').each(function() {
			if ($(this).prop('href') == window.location.href) {
				$(this).addClass('active');
				$(this).parents('li').addClass('active');
			}
		});

		$(".fav").click(function() {
			alert("Property Added to WishList")
		})

	});
</script>

</html>