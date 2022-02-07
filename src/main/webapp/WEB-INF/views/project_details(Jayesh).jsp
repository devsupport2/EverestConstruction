<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html ng-app="MyApp" ng-controller="projectCtrl" ng-clock ng-init="getProjectDetailsById('<%= request.getParameter("projectid") %>')">
<!--<![endif]-->
<head>

<meta charset="utf-8">
	
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<title>{{projectDetail.projectTitle}}</title>

<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">

<!--  Style -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/responsive.css">

<!--  -->
<!--<link rel="stylesheet" type="text/css" href="assets/css/colors/color1.css" id="colors">-->
<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/assets/img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Oswald:400,600&display=swap" rel="stylesheet">



<link rel='stylesheet' href='<%=request.getContextPath() %>/resources/front/assets/css/owl.carousel.min.css'>



 
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 <script src='https://www.google.com/recaptcha/api.js' async defer></script>
 
 
 <script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_project.js"></script>
    
<!-- Nivo-Lightbox START -->
<link href="<%=request.getContextPath() %>/resources/front/images/themes/default/default.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/resources/front/css/nivo-lightbox.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/resources/front/js/nivo-lightbox.js"></script>
<script>
$(document).ready(function() {
$('a').nivoLightbox();
});
</script>
<!-- Nivo-Lightbox END -->    




</head>

<body class="header-fixed page no-sidebar header-style-2 topbar-style-1 menu-has-search">

<!--<div id="wrapper" class="animsition">-->
<div id="wrapper">
<div id="page" class="clearfix">

<!--/header START-->
<%@include file="header.jsp" %>
<!--/header END-->


<!-- Featured Title -->
<div id="featured-title" class="featured-title clearfix">
<div id="featured-title-inner" class="container clearfix">
<div class="featured-title-inner-wrap">                    
<div id="breadcrumbs">
<div class="breadcrumbs-inner">
<div class="breadcrumb-trail">
<a href="index.html" class="trail-begin"> <i class="fa fa-home"></i> </a>
<span class="sep">|</span> 
<a href="ongoing-projects.html" class="trail-begin"> Ongoing Projects fff</a>
<span class="sep">|</span>                               
<span class="trail-end"> {{projectDetail.projectTitle}} </span>
</div>
</div>
</div>
<div class="featured-title-heading-wrap">
<h1 class="feautured-title-heading">
{{projectDetail.projectTitle}}
</h1>
</div>
</div><!-- /.featured-title-inner-wrap -->
</div><!-- /#featured-title-inner -->            
</div>
<!-- End Featured Title -->




<!-- Main Content -->
<div id="main-content" class="site-main clearfix">
<div id="content-wrap">
<div id="site-content" class="site-content clearfix">
<div id="inner-content" class="inner-content-wrap">
<div class="page-content">
<!-- PROJECT DETAIL -->
<div  class="row-project-detail">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="themesflat-spacer clearfix" data-desktop="60" data-mobile="60" data-smobile="60"></div>
<div class="detail-inner-wrap">
<div class="detail-info">
<div class="content-info">
<div class="themesflat-headings style-2 clearfix">

<!--<h2 class="heading"> Orbit99 Villas </h2>
<div class="sep has-width w80 accent-bg clearfix"></div>-->
<div class="project-logo">
<img src="{{projectDetail.projectLogo}}"></div>

</div>

<ul class="list-info has-icon icon-left call-action-style1 call-action-boxed">

<li>
<span class="text weight-600"> Developer:  </span>
<span class=" spanpill">  {{projectDetail.developerCompanyName}} </span>
</li>

<li>
<span class="text weight-600"> Project Location:  </span>
<span class=" spanpill" > {{projectDetail.locationName}},{{projectDetail.locationCity}}</span>
</li>

<li>
<span class="text weight-600"> Category:  </span>
<span  class=" spanpill" ng-repeat="rt in realestatetypeById"> {{rt.realestateTypeName}}</span></li>

<!-- <li>
<span class="text weight-600"> Furnishing: </span>
<span class=" spanpill" > Un-Furnished </span>
</li> -->

<li>
<span class="text weight-600"> Availability: </span>
<span  class=" spanpill"  ng-repeat="rr in realestateById"> {{rr.realestateTitle}}</span>
</li>

<!-- <li>
<span class="text weight-600"> Reserved Parking: </span>
<span class=" spanpill" > Yes </span>
</li> -->

</ul>

</div><!-- /.content-info -->

<div class="themesflat-spacer clearfix" data-desktop="0" data-mobile="35" data-smobile="35"></div>



<div class="content-info info-brochures">

<!--<div class="themesflat-headings style-2 clearfix">
<h2 class="heading "> BROCHURES </h2>
<div class="sep has-width w60 accent-bg clearfix"></div>                                             
</div>-->

