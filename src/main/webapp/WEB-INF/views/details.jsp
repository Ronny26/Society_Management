<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
    <head>
     <title>Society Management App</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

        .container{

            padding-top: 100px;
        }
        .container-fluid{

            
            text-align: center;
            padding-top: 20px;
        }
        .image{

            border-radius:5px ;
            box-shadow: 5px 5px 8px #888888;
            
        }
        .cd{
        margin:5px 5px 5px 5px;
        }
        
  .fav{
float: right;
}
.active-fav{
color:red;
}

.footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
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
  
        
  </style>  
   </head>
   
    <body>
       
   
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="/home"><img height=30px width=30px src="https://lh3.googleusercontent.com/YrIhuXYEyEmRr2Pi07r9T-ZVIcdS_XPYdxDTkgPeNuPKYo1-a45D91UjIZzo7hcdmx1dzHvxc0YP-7UQ5U_N9QFnWiguR4FLLbcjcg" style="vertical-align: middle;"/> Society App</a>
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
    
      <div class="container">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
              
            <div class="row">
<div class="col-3"> 
    <img src="${property.image }" class="d-block w-100" alt="...">

</div>
<div class="col-3"> 
    <img src="https://cdn.pixabay.com/photo/2020/06/27/16/40/apartment-5346460_960_720.jpg" class="d-block w-100 image" alt="...">

</div>

<div class="col-3"> 
    <img src="https://cdn.pixabay.com/photo/2020/03/03/04/13/apartment-4897466_960_720.jpg" class="d-block w-100 image" alt="...">

</div>

<div class="col-3"> 
    <img src="https://cdn.homedit.com/wp-content/uploads/2021/03/Urban-One-Room-Apartment-Decor-living-room-800x534.jpg" class="d-block w-100 image" alt="...">

</div>


              </div>
           
          </div>

          <div class="carousel-item">
            <div class="row">
<div class="col-3"> 
  <img src="${property.image}" class="d-block w-100" alt="...">

</div>
<div class="col-3"> 
    <img src="https://cdn.pixabay.com/photo/2020/06/27/16/40/apartment-5346460_960_720.jpg" class="d-block w-100 image" alt="...">
  
  </div>
  <div class="col-3"> 
    <img src="https://cdn.pixabay.com/photo/2020/03/03/04/13/apartment-4897466_960_720.jpg" class="d-block w-100 image" alt="...">
  
  </div>
  <div class="col-3"> 
    <img src="https://cdn.homedit.com/wp-content/uploads/2021/03/Urban-One-Room-Apartment-Decor-living-room-800x534.jpg" class="d-block w-100 image" alt="...">
  
  </div>

            </div>
         
        </div>
         
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>


    <div class="container-fluid">
      
           
       <div class="col-md-12">
        <div class="card">
            
            <div class="card-body">
                <h4 ><b>${property.name}</b> <span class="badge badge-success">${property.type}</span></h4>
                <p style="color:green;"><b>Rs.${property.price}</b></p>
                <p><b>Current Cap Rate: 4.7% | Market Cap Rate: 5.4% | Day-One Cash-on-Cash: 6.0%</b>
                    As the exclusive listing advisor, the Bay Area Multifamily Group of Colliers international is pleased to present the opportunity to acquire a property in an highly demanded, in-fill location. Citadel Apartments is among the best located and best maintained properties in Rohnert Park, where a veritable hotbed of development is set in a family-oriented, values-focused neighborhood community. The property offers 22 two-bedroom units, all sitting on one quaint tree-lined parcel that totals over an acre in size. The property was built in 1976 and recently significantly upgraded by the current ownership.
                    
                    Citadel Apartments boasts manicured landscaping and an ample amenity package. Parking is comprised of 44 total spaces, half of which are covered garages while the other half are lined surface spots. The property entrance is magnificently marked with a new wood trellis and cement walkway. That pathway accesses all units and, at its terminus, is a robust recreational area. The all new fire pit and barbecue area is the perfect poolside complement. Also adjacent to the pool is the all new fitness center.</p>

                    <p><b>Contact details</b></p>
                    <p style="color:gray;">Celeste Slater
                        606-3727 Ullamcorper. Street
                        Roseville NH 11523
                        (786) 713-8616</p>
                <a class="btn btn-primary"  href="/logged-home">Back</a> 
            
        </div>
        </div>
   
    </div>
    
    <h3 style="text-align:center; margin-top:10px;">Similar properties You May Like</h3>
    
      <div class="containerTwo">
    <div class="row">
       <c:forEach items="${props}" var="property">
   <div class="col-md-4 col-lg-3 col-sm-6">
    <div class="card cd">
        <img class="card-img-top" src="${property.image}">
        <div class="card-body">
            <p class="name">${property.name} <span class="badge badge-success style="vertical-align:center;">${property.type}</span></p>
            <p >Rs.${property.price} <i class="material-icons text-danger" >new_releases</i></p>
            <p>${property.description} </p>
           <span> <a href="/view-details?id=${property.id}">View Details</a></span>
        </div>
    </div>
</div>
</c:forEach>
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
							<li><a href="#">About</a></li>
							<li><a href="/complainn">Complain</a></li>
                        </ul>
                    </div>
                   
                    <div class="col-md-6 item text">
                        <h3>Society App</h3>
                        <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                    </div>
                    
                </div>
                <p class="copyright">Society App © 2021</p>
            </div>
        </footer>
    </div>
    


    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>