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

li {
	padding: 5px 5px 5px 5px;
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

h2 {
	text-align: center;
	color: dimgray;
	padding-top: 30px;
}

.image {
	padding-left: 50px;
}

.about-content {
	text-align: center;
	color: dimgrey;
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
									class="dropdown-item" href="/pest">Pest Control</a> <a
									class="dropdown-item" href="/emi">EMI Calculator</a> <a
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

	<div class="col-md-12">
		<div class="card">
			<div class>
				<div class="card-body">
					<div class="content" style="padding: 0px 20px 0px 20px;">

						<h4 style="padding-top: 80px; color: dimgray">
							For Assistance:<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPJRyPSjJRCeiRMJE-rqyYiBC803mEgnl20g&usqp=CAU"
								width="40" height="40">+91 1234567890
						</h4>
						<h2>"We Love the Job You Hate!"</h2>
						<div style="text-align: center;">

							<img class="col-md-6"
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOwTCJ801eDAh2L02bOnmnTVOW9KiRi10T7w&usqp=CAU"
								>
						</div>
						<h3 style="color: dimgray">Why Pest Control?</h3>
						<br>
						<p style="color: dimgray; font-size: 18">
							-One of the trickiest environmental challenges for housing
							managers is pest management - finding the best way to control
							unwanted invaders while minimizing the use of potentially toxic
							pesticides. <br>-Pests such as cockroaches, mice, rats and
							bed bugs can be particularly troublesome in multi-family housing.<br>-Living
							with pests should not be the norm for anyone -- whether one lives
							in a single family home or multifamily housing.<br>-In
							addition to lending properties a poor appearance and potentially
							causing physical damage, pests can cause health problems that
							could make living in a property uncomfortable, dangerous or even
							deadly.<br> -Certain kinds of insects, rodents and microbes
							can cause or spread vector-borne diseases (like West Nile virus
							or rabies), asthma and allergies, avian flu, and diseases due to
							microbial contamination, among other health problems.
						</p>
						<div style="text-align: center;">
							<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMV_9ZG0Z6IFwg_lp-wqv03F1mtXsVPDpdYw&usqp=CAU"
								class="col-md-6">
						</div>
						<h3 style="color: dimgray">Steps Taken to Prevent Pests</h3>
						<br>

						<p style="color: dimgray; font-size: 18">
							<strong>1. Monitoring:</strong> is the periodic estimation of
							relative pest population levels, building conditions and other
							factors that might influence the successful management of pest
							problems. Information gained through monitoring is critical for
							determining whether control measures-chemical or otherwise-are
							necessary.<br>
							<br>
							<strong>2. Reduce access to and through buildings:</strong> The
							first defense against unwanted visitors, pests included, is
							making sure they do not get into the building. If there are
							apartments with pest infestations, spread of the infestation can
							be minimized to the extent the passageway from these apartments
							to the rest of the building can be blocked. Pest management
							experts recommend regular inspections of the building exterior to
							spot holes where pests may gain entry. <br>
							<br>
							<strong>3. Manage your recycling program:</strong> While
							recycling is meant to improve the environment, it can contribute
							to environmental problems, particularly those related to pests,
							if it is not handled correctly,And many more.
						</p>
						<h2 style="text-align: center">"Fulfill Your Need Not Your
							Greed"</h2>
					</div>



				</div>
			</div>
		</div>
	</div>



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
				<p class="copyright">Society App © 2021</p>
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

		$(".fav")
				.click(
						function() {

							let image = document.createElement("img");
							image.src = "https://icon2.cleanpng.com/20180308/qge/kisspng-green-area-pattern-green-tick-png-file-5aa1fca3f21122.7358749715205654119915.jpg";

							image.width = 50;
							image.height = 50;

							$(this).replaceWith(image);

						});

	});
</script>

</html>