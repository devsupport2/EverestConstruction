<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html ng-app="MyApp" ng-controller="projectCtrl" ng-cloak ng-init="getProjectDetailsById('<%= request.getParameter("projectid") %>')">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>{{projectDetail.projectTitle}}</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/front/project-detail/apple-touch-icon.png">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/fontAwesome.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/light-box.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/owl-carousel.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/project-detail/css/templatemo-style.css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
		<script src="<%=request.getContextPath() %>/resources/front/project-detail/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		<link href="http://photoswipe.com/dist/photoswipe.css?v=4.1.1-1.0.4" rel="stylesheet" />
		<link href="http://photoswipe.com/dist/default-skin/default-skin.css?v=4.1.1-1.0.4"	rel="stylesheet" />
		<script src="http://photoswipe.com/dist/photoswipe.min.js?v=4.1.1-1.0.4"></script>
		<script	src="http://photoswipe.com/dist/photoswipe-ui-default.min.js?v=4.1.1-1.0.4"></script>
		<script src="http://use.typekit.net/snf1yod.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_project.js"></script>
		<script>
			try {
				Typekit.load();
			} catch (e) {
			}
		</script>
		<style>
			input[type=number]::-webkit-inner-spin-button, 
			input[type=number]::-webkit-outer-spin-button { 
			    -webkit-appearance: none;
			    -moz-appearance: none;
			    appearance: none;
			    margin: 0; 
			}
			.spec-content .list-group-item i {
				border: 0px solid #aaa;
			}
			.demotext p {
			    color: #333 !important;
			    font-size: 16px !important;
			}
		</style>
	</head>
	<body>
		<header class="nav-down responsive-nav hidden-lg hidden-md">
			<button type="button" id="nav-toggle" class="navbar-toggle"	data-toggle="collapse" data-target="#main-nav">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div id="main-nav" class="collapse navbar-collapse">
				<nav>
					<ul class="nav navbar-nav">
						<li><a href="#top">ABOUT {{projectDetail.projectTitle}}</a></li>
						<li><a href="#featured"> Location </a></li>
						<li><a href="#projects"> Layout Plan </a></li>
						<li><a href="#video"> Presentation </a></li>
						<li><a href="#blog">Blog Entries</a></li>
						<li><a href="#contact">Contact Us</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<div class="sidebar-navigation hidde-sm hidden-xs">
			<div class="logo" ng-show="projectDetail.projectLogo">
				<a href="#">
					<img src="{{projectDetail.projectLogo}}">
				</a>
			</div>
			<nav>
				<ul>
					<li>
						<a href="#about"> <span class="rect"></span> <span
							class="circle"></span> ABOUT {{projectDetail.projectTitle}}
						</a>
					</li>
					<li>
						<a href="#master-plan"> <span class="rect"></span> <span
							class="circle"></span> Layout Plan
						</a>
					</li>
					<li>
						<a href="#floor-plans"> <span class="rect"></span> <span
							class="circle"></span> Floor Plans
						</a>
					</li>
					<li  ng-show="projectDetail.locationMapLink">
						<a href="#location"> <span class="rect"></span> <span
							class="circle"></span> Location
						</a>
					</li>
					<!-- <li>
						<a href="#agencies"> <span class="rect"></span> <span
							class="circle"></span> Agencies
						</a>
					</li> -->
					<li>
						<a href="#specifications"> <span class="rect"></span> <span
							class="circle"></span> Specifications
						</a>
					</li>
					<li>
						<a href="#amenities"> <span class="rect"></span> <span
							class="circle"></span> Amenities
						</a>
					</li>
					<li>
						<a href="#Payment-Schedules"> <span class="rect"></span>
							<span class="circle"></span> Payment Schedules
						</a>
					</li>
					<li>
						<a href="#approved-banks"> <span class="rect"></span> <span
							class="circle"></span> Approved by Banks
						</a>
					</li>
					<li>
						<a href="#work-progress"> <span class="rect"></span> <span
							class="circle"></span> Work Progress
						</a>
					</li>
					<li>
						<a href="#pdf"> <span class="rect"></span> <span
							class="circle"></span> Download PDF
						</a>
					</li>
					<li ng-click="redirectToPage()" ng-show="projectDetail.siteLink">
						<a href="{{projectDetail.siteLink}}" target="_blank"><span class="rect"></span> <span
							class="circle"></span> Visit WebSite
						</a>
					</li>
					<li>
						<a href="#contact"> <span class="rect"></span> <span
							class="circle"></span> Request a Call Back
						</a>
					</li>
				</ul>
			</nav>
			<ul class="social-icons">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-rss"></i></a></li>
				<li><a href="#"><i class="fa fa-behance"></i></a></li>
			</ul>
		</div>
		<div class="slider">
			<div class="Modern-Slider content-section" id="top">
				<c:forEach items="${projectsliders}" var="projectsliders">
					<div class="item">
						<div class="img-fill">
							<img style="width: -webkit-fill-available;" class="img-responsive"
								src="${projectsliders.image}" />
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="page-content">
			<section id="about" class="content-section">
				<div class="contact-detail">
					<div class="row">
						<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
							<h3>
								<i class="icon-envelope medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Available Property Types
							</h3>
							<p><span ng-repeat="rt in realestatetypeById"> {{rt.realestateTypeName}},</span><span ng-repeat="rs in subrealestateById"> {{rs.subcategoryTitle}},</span><span ng-repeat="rr in realestateById"> {{rr.realestateTitle}},</span></p>
						</div>
						<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
							<h3>
								<i class="icon-phone medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Location
							</h3>
							<p>{{projectDetail.locationName}}, {{projectDetail.locationCity}}</p>
						</div>
						<!-- <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12" ng-if="projectDetail.reraNo">
							<h3>
								<i class="icon-phone medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Rera Number
							</h3>
							<p>{{projectDetail.reraNo}}</p>
						</div> -->
						<!-- <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<h3>
								<i class="icon-phone medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Project Info
							</h3>
							<p>99 Units</p>
						</div> -->
					</div>
				</div><br>
				<div class="contact-detail">
					<div class="row">
						<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12" ng-if="projectDetail.reraNo">
							<h3>
								<i class="icon-phone medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Rera Number
							</h3>
							<p>{{projectDetail.reraNo}}</p>
						</div>
						<!-- <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<h3>
								<i class="icon-phone medium-icon wow bounceIn"
									data-wow-delay="0.6s"></i> Project Info
							</h3>
							<p>99 Units</p>
						</div> -->
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h1>
								ABOUT <em> {{projectDetail.projectTitle}} </em>
							</h1>
						</div>
						<div style="text-align: justify;font-size:16px;" class="text-content"ng-bind-html="projectDetail.description | to_trusted">
						</div>
					</div>
					<!-- <div class="col-md-12">
						<div class="box-video">
							<div class="bg-video">
								<div class="bt-play">Play</div>
							</div>
							<div class="video-container">
								<iframe width="100%" height="520"
									src="https://www.youtube.com/embed/i2ST1FBNNlo?start=57"
									frameborder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
					</div> -->
				</div>
				<!-- <div style="margin-top: 20px;" class="accent-button button">
					<a href="#blog"> PROJECT GALLERY </a>
				</div> -->
			</section>
			<section id="master-plan" class="content-section">
				<div class="section-heading">
					<h1>
						Layout <em>Plan</em>
					</h1>
				</div>
				<div class="section-content">
					<div class="masonry">
						<div class="row">
							<div id="demo-test-gallery" class="item demo-gallery">
								<div class="col-md-12">
									<!-- <div class="call-action-style1 " style="max-height:500px;overflow:hidden;padding:0px;"> -->
									<div class="call-action-style1 ">
										<a href="{{projectDetail.layoutMap}}"
											data-size="4962x1754"
											data-med="{{projectDetail.layoutMap}}"
											data-med-size="4962x1754" data-author="Layout Plan"
											class="demo-gallery__img--main"> <img
											src="{{projectDetail.layoutMap}}">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section id="floor-plans" class="content-section">
				<div class="section-heading">
					<h1>
						Floor <em>Plans</em>
					</h1>
				</div>
				<div class="section-content">
					<div id="demo-test-gallery" class="masonry demo-gallery">
						<div class="row">
							<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12" ng-repeat="fl in floorlayoutById">
								<div class="blog-post">
									<div class="blog-thumb" style="max-height: 180px;">
										<a href="{{fl.image}}" data-size="2481x1754"
											data-med="{{fl.image}}"
											data-med-size="2481x1754" data-author="Type A+, 3BHK Villas"
											class="demo-gallery__img--main"> <img
											class="img-responsive" src="{{fl.image}}">
										</a>
									</div>
									<div class="blog-content">
										<div class="content-show">
											<h4>
												{{fl.categoryName}} "{{fl.unitName}}" <span>Floor: {{fl.floorNumber}} </span>
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section id="location" class="content-section" ng-show="projectDetail.locationMapLink">
				<div id="contact-content">
					<div class="section-heading">
						<h1>
							Project <em>Location</em>
						</h1>
					</div>
				</div>
				<div id="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3689.5839097430226!2d73.34530591473248!3d22.36933468528772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fd122090b67db%3A0x7e30b929434e71b8!2sOrbit99%20Villas!5e0!3m2!1sen!2sin!4v1579266210900!5m2!1sen!2sin"
						width="100%" height="450" frameborder="0" style="border: 0;"
						allowfullscreen="">
					</iframe>
				</div>
			</section>
			<section id="specifications" class="content-section">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h1>
								Specifications <em> {{projectDetail.projectTitle}}</em>
							</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12" style="padding-bottom: 10px;">
						<div class="spec-content">
							<div class="" ng-repeat="s in projectSpecification">
								<h4 style="background-color:grey;padding:5px;color:white;"> {{s.title}} </h4><span style=""></span>
								<span class="demotext" ng-bind-html="s.description | to_trusted"></span>
							</div>
							<!-- <ul class="list-group">
								<li ng-repeat="s in projectSpecification" style="display:flex" class="list-group-item"><i class="fa fa-check" aria-hidden="true"></i>
									<span><b>{{s.title}} - </b></span><br><span class="demotext" ng-bind-html="s.description | to_trusted"></span>
								</li>
							</ul> -->
						</div>
					</div>
				</div>
			</section>
			<section id="amenities" class="content-section">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h1>
								Amenities <em> {{projectDetail.projectTitle}}</em>
							</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12" style="padding-bottom: 10px;text-align:left;">
						<div class="spec-content">
							<div class="" ng-repeat="am in projectAmenity">
								<h4 style="background-color:grey;padding:5px;color:white;"> {{am.title}} </h4><span style=""></span>
								<span class="demotext" ng-bind-html="am.description | to_trusted"></span>
							</div>
							
							<!-- <ul class="list-group">
								<li ng-repeat="s in projectSpecification" style="display:flex" class="list-group-item"><i class="fa fa-check" aria-hidden="true"></i>
									<span><b>{{s.title}} - </b></span><br><span class="demotext" ng-bind-html="s.description | to_trusted"></span>
								</li>
							</ul> -->
						</div>
					</div>
				</div>
				<%-- <div class="owl-carousel owl-theme">
					<c:forEach items="${amenities}" var="amenities">
						<div class="item">
							<div class="image">
								<img style="width:100px;height:100px;" class="img-responsive img-circle" src="${amenities.attachment}">
							</div>
							<div class="text-content">
								<!-- <span ng-bind-html="am.description | to_trusted"></span> -->
								<span>${amenities.title}</span>
							</div>
						</div>
					</c:forEach>
				</div> --%>
			</section>
			<section id="Payment-Schedules" class="content-section">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h1>
								Payment <em> Schedules </em>
							</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" ng-repeat="ps in projectPaymentSchedule">
						<div class="pv-30 ph-20 ps-block ps-bg1 bordered shadow text-center object-non-visible animated object-visible fadeInDownSmall"
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">
							<h3>{{ps.paymentLable}}</h3>
							<p>{{ps.paymentValue}}{{ps.unitName}}</p>
						</div>
					</div>
				</div>
			</section>
			<section id="agencies" class="content-section">
				<!-- <div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h1>
								<em>Agencies</em>
							</h1>
						</div>
					</div>
				</div> -->
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" ng-show="projectDetail.developerCompanyName">
						<div class="pv-30 ph-20 service-block bordered shadow text-center object-non-visible animated object-visible fadeInDownSmall"
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">
							<h3>Developer</h3>
							<div class="divider clearfix"></div>
							<p>{{projectDetail.developerCompanyName}}</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" ng-show="projectDetail.architechName">
						<div class="pv-30 ph-20 service-block bordered shadow text-center object-non-visible animated object-visible fadeInDownSmall"
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">
							<h3>Arhictect</h3>
							<div class="divider clearfix"></div>
							<p>{{projectDetail.architechName}}</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" ng-show="projectDetail.designerName">
						<div class="pv-30 ph-20 service-block bordered shadow text-center object-non-visible animated object-visible fadeInDownSmall"
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">
							<h3>Structurl Designer</h3>
							<div class="divider clearfix"></div>
							<p>{{projectDetail.designerName}}</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" ng-show="projectDetail.advisorName">
						<div class="pv-30 ph-20 service-block bordered shadow text-center object-non-visible animated object-visible fadeInDownSmall"
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">
							<h3>Advisor</h3>
							<div class="divider clearfix"></div>
							<p>{{projectDetail.advisorName}}</p>
						</div>
					</div>
				</div>
			</section>
			<section id="approved-banks" class="content-section">
				<div class="section-heading">
					<h1>
						Approved by <em>Banks</em>
					</h1>
				</div>
				<div class="section-content">
					<div class="owl-carousel owl-theme">
						<c:forEach items="${projectbank}" var="projectbank">
							<div class="item">
								<div class="image">
									<img class="img-responsive" src="${projectbank.image}" alt="">
								</div>
								<%-- <div class="text-content">
									<span> ${projectbank.title}</span>
								</div> --%>
							</div>
						</c:forEach>
					</div>
				</div>
			</section>
			<section id="work-progress" class="content-section">
				<div class="section-heading">
					<h1>
						Work <em> Progress </em>
					</h1>
				</div>
				<div class="section-content">
					<div id="demo-test-gallery" class="masonry demo-gallery">
						<div class="row">
							<%-- <c:forEach items="${workstatusOneImage}" var="workstatusOneImage" varStatus="status3"> --%>
								<div style="height: 227px;overflow: hidden;margin-bottom:5px;" class="col-lg-4 col-md-4 col-sm-6 col-xs-12" ng-repeat="w in workstatusimage">
									<div class="thumbnail">
										<a ng-repeat="wi in allworkstatusimage" ng-if="w.workstatusId==wi.workstatusId" href="{{wi.image}}" data-size="1170x870"  data-med-size="1170x870" data-author="{{wi.title}}" class="demo-gallery__img--main">
											<img style="height: 180px;" class="img-responsive" src="{{wi.image}}" alt="">
											<div class="caption">
												<p> {{wi.title}}</p>
											</div>
										</a>
									</div>
									<h3>{{w.title}}</h3>
								</div>
							<%-- </c:forEach> --%>
						</div>
					</div>
				</div>
			</section>
			<section id="pdf" class="content-section content-section">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-heading">
								<h1>
									Download <em> PDF </em>
								</h1>
							</div>
						</div>
					</div>
					<div class="owl-carousel owl-theme">
						<div class="item">
							<a style="font-size:large;" href="{{projectDetail.projectPDF}}" download>
								<div class="image">
									<i style="font-size:100px" class="fa fa-file-pdf-o" aria-hidden="true"></i>
								</div>
								<div class="text-content">
									<!-- <span ng-bind-html="am.description | to_trusted"></span> -->
									<span>Download</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section>
			<!-- <section id="site" class="content-section content-section" ng-show="projectDetail.siteLink">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-heading">
								<h1>
									Visit Site <em>URL</em>
								</h1>
							</div>
						</div>
					</div>
					<div class="owl-carousel owl-theme">
						<div class="item">
							<a style="font-size:large;" target="_blank"href="{{projectDetail.siteLink}}">
								<div class="image">
									<i style="font-size:100px" class="fa fa-external-link" aria-hidden="true"></i>
								</div>
								<div class="text-content">
									<span ng-bind-html="am.description | to_trusted"></span>
									<span>Click</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section> -->
			<section id="contact" class="contact-section content-section">
				<div class="container">
					<div class="section-heading">
						<h1>
							Request a <em>Call Back</em>
						</h1>
						<span> if you want any further information for project? Just
							submit your details and we'll be in touch shortly.
						</span>
					</div>
					<div class="row contact-bg">
						<!-- <div class="col-md-12 col-lg-4 p-0">
							<div class="contact-text">
								<h2>
									Get in <span>Touch </span>
								</h2>
								<p></p>
								<div class="contact-info">
									<div class="icon-box">
										<i class="fa fa-map-marker"></i>
									</div>
									<h6>Kaka Farm, At Post Rasulabad, Beside Ajwa Garden Ajwa
										Jarod Road, next to raval crossing, Gujarat 391510
									</h6>
								</div>
								<div class="contact-info">
									<div class="icon-box">
										<i class="fa fa-phone"></i>
									</div>
									<h6>
										For Booking <br> +91 76 98 95 00 99
									</h6>
								</div>
								<div class="contact-info">
									<div class="icon-box">
										<i class="fa fa-envelope-o" aria-hidden="true"></i>
									</div>
									<h6>info@orbit99ajwa.com</h6>
								</div>
							</div>
						</div> -->
						<!-- <div class="col-md-12 col-lg-1 style-2"></div> -->
						<div class="col-md-12 col-lg-10 style-2">
							<form id="ajax-contact" ng-submit="createUser()">
								<div class="form-row">
									<div class="row">
										<div class="form-group col-md-4">
											<input type="text" name="firstname" id="firstname" ng-model="firstname" class="form-control"
												placeholder="Your first name..." ng-change="setFlag()">
											<p ng-show="errorFirstName == 1" style="color: red;">{{msgFirstName}}</p>
										</div>
										<div class="form-group col-md-4">
											<input type="text" name="lastname" id="lastname" ng-model="lastname" class="form-control"
												placeholder="Your last name..." ng-change="setFlag()">
											<p ng-show="errorLastName == 1" style="color: red;">{{msgLastName}}</p>
										</div>
										<div class="form-group col-md-4">
											<input type="email" name="email" id="email" ng-model="email"
												class="form-control" placeholder="Your Email..." ng-change="setFlag()">
											<p ng-show="errorEmail == 1" style="color: red;">{{msgEmail}}</p>
										</div>
									</div>
									<div class="row">
										<div class="form-group col-md-6">
											<input type="number" name="number" ng-model="number" maxlength="10" id="number"
												class="form-control" placeholder="Your Contact No..." ng-change="setFlag()">
											<p ng-show="errorNumber == 1" style="color: red;">{{msgNumber}}</p>
										</div>
										<div class="form-group col-md-6">
											<input type="text" ng-model="projectname" name="projectname" id="projectname"
												value="" disabled class="form-control"
												placeholder="Project Name...">
										</div>
									</div>
									<div class="row">
										<div class="form-group col-md-12">
											<div class="contact-textarea text-center">
												<textarea class="form-control" rows="6"
													placeholder="Write Message" ng-model="message" id="message" name="message">
												</textarea>
												<button  ng-disabled="spin == 1" class="btn btn-theme mt-4" type="submit"
													value="Submit Form"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i> Send Message</button>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-8 text-left">
											<strong ng-show="clientSubmitSuccess == 1" style="color: green;"><span class="fa fa-check-circle"></span> {{successMsg}}</strong>
											<strong ng-show="clientSubmitError == 1" style="color: red;"><span class="fa fa-times-circle"></span> {{errorMsg}}</strong>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
			<section class="footer">
				<p>
					Content Copyright &copy; 2020 {{projectDetail.projectTitle}}. Powered by: <a
						href="https://www.astartechnologies.net/" target="_blank">
						Astar Technologies </a>
				</p>
			</section>
		</div>
		<div id="gallery" class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="pswp__bg"></div>
			<div class="pswp__scroll-wrap">
				<div class="pswp__container">
					<div class="pswp__item"></div>
					<div class="pswp__item"></div>
					<div class="pswp__item"></div>
				</div>
				<div class="pswp__ui pswp__ui--hidden">
					<div class="pswp__top-bar">
						<div class="pswp__counter"></div>
						<button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
						<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
						<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
						<div class="pswp__preloader">
							<div class="pswp__preloader__icn">
								<div class="pswp__preloader__cut">
									<div class="pswp__preloader__donut"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
						<div class="pswp__share-tooltip"></div>
					</div>
					<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
					<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
					<div class="pswp__caption">
						<div class="pswp__caption__center"></div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script>
			window.jQuery
					|| document
							.write('_$tag_________________________________________$tag_____')
		</script>
		<script src="<%=request.getContextPath() %>/resources/front/project-detail/js/vendor/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/project-detail/js/plugins.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/project-detail/js/main.js"></script>
		<script>
			// Hide Header on on scroll down
			var didScroll;
			var lastScrollTop = 0;
			var delta = 5;
			var navbarHeight = $('header').outerHeight();
	
			$(window).scroll(function(event) {
				didScroll = true;
			});
	
			setInterval(function() {
				if (didScroll) {
					hasScrolled();
					didScroll = false;
				}
			}, 250);
	
			function hasScrolled() {
				var st = $(this).scrollTop();
	
				// Make sure they scroll more than delta
				if (Math.abs(lastScrollTop - st) <= delta)
					return;
	
				// If they scrolled down and are past the navbar, add class .nav-up.
				// This is necessary so you never see what is "behind" the navbar.
				if (st > lastScrollTop && st > navbarHeight) {
					// Scroll Down
					$('header').removeClass('nav-down').addClass('nav-up');
				} else {
					// Scroll Up
					if (st + $(window).height() < $(document).height()) {
						$('header').removeClass('nav-up').addClass('nav-down');
					}
				}
	
				lastScrollTop = st;
			}
		</script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/resources/front/project-detail/js/index.js" type="text/javascript"></script>
	</body>
</html>