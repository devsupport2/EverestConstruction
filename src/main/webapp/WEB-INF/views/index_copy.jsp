<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="">
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<title> Sculp 3D &#8211; 3D Printing Company </title>
		<link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/front/assets/images/favicon.ico">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/themify-icons.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/flaticon.css" rel="stylesheet">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/css/responsive.css">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/animate.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/owl.carousel.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/owl.theme.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/slick.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/slick-theme.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/owl.transitions.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/jquery.fancybox.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/odometer-theme-default.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/assets/css/style.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/front/css/Century-Gothic.css" rel="stylesheet">
		<script src="<%= request.getContextPath() %>/resources/front/js/w3data.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_login.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_index.js"></script>
	</head>
	<body ng-app="MyApp" ng-controller="frontHomeCtrl" ng-clock>
		<div class="page-wrapper">
			<%@include file="header.jsp" %>
			<section class="hero hero-slider-wrapper hero-style-2">
				<div class="pattern">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
				<div class="hero-slider">
					<div class="slide">
						<img src="<%= request.getContextPath() %>/resources/front/assets/images/slider/slide-2.jpg" alt class="slider-bg">
						<div class="container">
							<div class="row">
								<div class="col col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 slide-caption text-center">
									<div class="slide-title">
										<h2  style="margin: 0em 0 10px;" > Turn Ideas to Reality </h2>
									</div>
									<div class="slide-subtitle mb-20">
										<p> Upload your 3D Model and get Part Estimate within seconds. </p>
									</div>
									<div class="btns">
										<%if(session.getAttribute("userid")!= null){%>										
											<a style="background-color: #ff5100; color: #fff; border: 1px solid #fff" href="<%=request.getContextPath() %>/upload_file" class="theme-btn"> UPLOAD A FILE </a>
										<%}else{%>
											<a style="background-color: #ff5100; color: #fff; border: 1px solid #fff" ng-click="setStatus('upload')" data-toggle="modal" data-target="#LoginModal" href="" class="theme-btn"> UPLOAD A FILE </a>
										<%}%>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide">
						<img src="<%= request.getContextPath() %>/resources/front/assets/images/slider/slide-3.jpg" alt class="slider-bg">
						<div class="container">
							<div class="row">
								<div class="col col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 slide-caption text-center">
									<div class="slide-title">
										<h2 style="margin: 0em 0 10px;" > 3D Designing Service </h2>
									</div>
									<div class="slide-subtitle mb-20">
										<p> Share your 2D Drawing Concepts and we will convert it to a 3D Design. </p>
									</div>
									<div class="btns">
										<a style="color: #fff; border: 1px solid #fff" href="#" class="theme-btn"> KNOW MORE </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide">
						<img src="<%= request.getContextPath() %>/resources/front/assets/images/slider/slide-4.jpg" alt class="slider-bg">
						<div class="container">
							<div class="row">
								<div class="col col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 slide-caption text-center">
									<div class="slide-title">
										<h2 style="margin: 0em 0 10px;" > Material Library</h2>
									</div>
									<div class="slide-subtitle mb-20">
										<p> Choose from a wide variety of FDM and DLP 3D Printing Materials. </p>
									</div>
									<div class="btns">
										<a style="color: #fff; border: 1px solid #fff" href="<%=request.getContextPath() %>/material_library" class="theme-btn">MATERIALS</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="divider">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ng-repeat="item in getHomePageIndustries" ng-if="$index == 0">
							<a href="<%= request.getContextPath() %>/case_study?industriesid={{item.industriesId}}">
								<div class="divider-wrapper divider-three">
									<div class="icon">
										<img src="<%= request.getContextPath() %>/resources/front/assets/images/Architectural.png"/>
									</div>
									<h2> {{item.industriesName}} </h2>
									<p> {{item.description}} </p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ng-repeat="item in getHomePageIndustries" ng-if="$index == 1">
							<a href="<%= request.getContextPath() %>/case_study?industriesid={{item.industriesId}}">
								<div class="divider-wrapper divider-two">
									<div class="icon">
										<img src="<%= request.getContextPath() %>/resources/front/assets/images/Creative.png"/>
									</div>
									<h2> {{item.industriesName}} </h2>
									<p>{{item.description}}</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ng-repeat="item in getHomePageIndustries" ng-if="$index == 2">
							<a href="<%= request.getContextPath() %>/case_study?industriesid={{item.industriesId}}">
								<div class="divider-wrapper divider-one">
									<div class="icon">
										<img src="<%= request.getContextPath() %>/resources/front/assets/images/Engineering.png"/>
									</div>
									<h2> {{item.industriesName}} </h2>
									<p> {{item.description}}</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ng-repeat="item in getHomePageIndustries" ng-if="$index == 3">
							<a href="<%= request.getContextPath() %>/case_study?industriesid={{item.industriesId}}">
								<div class="divider-wrapper divider-two">
									<div class="icon">
										<img src="<%= request.getContextPath() %>/resources/front/assets/images/hospital.png"/>
									</div>
									<h2> {{item.industriesName}} </h2>
									<p>{{item.description}}</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section>
			<section class="features-section">
				<div class="container">
					<div class="row">
						<div class="col col-lg-12">
							<div class="section-title mb-40 text-center">
								<span> Just 3 steps to follow  </span>
								<h2>  3D Printing On Demand  </h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col col-xs-12">
							<div class="features-grids">
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 grid text-center">
									<div class="icon">
										<i class="fi flaticon-expand"></i>
									</div>
									<h3> Upload a 3D Model </h3>
									<p> Create your 3D Design in any CAD Software. Or consult our expert and get free 3D Design for your Prototypes. </p>
								</div>
								<div style="padding: 36px 35px 57px;" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 grid text-center">
									<div class="icon">
										<i class="fi flaticon-3d"></i>
									</div>
									<h3> Get Instant Quotation </h3>
									<p> Select your Materials, get instant estimation and delivery time for your Parts.  </p>
								</div>
								<div style="padding: 36px 35px 57px;" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 grid text-center">
									<div class="icon">
										<i class="fi flaticon-gear"></i>
									</div>
									<h3> Receive Your Parts </h3>
									<p>  We 3D Print and ship all across India or simply pick up from our facility. </p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="request">
								<%if(session.getAttribute("userid")!= null){%>
									<h4><a href="<%=request.getContextPath() %>/upload_file"> UPLOAD A FILE &nbsp; <i class="fa fa-upload"></i></a></h4>
								<%}else{%>
									<h4><a ng-click="setStatus('upload')" href="" data-toggle="modal" data-target="#LoginModal"> UPLOAD A FILE &nbsp; <i class="fa fa-upload"></i></a></h4>
								<%}%>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="fun-fact-section parallax" id="fun-fact-section">
				<div class="outer-box">
					<div class="auto-container">
						<div class="fact-counter">
							<div class="row">
								<div class="counter-column col-lg-3 col-md-6 col-sm-6 wow fadeInUp">
									<div class="count-box">
										<div class="count"><span class="count-text" data-speed="5000" data-stop="10">0</span></div>
										<h4 class="counter-title">  3D  <br> Printers </h4>
									</div>
								</div>
								<div class="counter-column col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms">
									<div class="count-box">
										<div class="count">
											<span class="count-text" data-speed="5000" data-stop="10">0</span> +
										</div>
										<h4 class="counter-title"> Industries  <br> Impacted </h4>
									</div>
								</div>
								<div class="counter-column col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="800ms">
									<div class="count-box">
										<div class="count">
											<span class="count-text" data-speed="5000" data-stop="1000">0</span> +
										</div>
										<h4 class="counter-title"> Parts  <br> Produced </h4>
									</div>
								</div>
								<div class="counter-column col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="1200ms">
									<div class="count-box">
										<div class="count">
											<span class="count-text" data-speed="5000" data-stop="100">0</span> +
										</div>
										<h4 class="counter-title"> Customers  <br> Served </h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="about-section section-padding">
				<div class="container">
					<div class="row">
						<div class="col col-lg-12">
							<div class="section-title text-center mb-20 ">
								<h2> 3D Design With Us </h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col col-lg-12">
							<p class="font-16 text-center txt-dark">Our Team of expert designers is here to help you create your next big idea in 3D. Simply share with us your concept drawings and dimensions. If you want to 3D Print a Part and don't have a design for it we provide free design service and consultation.</p>
						</div>
					</div>
					<div class="row mt-30"></div>
					<div class="row">
						<div class="col col-md-12 text-center">
							<a class="contact-btn style-1" href="#"> LEARN MORE </a>
						</div>
					</div>
				</div>
			</section>
			<section class="projects-section over-layer-white parallax-bg"  data-type="parallax" data-speed="5">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-title mb-30 text-center">
								<h2 class="mb-10"> Material  <span>Library</span></h2>
								<span> Select the Material of Your Choice  </span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div id="projects_carousel" class="owl-carousel">
								<c:forEach items="${materials}" var="materials">
									<div class="blog-post item">
										<div class="blog-thumb">
											<a href="<%=request.getContextPath()%>/material_details?materialid=${materials.materialId}">
												<img class="img-responsive" src="${materials.materialImage}" alt="" />
											</a>
										</div>
										<div class="blog-content">
											<div class="content-show">
												<h4><a href="<%=request.getContextPath()%>/material_details?materialid=${materials.materialId}">  ${materials.materialName} </a></h4>
											</div>
											<div class="content-hide">
												<p> ${materials.description}</p>
												<div class="text-center">
													<a class="project-btn" href="<%=request.getContextPath() %>/material_library">  Read More </a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="row mt-30">
						<div class="col col-md-12 text-center">
							<a class="contact-btn style-1" href="<%=request.getContextPath() %>/material_library"> View All </a>
						</div>
					</div>
				</div>
			</section>
			<section class="partners-section">
				<div class="container">
					<div class="row">
						<div class="col col-lg-10 col-lg-offset-1">
							<div class="section-title-s3">
								<h2> WE HAVE SERVED </h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col col-xs-12">
							<div class="partner-grids partners-slider">
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/1.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/2.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/3.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/4.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/5.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/6.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/7.jpg"></div>
								<div class="grid"><img src="<%= request.getContextPath() %>/resources/front/assets/images/clients/8.jpg"></div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="testimonials-section section-padding">
				<div class="pattern">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
				<div class="container">
					<div class="row">
						<div class="col col-lg-8 col-lg-offset-2">
							<div class="testimonials-grids testimonials-slider">
								<div class="grid">
									<div class="quote">
										<p> One of the best service providers in the segment of rapid prototyping and design industry. The on time delivery and extraordinary quality standards make Sculp 3D a leader in industry. </p>
									</div>
									<div class="client-info">
										<h4> Himmat Singh </h4>
										<span> Photom Technologies Pvt. Ltd, Ahmedabad </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p> One of the few startups in 3D Printing which takes 100% focus on customer service and expectations. </p>
									</div>
									<div class="client-info">
										<h4> Ankit Murarka </h4>
										<span> Entrepreneur, Vapi </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p>We had a very good experience with Sculp 3D Team. They have a quick response, fastest delivery and high quality prints, along with personal consultation on design. </p>
									</div>
									<div class="client-info">
										<h4> Tarun Purohit </h4>
										<span> Limelight Technologies Pvt. Ltd, Ahmedabad </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p>I had a great experience 3D Printing with them. They provide affordable and awesome quality work.</p>
									</div>
									<div class="client-info">
										<h4> Sebastian Chennattu,</h4>
										<span> Student, Mumbai </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p> Quality, Delivery and Experience you can rely on. Excellent Customer Support.</p>
									</div>
									<div class="client-info">
										<h4> Abhinandan Bhargava </h4>
										<span> RAAV Technologies, Delhi </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p>It was an amazing response for my critical scientific working model. It was all done very smartly with perfections.</p>
									</div>
									<div class="client-info">
										<h4> Ketan Dave </h4>
										<span> Model Maker, Ahmedabad </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p>I am absolutely delighted by the service of Sculp 3D who prepared a 3D Model of Building Plan. I strongly recommend Sculp 3D for making 3D Printed Building Models.</p>
									</div>
									<div class="client-info">
										<h4> Gaurang Joshi </h4>
										<span> Riddhi Siddhi Construction Consultancy, Vadodara </span>
									</div>
								</div>
								<div class="grid">
									<div class="quote">
										<p> Nice finish on the 3D Printed Parts. We highly recommend their service.  </p>
									</div>
									<div class="client-info">
										<h4> Kajal Shrivastava </h4>
											<span> Pulse Prognostics, Bangalore </span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section>
					<div class="container-fluid">
						<div class="row">
							<div class="map">
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14767.489989231479!2d73.1652885!3d22.2828192!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xda6fcbf2b472199e!2sSculp+3D+%7C+3D+Printing+Service%2C+3D+Printers%2C+Filaments%2C+DLP+Resin!5e0!3m2!1sen!2sin!4v1561627685513!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</section>
				<%@include file="footer.jsp" %>
			</div>			
			<script src="<%= request.getContextPath() %>/resources/front/assets/js/jquery.min.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/assets/js/bootstrap.min.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/assets/js/jquery-plugin-collection.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/assets/js/script.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/js/wow.js"></script>
			<script src='https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js'></script>
			<script  src="<%= request.getContextPath() %>/resources/front/js/index.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/js/owl.carousel.min.js"></script>
			<script src="<%= request.getContextPath() %>/resources/front/js/appear.js"></script>
			<script>
				// Elements Animation
				if($('.wow').length){
					var wow = new WOW({
						boxClass:     'wow',      // animated element css class (default is wow)
					}
					animateClass: 'animated', // animation css class (default is animated)
					offset:       0,          // distance to the element when triggering the animation (default is 0)
					mobile:       false,       // trigger animations on mobile devices (default is true)
					live:         true       // act on asynchronously loaded content (default is true)
				});
					wow.init();
				}//Fact Counter + Text Count
				if($('.count-box').length){
					$('.count-box').appear(function(){
						var $t = $(this),
						n = $t.find(".count-text").attr("data-stop"),
						r = parseInt($t.find(".count-text").attr("data-speed"), 10);
						if (!$t.hasClass("counted")) {
							$t.addClass("counted");
							$({
								countNum: $t.find(".count-text").text()
								}).animate({
									countNum: n
									}, {
										duration: r,
										}
									easing: "linear",
									step: function() {
										$t.find(".count-text").text(Math.floor(this.countNum));
										},
										complete: function() {
											$t.find(".count-text").text(this.countNum);
											}
										});
							}
					},{accY: 0});
					}
			</script>
			<script>
		    //owl-Carousel-TwoColumn
		    $("#projects_carousel").owlCarousel({
		        loop:true,
		        autoplay: 5000,
		        autoplayHoverPause:false,
		        smartSpeed: 700,
		        items: 3,
		        margin:30,
		        dots: true,
		        nav:true,
		        navText: [
		          '<i class="fa fa-long-arrow-left"></i>',
		          '<i class="fa fa-long-arrow-right"></i>'
		        ],
		        responsive:{
		          0:{
		            items:1
		          },
		          480:{
		            items:1
		          },
		          600:{
		            items:1
		          },
		          800:{
		            items:2
		          },
		          1024:{
		            items:3
		          },
		          1200:{
		            items:3
		          }
		        }
		    });
		
		</script>
		<script>
		$("div.blog-post").hover(
		function() {
		$(this).find("div.content-hide").slideToggle("fast");
		},
		function() {
		$(this).find("div.content-hide").slideToggle("fast");
		}
		);    
		</script>
	</body>
</html>
