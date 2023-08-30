
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


@media(max-width:1199px){
    .carousel-caption h5 {
        font-size: 32px;
    }
    .carousel-caption p{
        font-size: 18px;
    }
}
    
@media(max-width:991px){
    .carousel-caption p{
        display: none;
    }
    
}

@media(max-width:930px){
    .carousel-caption p{
        display: none;
    }
    .carousel-indicators{
        margin-bottom: 100px;
    } 
}
@media(max-width:767px){
    .carousel-caption h5 {
        font-size: 24px;
        margin-bottom: 150px;
    }
    .carousel-caption{
        padding-bottom:8%;
    }
    
    .carousel-indicators{
        margin-bottom: 50px;
    } 
   .carousel-item {
	height: 50vh;
	margin-top:50px;
	}

}

@media(max-width:400px){
.carousel-item {
	height: 30vh;
	}
    
}
@media(max-width:300px){
#carouselExampleIndicators{
    display: none;
}
#heading{
display:none;
}

#Subheading{
margin-top:30px;
}


    
}
.container-fluid{
margin-top:25px;
}

.card{
    border-radius: 4px;
    background: #fff;
    box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
      transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
  
  cursor: pointer;
  margin: 10px 5px 10px 5px;
}

.card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
}
  h3{
  padding:10px 10px 10px 10px;
  margin-left:5px;
  magin-top:10px;
  font-weight:strong;
  color:blue;
  }
  h6{
  padding:5px 5px 5px 5px;
  color:gray;
  
  margin-left:5px;
  
  
  }
  
  .name{
  font-weight:bold;
  }
  
li{
padding:5px 5px 5px 5px;

}

.carousel-indicators li {
    width: 10px;
    height: 10px;
    border-radius: 100%;
}
.carousel-item:after {
  content:"";
  display:block;
  position:absolute;
  top:0;
  bottom:0;
  left:0;
  right:0;
  background:rgba(0,0,0,0.7);
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

      <header>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="/home"><img height=30px width=30px src="https://lh3.googleusercontent.com/YrIhuXYEyEmRr2Pi07r9T-ZVIcdS_XPYdxDTkgPeNuPKYo1-a45D91UjIZzo7hcdmx1dzHvxc0YP-7UQ5U_N9QFnWiguR4FLLbcjcg" style="vertical-align: middle;"/> Society App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/login"><i class="material-icons">login</i> Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/register"><i class="material-icons">app_registration</i> Register</a>
                </li>
            </ul>
        </div>
    </nav>
</header>



    <div class="carousel fade-carousel slide " data-ride="carousel" id="carouselExampleIndicators">
		<ol class="carousel-indicators">
			<li class="active" data-slide-to="0" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="1" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="2" data-target="#carouselExampleIndicators"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="First slide" class="d-block w-100" src="https://imaginahome.com/wp-content/uploads/2016/01/NightGallery_IMG_House_2_Night_HDR.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Search For Properties</h5>
					<p>You can now search for properties without even stepping outside!!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Second slide" class="d-block w-100" src="https://imaginahome.com/wp-content/uploads/2016/01/NightGallery_Benedict.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Pay Bills</h5>
					<p>Pay Bills sitting comfortable at your home</p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Third slide" class="d-block w-100" src="https://www.thepinnaclelist.com/wp-content/uploads/2020/09/172-Luxury-Real-Estate-1150-W-Garmon-Rd-Atlanta-GA-USA.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Post Your Properties</h5>
					<p>Buying or Selling properties was never been this easy before </p>
				</div>
			</div>
			
		</div><a class="carousel-control-prev" data-slide="prev" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" data-slide="next" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
	</div>
	
	
	<h3>
	What is Society Management System?

	</h3>
	
	<h6>
	<ul>
	<li>Manage various administrative activities through a smart dashboard that helps you access any feature in just a click</li>

<li>Introduce higher efficiency and transparency in accounting and finance management and track any income or expenses at any time in minutes</li>

<li>Convert huge bill generation, dispersal and payment tasks into activities that can be done in minutes, thus cutting time and efforts on them</li>

<li>Track resident complaints received through IVR, allow them to service personnel, record their status and then finally close them after proper resolution</li>

<li>Introduce higher security into the complex through state-of-the-art visitor, maid and vehicle tracking processes</li>

<li>Send notices, alerts and messages in seconds, personalize features and automate various activities</li>

<li>Use collected data to generate multiple types of reports which can be used to analyze data</li>

</ul>
	</h6>
	
	<h3 id="heading">Featured Properties</h3>
    <h6 id="subheading">Prominent projects that you may like</h6>

 <div class="container-fluid">
    <div class="row">
       <c:forEach items="${props}" var="property">
   <div class="col-md-3 col-sm-6">
    <div class="card">
        <img class="card-img-top" height= 200px width= 120px src="${property.image}">
        <div class="card-body">
            <p class="name">${property.name} <span class="badge badge-success style="vertical-align:center;">${property.type}</span></p>
            <p >Rs.${property.price} <i class="material-icons text-danger" >new_releases</i></p>
            <p>${property.description} </p>
            <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">View Details</button></span>
        </div>
    </div>
</div>
</c:forEach>
</div>
</div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm modal-dialog-centered">

    <!-- Modal content-->
    <div class="modal-content">
      
      <div class="modal-body">
      
        
        <div class="text-center">
        <p>Please Login to View More Details</p>
        <button id="modal-btn" type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        
        </div>
      </div>
    </div>

  </div>
</div>

   

<div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-3 col-sm-6 item">
                        
                        <ul>
                            <li><a href="/login">Login</a></li>
                            <li><a href="/register">Register</a></li>
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

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	</script> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
	</script> 
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
	</script>
       
 
		
		


        
    </body>
    
    <!--  <script>
    $(document).ready(function() {
    	  $(".btn").click(function(){
    		  alert("Please Login to view more details");
    	  })
    	}
)
    </script>-->
</html>