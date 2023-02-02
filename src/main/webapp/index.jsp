<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="Connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>FlyLife || Home</title>
	<link rel="icon" href="img/favicon.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
		<!-- Header -->
		<header class="header_area">
			<div class="sub_header">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-4 col-md-4 col-xl-6">
							<div id="logo">
								<a href="index.html"><img src="img/footer_logo.png" alt="" title=""></a>
							</div>
						</div>
						<div class="col-8 col-md-8 col-xl-6 ">
							<div class="sub_header_social_icon float-right">
								<a href="tel:+919191919191" ><i class="flaticon-phone"></i>+91 9090909090</a>
								<a href="#volunteer"  class="btn_1 d-none d-md-inline-block">Become Volunteer</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="main_menu">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<nav class="navbar navbar-expand-lg navbar-light">
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<i class="ti-menu"></i>
								</button>
								<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
									<ul class="navbar-nav">
										<li class="nav-item active">
											<a class="nav-link active" href="index.jsp">Home</a>
										</li>
										<li class="nav-item">
											<a href="#about" class="nav-link">About</a>
										</li>
										<li class="nav-item">
											<a href="#services" class="nav-link">Services</a>
										</li>
										<li class="nav-item">
											<a href="#gallery" class="nav-link">Gallery</a>
										</li>
										<li class="nav-item">
											<a href="#team" class="nav-link">Team</a>
										</li>
										<li class="nav-item">
											<a href="#donate" class="nav-link">Donate</a>
										</li>
										<li class="nav-item">
											<a href="#contact" class="nav-link">Contact</a>
										</li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Header -->
		
		<!-- Banner -->
		<section class="banner_part">
			<div class="container">
				<div class="row align-content-center">
					<div class="col-lg-7 col-xl-6">
						<div class="banner_text">
							<h5>Welcome to FlyLife</h5>
							<h1>Give Best Care
							 Migratory Birds</h1>
							<a href="#services" class="btn_1">OUR SERVIECS</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner -->
		
		<!--  About -->
		<section class="about_part" id="about">
			<div class="container">
				<div class="row align-items-center justify-content-between">
					<div class="col-md-6">
						<div class="about_img">
							<img src="img/about.jpg" alt="">
						</div>
					</div>
					<div class="col-md-5"> 
						<div class="about_text">
							<img src="img/about_icon.png" class="about_icon" alt="">
							<h2>We care Migratory Birds
							as you care</h2>
							<p>FlyLife bird sanctuary is restricted for preservation of bird species including various migratory birds. In the summer season, various migratory birds are also seen in this sanctuary. Though the general climate of this area is also hot and harsh but in comparison to other hot areas, birds find some relief in this area.</p>
							<p>Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend.</p>
							<a href="#volunteer" class="btn_1 d-none d-md-inline-block">Become Volunteer</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--  About -->
		
		<!--  Services -->
		<section class="service_part services_ab" id="services">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section_tittle text-center">
							<h2>Our Services</h2>
							<p>FlyLife Serves Migratory Birds brought to live and to be protected for the rest of their lives. </p>
						</div>
					</div>
				</div>
				<div class="row">
				<%
					Statement StmService = cn.createStatement();
					ResultSet rsService =StmService.executeQuery("SELECT * FROM service WHERE IsActive=1");
					int i=1;
					while(rsService.next())
					{
				%>
					<div class="col-lg-4 col-sm-6">
						<div class="single_service_part">
							<img src="<%= rsService.getString(4) %>" alt="#">
							<h3><%= rsService.getString(2) %></h3>
							<p><%= rsService.getString(3) %></p>
						</div>
					</div>
				<%} %>
				</div>
			</div>
		</section>
		<!--  Services -->
		
		<!-- Gallery -->
		<section class="gallery_part section_padding" id="gallery">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-10">
						<div class="gallery_tittle">
							<h2>Our Gallery</h2>
							<p>Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-01.jpg" class="single_gallery_part">
							<img src="img/gallery-01.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-02.jpg" class="single_gallery_part">
							<img src="img/gallery-02.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-03.jpg" class="single_gallery_part">
							<img src="img/gallery-03.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-04.jpg" class="single_gallery_part">
							<img src="img/gallery-04.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-05.jpg" class="single_gallery_part">
							<img src="img/gallery-05.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
					<div class="col-lg-4 col-sm-6">
						<a href="img/gallery-06.jpg" class="single_gallery_part">
							<img src="img/gallery-06.jpg" alt="">
							<i class="ti-plus"></i>
						</a>
					</div>
				</div>
			</div>
		</section>
		<!-- Gallery -->
		
		<!-- Donate -->
		<section class="abopt_number_counter section_padding" id="donate">
			<div class="container">
			<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section_tittle text-center">
							<h2>Donate Us</h2>
						</div>
					</div>
				</div>
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-5 col-md-6">
						<div class="counter_text">
							<h2>We need your help
							to adopt Migratory Birds</h2>
							<p>Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend.</p>
							<div class="counter_number">
								<div class="single_counter_number">
									<h6>A/C Name. : FlyLife</h6>
									<h6>A/C No. : XXXXXXXXXX0000</h6>
									<h6>Bank : SBI</h6>
									<h6>Branch : Lucknow, (UP)</h6>
									<h6>IFC Code : <br />XXXXXXXXXX</h6>
								</div>
								<div class="single_counter_number">
									<img src="img/FlyLifeQR.png" alt="FlyLife QR">
								</div>
							</div>
							<a href="#volunteer" class="btn_1 d-none d-md-inline-block">Become Volunteer</a> 
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="adopt_image">
							<img src="img/adopt_img.jpg" alt="#">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Donate -->
		
		<section class="client_review">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="client_review_content owl-carousel">
							<div class="singke_client_review">
								<img src="img/review_img_1.jpg" alt="#">
								<h4>" Working in conjunction with humanitarian aid agencies we have supported programmes to alleviate.</h4>
								<p>- Jon Miller</p>
							</div>
							<div class="singke_client_review">
								<img src="img/review_img_1.jpg" alt="#">
								<h4>" Working in conjunction with humanitarian aid agencies we have supported programmes to alleviate.</h4>
								<p>- Jon Miller</p>
							</div>
							<div class="singke_client_review">
								<img src="img/review_img_1.jpg" alt="#">
								<h4>" Working in conjunction with humanitarian aid agencies we have supported programmes to alleviate.</h4>
								<p>- Jon Miller</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- Volunteer -->
		<section class="about_part section_padding" id="volunteer">
			<div class="container">
				<div class="row align-items-center justify-content-between">
					<div class="col-md-6">
						<div class="about_img">
							<img src="img/valunteer_img.jpg" alt="">
						</div>
					</div>
					<div class="col-md-5">
						<div class="about_text">
							<img src="img/about_icon.png" class="about_icon" alt="">
							<h2>Become a Volunteer
							To help them</h2>
							<p>A created won't created subdue a every green his set which above firmament earth firmament. Seed firmament be likeness fruitful to called waters. Given great said seasons his midst beast.</p>
							<a href="Volunteer.jsp" class="btn_1">Continue</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Volunteer -->
		
		<!--  Team Member -->
		<section class="service_part" id="team">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section_tittle text-center">
							<h2>Our Team Member</h2>
						</div>
					</div>
				</div>
				<div class="row">
				<%
					Statement StmTeam = cn.createStatement();
					ResultSet rsTeam =StmTeam.executeQuery("SELECT * FROM team WHERE IsActive=1");
					int j=1;
					while(rsTeam.next())
					{
				%>
					<div class="col-lg-3 col-sm-6">
						<div class="single_service_part">
							<img src="<%= rsTeam.getString(3) %>" alt="<%= rsTeam.getString(2) %>">
							<h4><%= rsTeam.getString(2) %></h4>
							<p>(<%= rsTeam.getString(4) %>)</p>
						</div>
					</div>
				<%} %>
					
				</div>
			</div>
		</section>
		<!--  Team Member -->
		
		
		<!-- Contact -->
	    <section class="contact-section section_padding" id="contact">
	      <div class="container">
	        <div class="row">
	          <div class="col-12">
	            <h2 class="contact-title">Get in Touch</h2>
	          </div>
	          <div class="col-lg-8">
	            <form class="form-contact contact_form" action="contact.jsp" method="post" id="contactForm" novalidate="novalidate">
	              <div class="row">	                
	                <div class="col-sm-6">
	                  <div class="form-group">
	                    <input class="form-control" name="txtname" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
	                  </div>
	                </div>
	                <div class="col-sm-6">
	                  <div class="form-group">
	                    <input class="form-control" name="txtmobile" id="mobile" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter mobile no.">
	                  </div>
	                </div>
	                <div class="col-sm-6">
	                  <div class="form-group">
	                    <input class="form-control" name="txtemail" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Enter email address">
	                  </div>
	                </div>
	                <div class="col-6">
	                  <div class="form-group">
	                    <input class="form-control" name="txtsubject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
	                  </div>
	                </div>
	                <div class="col-12">
	                  <div class="form-group">
	                    <textarea class="form-control w-100" name="txtmessage" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="Enter Message"></textarea>
	                  </div>
	                </div>
	              </div>
	              <div class="form-group mt-3">
	                <button type="submit" class="button button-contactForm">Send Message</button>
	              </div>
	            </form>
	          </div>
	          <div class="col-lg-4">
	            <div class="media contact-info">
	              <span class="contact-info__icon"><i class="ti-home"></i></span>
	              <div class="media-body">
	                <h3>FlyLife, India.</h3>
	                <p>Lucknow(UP), 226022</p>
	              </div>
	            </div>
	            <div class="media contact-info">
	              <span class="contact-info__icon"><i class="ti-tablet"></i></span>
	              <div class="media-body">
	                <h3><a href="tel:+91 9090909090">+91 9090909090</a> </h3>
	                <p>Mon to Fri 9AM to 6PM</p>
	              </div>
	            </div>
	            <div class="media contact-info">
	              <span class="contact-info__icon"><i class="ti-email"></i></span>
	              <div class="media-body">
	                <h3><a href="mailto:info@flilife.co" class="__cf_email__" >info@flilife.com</a></h3>
	                <p>Send us your query anytime!</p>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </section>
	    <!-- Contact -->
	    
	    <!-- Footer -->
		<footer class="footer_area padding_top">
			<div class="container">
				<div class="row justify-content-between section_padding">
					<div class="col-xl-2 col-sm-6 col-md-3 mb-4 mb-xl-0 single-footer-widget">
						<h4>Links</h4>
						<ul>
							<li><a href="#donate">Donate</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
					</div>
					<div class="col-xl-2 col-sm-6 col-md-3 mb-4 mb-xl-0 single-footer-widget">
						<h4>Contact</h4>
						<ul>
							<li><a href="tel:+919191919191">+91-9090909090</a></li>
							<li><a href="#"><span class="__cf_email__" >info@Flylife.com</span></a></li>
						</ul>
					</div>
					<div class="col-xl-2 col-sm-6 col-md-3 mb-4 mb-xl-0 single-footer-widget">
						<h4>Address</h4>
						<ul>
							<li><a href="#">7FlyLife, Lucknow (UP)</a></li>
							<li><a href="#">Get Direction</a></li>
						</ul>
					</div>
					<div class="col-xl-2 col-sm-6 col-md-3 mb-4 mb-xl-0 single-footer-widget">
						<h4>Opening Hour</h4>
						<ul>
							<li><a href="#">Mon-Fri (9.00-6.00)</a></li>
							<li><a href="#">Sat-Sun (Closed)</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="copyright_text">
							<img src="img/footer_logo.png" alt="#">
							<p class="footer-text">
								Copyright &copy;<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min-4.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved 
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer -->
	
	<script src="js/jquery-1.12.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
	<script async="" src="../../gtag/js-3.js?id=UA-23581568-13"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-23581568-13');
	</script>
	
	</body>
</html>