<div class="themesflat-spacer clearfix" data-desktop="34" data-mobile="35" data-smobile="35"></div>
<div class="button-wrap has-icon icon-left size-14 pf21">
<a href="{{projectDetail.projectPDF}}"  class="themesflat-button font-default bg-light-white w100"><span> Brochures.PDF <span class="icon"><i class="fa fa-file-pdf-o"></i></span></span></a>
</div>
<!--<div class="button-wrap has-icon icon-left size-14 pf21">
<a href="#" class="themesflat-button font-default bg-light-white w100"><span>Brochures.DOC <span class="icon"><i class="fa fa-file-word-o"></i></span></span></a>
</div>-->
</div>



<div class="themesflat-spacer clearfix" data-desktop="20" data-mobile="35" data-smobile="35"></div>


    
<div class="row" ng-if="allworkstatusimage.length!=0">    
<div class="col-lg-2 col-md-12 col-sm-6  col-xs-12">
    
<!-- <div class="blog-post call-action-style1">
<div class="blog-thumb">

<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/photo.jpg" title="Orbit99 Villas">
<img class="img-responsive" src="assets/img/Projects/Orbit99/photo.jpg" alt="" />
</a>
<div >
	<a href="{{projectDetail.layoutMap}}"
											data-size="4962x1754"
											data-med="{{projectDetail.layoutMap}}"
											data-med-size="4962x1754" data-author="Layout Plan"
											class="demo-gallery__img--main"> <img
											src="{{projectDetail.layoutMap}}">
										</a>
</div>

<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/1.jpg" title="Orbit99 Villas"></a>
<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/2.jpg" title="Orbit99 Villas"></a>
<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/3.jpg" title="Orbit99 Villas"></a>
<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/4.jpg" title="Orbit99 Villas"></a>
<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/5.jpg" title="Orbit99 Villas"></a>
</div>

<div class="blog-content">
<div class="content-show text-center">
<h4>
<a data-lightbox-gallery="gallery1" href="assets/img/Projects/Orbit99/photo.jpg" title="Orbit99 Villas"> Project Photos </a>
</h4>
<span> 29 Sep 2084 </span>
</div>
</div>

</div> -->

<div class="blog-post call-action-style1"  >
<div class="blog-thumb">
<a data-lightbox-gallery="gallery2" href="{{allworkstatusimage[0].image}}" title="{{allworkstatusimage[0].title}}">
<img class="img-responsive" src="{{allworkstatusimage[0].image}}" alt="" />
</a>

</div>								
<a ng-repeat="wi in allworkstatusimage" data-lightbox-gallery="gallery2" href="{{wi.image}}" title="{{wi.title}}"></a>
	

<div class="blog-content">
<div class="content-show text-center">

<h4><a data-lightbox-gallery="gallery1" href="{{allworkstatusimage[0].image}}" title="project"> Project Photos </a></h4>
<!--<span> 29 Sep 2084 </span>-->
</div>
</div>

</div>

</div>
</div>



<div class="row" ng-if="floorlayoutById.length!=0">    
<div class="col-lg-12 col-md-12 col-sm-6  col-xs-12">
    
<div class="blog-post call-action-style1">
<div class="blog-thumb" >
<a data-lightbox-gallery="gallery2" href="{{floorlayoutById[0].image}}" title="{{floorlayoutById[0].categoryName}} '{{floorlayoutById[0].unitName}}' Floor: {{floorlayoutById[0].floorNumber}}">
<img class="img-responsive" src="{{floorlayoutById[0].image}}" alt="" />
</a>

</div>								
<a ng-repeat="fl in floorlayoutById" data-lightbox-gallery="gallery2" href="{{fl.image}}" title="{{fl.categoryName}} '{{fl.unitName}}' Floor: {{fl.floorNumber}}"></a>
	

<div class="blog-content">
<div class="content-show text-center">
<h4><a data-lightbox-gallery="gallery1" href="{{floorlayoutById[0].image}}" title="Floor Plans"> Floor Plan </a></h4>

</div>
</div>

</div>

</div>
</div>


</div>

<div class="detail-gallery">
<div class="themesflat-spacer clearfix" data-desktop="21" data-mobile="21" data-smobile="21"></div>

<!-- partial:index.partial.html -->
<div class="wrapCarouselFull">
<div class="owl-carousel carousel-full">
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

<div class="wrapCarouselThumbs">
<div class="owl-carousel carousel-thumbs">
<c:forEach items="${projectsliders}" var="projectsliders">
					<div class="item">
						<div class="img-fill">
							<img style="width: -webkit-fill-available;" class="img-responsive"
								src="${projectsliders.image}" />
						</div>
					</div>
				</c:forEach>

<!-- <div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/1.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/2.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/3.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/4.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/5.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/6.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/7.jpg">
</div>
<div class="item-carousel-thumbs">
<img class="img-responsive" src="assets/img/Projects/Orbit99/8.jpg">
</div> -->
</div>
</div>
<br>



<div class="themesflat-spacer clearfix" data-desktop="40" data-mobile="40" data-smobile="40"></div>     
<div class="flat-content-wrap style-3 clearfix">
<h5 class="title">PROJECT DESCRIPTION</h5>
<div style="text-align: justify;font-size:16px;" class="text-content"ng-bind-html="projectDetail.description | to_trusted">
						</div>



