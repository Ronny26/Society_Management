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
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/style/style.css" />" />

</head>
<body >

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
					<li class="nav-item">
						<div class="nav-item  dropdown show">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Filters</a>

							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="/low">Price Low-to-High</a> <a
									class="dropdown-item" href="/high">Price High-to-Low</a>
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
					<c:choose>
						<c:when test="${billDue==true}">
							<li class="nav-item dropdown"><a href="/notification"
								class="nav-link dropdown-toggle" data-toggle="dropdown"><i
									class="material-icons text-danger">notifications</i></a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
									<div>
										<p class="text-danger">Your Bills Are Due</p>
									</div>
								</div>
						</c:when>
						<c:otherwise>
							<li class="nav-item dropdown"><a href="/notification"
								class="nav-link dropdown-toggle" data-toggle="dropdown"><i
									class="material-icons">notifications</i></a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
									<p class="text-success">No Notifications</p>
								</div>
						</c:otherwise>
					</c:choose>

					<li class="nav-item"><a class="nav-link " href="/logout"><i
							class="material-icons">logout</i> Logout</a></li>


				</ul>
			</div>
		</nav>
	</header>
	<div class="carousel fade-carousel slide " data-ride="carousel"
		id="carouselExampleIndicators">
		<ol class="carousel-indicators">
			<li class="active" data-slide-to="0"
				data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="1" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="2" data-target="#carouselExampleIndicators"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="First slide" class="d-block w-100"
					src="https://imaginahome.com/wp-content/uploads/2016/01/NightGallery_IMG_House_2_Night_HDR.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Search For Properties</h5>
					<p>You can now search for properties without even stepping
						outside!!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Second slide" class="d-block w-100"
					src="https://imaginahome.com/wp-content/uploads/2016/01/NightGallery_Benedict.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Pay Bills</h5>
					<p>Pay Bills sitting comfortable at your home</p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Third slide" class="d-block w-100"
					src="https://www.thepinnaclelist.com/wp-content/uploads/2020/09/172-Luxury-Real-Estate-1150-W-Garmon-Rd-Atlanta-GA-USA.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Post Your Properties</h5>
					<p>Buying or Selling properties was never been this easy before
					</p>
				</div>
			</div>

		</div>
		<a class="carousel-control-prev" data-slide="prev"
			href="#carouselExampleIndicators" role="button"><span
			aria-hidden="true" class="carousel-control-prev-icon"></span> <span
			class="sr-only">Previous</span></a> <a class="carousel-control-next"
			data-slide="next" href="#carouselExampleIndicators" role="button"><span
			aria-hidden="true" class="carousel-control-next-icon"></span> <span
			class="sr-only">Next</span></a>
	</div>



	<div class="container-fluid partone">
		<h3>Properties</h3>
		<div class="row">
			<c:forEach items="${props}" var="property">
				<div class="col-md-4 col-lg-3 col-sm-6">
					<div class="card">
						<img class="card-img-top" src="${property.image}">
						<div class="card-body">
							<p class="name">${property.name}
								<span class="badge badge-success style="vertical-align:center;">${property.type}</span>
							</p>
							<p style="color: green;">
								<b>Rs.${property.price}</b> <i
									class="material-icons text-danger">new_releases</i>
							</p>
							<p>${property.description}</p>
							<span> <a href="/view-details?id=${property.id}">View
									Details</a></span><span> <c:choose>
									<c:when test="${property.wish=='yes'}">

										<span> <i class="material-icons text-danger fav">favorite</i></span>
									</c:when>
									<c:otherwise>
										<span> <a class="fav"
											href="/add-to-wishlist?id=${property.id}"
											style="text-decoration: none; border: none;"><i
												class="material-icons text-danger">favorite_border</i></a></span>
									</c:otherwise>
								</c:choose>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<h3>Properties for rent</h3>

	<div class="container-fluid">
		<div class="row">
			<c:forEach items="${rents}" var="property">
				<div class="col-md-4 col-lg-3 col-sm-6">
					<div class="card">
						<img class="card-img-top" src="${property.image}">
						<div class="card-body">
							<p class="name">${property.name}
								<span class="badge badge-success style="vertical-align:center;">${property.type}</span>
							</p>
							<p style="color: green;">
								<b>Rs.${property.price}</b> <i
									class="material-icons text-danger">new_releases</i>
							</p>
							<p>${property.description}</p>
							<span> <a href="/view-details?id=${property.id}">View
									Details</a></span>
							<c:choose>
								<c:when test="${property.wish=='yes'}">

									<span> <i class="material-icons text-danger fav">favorite</i></span>
								</c:when>
								<c:otherwise>
									<span> <a class="fav"
										href="/add-to-wishlist?id=${property.id}"
										style="text-decoration: none; border: none;"><i
											class="material-icons text-danger">favorite_border</i></a></span>
								</c:otherwise>
							</c:choose>


						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<h3>Properties for Sale</h3>

	<div class="container-fluid">
		<div class="row">
			<c:forEach items="${sale}" var="property">
				<div class="col-md-4 col-lg-3 col-sm-6">
					<div class="card">
						<img class="card-img-top" src="${property.image}">
						<div class="card-body">
							<p class="name">${property.name}
								<span class="badge badge-success style="vertical-align:center;">${property.type}</span>
							</p>
							<p style="color: green;">
								<b>Rs.${property.price}</b> <i
									class="material-icons text-danger">new_releases</i>
							</p>
							<p>${property.description}</p>
							<span> <a href="/view-details?id=${property.id}">View
									Details</a></span>
							<c:choose>
								<c:when test="${property.wish=='yes'}">

									<span> <i class="material-icons text-danger fav">favorite</i></span>
								</c:when>
								<c:otherwise>
									<span> <a class="fav"
										href="/add-to-wishlist?id=${property.id}"
										style="text-decoration: none; border: none;"><i
											class="material-icons text-danger">favorite_border</i></a></span>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</c:forEach>
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
		var count=null;
		$('.nav-link').each(function() {
			if ($(this).prop('href') == window.location.href) {
				$(this).addClass('active');
				$(this).parents('li').addClass('active');
			}
		});
       
		
		$(".fav").click(function() 
				{
			if(this===count) {
				 
		     alert("Property Already Added to WishList");
		    }
		    count=this;
		    
		    alert("Property Added to WishList");
			
			 
		
				
			
		})

	});
	
	
</script>

</html>