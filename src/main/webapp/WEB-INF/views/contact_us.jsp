<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
	<head>
		<meta charset="utf-8">
		<title>Contact | Everest Group</title>
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/responsive.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/colors/color1.css" id="colors">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/assets/img/favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Oswald:400,600&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/font-awesome-4.7.0/css/font-awesome.min.css">
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/w3data.js"></script>
	</head>
	<body ng-app="MyApp" ng-controller="contactCtrl" ng-clock class="header-fixed page no-sidebar header-style-2 topbar-style-1 menu-has-search">
		<div id="wrapper" class="animsition">
			<div id="page" class="clearfix">
				<%@include file="header.jsp" %>
				<div id="featured-title" class="featured-title clearfix">
					<div id="featured-title-inner" class="container clearfix">
						<div class="featured-title-inner-wrap">
							<div id="breadcrumbs">
								<div class="breadcrumbs-inner">
									<div class="breadcrumb-trail">
										<a href="index.html" class="trail-begin">
											<i class="fa fa-home"></i>
										</a><span class="sep">|</span><span class="trail-end">
											Contact Us</span>
									</div>
								</div>
							</div>
							<div class="featured-title-heading-wrap">
								<h1 class="feautured-title-heading">Contact</h1>
							</div>
						</div>
					</div>
				</div>
				<section class="contact-details pb-70">
					<div class="container">
						<div class="section-content">
							<div class="row">
								<div class="col-12 col-sm-12 col-md-7 col-lg-7">
									<h3 class="title">
										Contact <span>Us</span>
									</h3>
									<form ng-submit="sendNotificationFromContactUs()">
										<div class="form-row">
											<div class="form-group col-md-6">
												<input type="text" ng-model="firstname" name="firstname" id="firstname"
													class="form-control" placeholder="First Name" ng-change="setFlag()">
													<p ng-show="errorFirstName == 1" style="color: red;">{{msgFirstName}}</p>
											</div>
											<div class="form-group col-md-6">
												<input type="text" ng-model="lastname" name="lastname" id="lastname"
													class="form-control" placeholder="Last Name" ng-change="setFlag()">
													<p ng-show="errorLastName == 1" style="color: red;">{{msgLastName}}</p>
											</div>
											<div class="form-group col-md-12">
												<input type="email" ng-model="email" name="email" id="email"
													class="form-control" placeholder="Your Email" ng-change="setFlag()">
													<p ng-show="errorEmail == 1" style="color: red;">{{msgEmail}}</p>
											</div>
											<div class="form-group col-md-12">
												<input type="text" name="subject" ng-model="subject" class="form-control"
													placeholder="Subject" id="subject" ng-change="setFlag()">
													<p ng-show="errorSubject == 1" style="color: red;">{{msgSubject}}</p>
											</div>
											<div class="form-group col-md-12">
												<div class="contact-textarea">
													<textarea class="form-control" ng-model="message" rows="6"
														placeholder="Write Message" id="message" name="message"
														>
													</textarea>
													<button ng-disabled="spin == 1" class="btn btn-theme mt-4" type="submit"value="Submit Form"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i> Send Message</button>
												</div>
											</div>
											<div class="col-md-8 text-left">
												<strong ng-show="submitSuccess == 1" style="color: green;"><span class="fa fa-check-circle"></span> {{msgSuccess}}</strong>
												<strong ng-show="submitError == 1" style="color: red;"><span class="fa fa-times-circle"></span> {{msgError}}</strong>
											</div>
										</div>
									</form>
								</div>
								<div class="col-12 col-sm-12 col-md-5 col-lg-5">
									<h3 class="title">
										Get in <span>Touch</span>
									</h3>
									<div class="service-item style-1 border-1px">
										<div class="service-icon">
											<i class="fa fa-map-marker"></i>
										</div>
										<div class="content">
											<h5>
												<a href="#"> Address </a>
											</h5>
											<p>Bhayli TP 4, Opp. IIRA School, 30 M Canal Road, Bhayli, Vadodara 391410.</p>
										</div>
									</div>
									<div class="service-item style-1 border-1px">
										<div class="">
											<i class="fa fa-phone"></i>
										</div>
										<div class="content">
											<h5>
												<a href="#"> CONTACT NO. </a>
											</h5>
											<p><b>India</b> Vadodara +91 7698950055<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mumbai &nbsp;&nbsp;  +91 7698950333<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rajkot &emsp; +91 9879617636<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Navsari &emsp; +91 9428380099<br></p>
											<table><tr><td><b>Bahrain</b></td><td>    +973 38793836 </td></tr><tr><td><b>Dubai</b></td><td>      +971 582082458</td></tr><tr><td><b>USA</b></td><td>          +551 6890298</td></tr><tr><td><b>Nairobi</b>  </td><td>     +254 733938575</td></tr><tr><td><b>UK</b></td> <td>         +44 7508636725</td></tr>
										</table></div>
									</div>
									<div class="service-item style-1 border-1px">
										<div class="">
											<i class="fa fa-envelope-o" aria-hidden="true"></i>
										</div>
										<div class="content">
											<h5>
												<a href="#">Email</a>
											</h5>
											<p>
												<a href="#">info@everestconstruction.co.in</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="p-0">
					<div class="map">
					
							<iframe	src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d59059.97054978394!2d73.09259072438199!3d22.306452631813425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1severest%20group!5e0!3m2!1sen!2sin!4v1578572414604!5m2!1sen!2sin"
							width="100%" height="450" frameborder="0" style="border: 0;"
							allowfullscreen="">
						</iframe>
					</div>
				</section>
				<%@include file="footer.jsp" %>
			</div>
		</div>
		<a id="scroll-top"></a>
		<script>
			w3IncludeHTML();
		</script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/plugins.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/tether.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/animsition.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/owl.carousel.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/countto.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/equalize.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/jquery.isotope.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/owl.carousel2.thumbs.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/jquery.cookie.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/gmap3.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIEU6OT3xqCksCetQeNLIPps6-AYrhq-s&amp;region=GB"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/shortcodes.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/main.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/contact_us.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/jquery.themepunch.tools.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/rev-slider.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
	
	</body>
</html>