<!-- Default box -->
<div class="box mt-20">
<div class="box-header with-border">
<h3 class="box-title">Project Amenities</h3>

</div>

<div class="box-body pa-0">
<div class="row">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<div class="list-groupParent" ng-repeat="am in projectAmenity" ng-bind-html="am.description | to_trusted"></div>
<!-- <ul style="margin: 0" class="list-group" ng-repeat="am in projectAmenity">
<li class="list-group-item"  ng-bind-html="am.description | to_trusted"></li> 
</ul>-->
</div>



<!-- <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
<ul style="margin: 0" class="list-group">
<li class="list-group-item"> <span> Reserved Parking </span></li>
<li class="list-group-item"> <span> Visitor Parking </span></li>
<li class="list-group-item"> <span> Intercom Facility </span></li>
<li class="list-group-item"> <span> Gymnasium </span></li>
<li class="list-group-item"> <span> Indoor Games Room </span></li>
<li class="list-group-item"> <span> Kids Play Area </span></li>
<li class="list-group-item"> <span> DTH Television Facility </span></li>

</ul>
</div> -->


</div>
</div>
<!-- /.box-body -->

</div>
<!-- /.box -->
</div>

<form class="contact-form" ng-submit="createUser()" >
<div class="modal-header">
<h5 class="modal-title" style="display:block;margin:auto;" > Contact us</h5>
</div>

<div class="row mt-3">
  <div class="col">
    <input type="text"  style="font-size:18px;"  name="firstname" id="firstname" ng-model="firstname" class="form-control" placeholder="Your first name..." ng-change="setFlag()">
	<p ng-show="errorFirstName == 1" style="color: red;">{{msgFirstName}}</p>
  </div>
  <div class="col">
    <input type="text"  style="font-size:18px;"  name="lastname" id="lastname" ng-model="lastname" class="form-control" placeholder="Your last name..." ng-change="setFlag()">
	<p ng-show="errorLastName == 1" style="color: red;">{{msgLastName}}</p>
  </div>
</div>
<div class="row">
  <div class="col">
    <input type="email"  style="font-size:18px;" name="email" id="email" ng-model="email" class="form-control" placeholder="Your Email..." ng-change="setFlag()">
	<p ng-show="errorEmail == 1" style="color: red;">{{msgEmail}}</p>
  </div>
  <div class="col">
    <input type="number"  style="font-size:18px;" name="number" ng-model="number" maxlength="10" id="number" class="form-control" placeholder="Your Contact No..." ng-change="setFlag()">
	<p ng-show="errorNumber == 1" style="color: red;">{{msgNumber}}</p>
  </div>
 </div>
 <div>
  <textarea class="form-control" style="font-size:18px;"  rows="4" cols="45" placeholder="Enter your message" ng-model="message" id="message" name="message"">
	
	</textarea>
	<div id="recaptchaA"></div>	
	<p ng-show="errorCaptcha == 1" style="color: red;">{{msgCaptcha}}</p>
	<button ng-disabled="spin==1" class="btn btn-lg btn-dark mb-2 " value="Submit form" ><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i> Send Message</button>
</div>

<div class="row">
										<div class="col-md-8 text-left">
											<strong ng-show="clientSubmitSuccess == 1" style="color: green;" class="ng-binding ng-hide"><span class="fa fa-check-circle"></span> </strong>
											<strong ng-show="clientSubmitError == 1" style="color: red;" class="ng-binding ng-hide"><span class="fa fa-times-circle"></span> </strong>
										</div>
									</div>


</div>
 
</form>
<br>

<div class="themesflat-spacer clearfix" data-desktop="58" data-mobile="60" data-smobile="60"></div>
</div>
</div><!-- /.row -->

</div><!-- /.container -->
</div>
<!-- END PROJECT DETAIL -->
</div><!-- /.page-content -->

</div><!-- /#inner-content -->
</div><!-- /#site-content -->
</div><!-- /#content-wrap -->
</div><!-- /#main-content -->


<!--/#footer START-->
<%@include file="footer.jsp" %>
<!--/#footer END-->

</div><!-- /#page -->
</div><!-- /#wrapper -->

<a id="scroll-top"></a>


<!-- partial -->
<!--<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>-->
<!--<script src='https://www.rhuancarlos.com/codepen/script.js'></script>-->
<script src='<%=request.getContextPath() %>/resources/front/assets/js/owl.carousel.min.js'></script>
<script  src="<%=request.getContextPath() %>/resources/front/assets/js/script.js"></script>
<!-- Javascript -->


<!--<script src="assets/js/jquery.min.js"></script>-->

<script src="<%=request.getContextPath() %>/resources/front/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/tether.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/animsition.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/countto.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/equalize.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/jquery.isotope.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/owl.carousel2.thumbs.js"></script>


<script src="<%=request.getContextPath() %>/resources/front/assets/js/shortcodes.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/assets/js/main.js"></script>




    

</body>


</html>

