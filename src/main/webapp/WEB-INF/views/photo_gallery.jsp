<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<head>

<meta charset="utf-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title>Photo Gallery | Everest Group</title>

<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">


<link rel="stylesheet" media="screen"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">

<!--  Style -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/responsive.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/nivo-lightbox.css">

<!--  -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/front/assets/css/colors/color1.css" id="colors">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/assets/img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:400,600&display=swap"
	rel="stylesheet">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<style>
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-gap: 10px;
  background-color: #FFFFFF;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid black;
  text-align: center;
  font-size: 30px;
}

</style>

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 -->	
 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/front/js/nivo-lightbox.js"></script>
	


<script>
$(document).ready(function(){
    $('a').nivoLightbox();
});
</script>
<!-- includes js File START-->
<script src="<%=request.getContextPath() %>/resources/front/assets/js/w3data.js"></script>
		
</head>

<body  ng-app="MyApp" ng-controller="homeCtrl" ng-clock class="header-fixed page no-sidebar header-style-2 topbar-style-1 menu-has-search">
	<div id="wrapper" class="animsition">

		<div id="page" class="clearfix">
			<%@include file="header.jsp" %>

			<!-- Featured Title -->
			<div id="featured-title" class="featured-title clearfix">
				<div id="featured-title-inner" class="container clearfix">
					<div class="featured-title-inner-wrap">
						<div id="breadcrumbs">
							<div class="breadcrumbs-inner">
								<div class="breadcrumb-trail">
									<a href="index.html" class="trail-begin"> <i
										class="fa fa-home"></i>
									</a> <span class="sep">|</span> <span class="trail-end">Photo Gallery</span>
								</div>
							</div>
						</div>
						<div class="featured-title-heading-wrap">
							<h1 class="feautured-title-heading">Photo Gallery</h1>
						</div>
					</div>
					<!-- /.featured-title-inner-wrap -->
				</div>
				<!-- /#featured-title-inner -->
			</div>
			<!-- End Featured Title -->



			<!-- Gallery photos-->
			<section style="padding-top: 4em" class="testimonial-parea">
				<div class="container clearfix">
					<div class="row">

						<div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
							<div class="testimonial-col-p">
								<div class="media testimonial-p">
				
 <div class="container">
									<div ng-repeat="item in getImages">
									
									<a href="{{item.photoPath}}" data-lightbox-gallery="gallery1">
											<img src="{{item.photoPath}}"  alt="Gallery Image">
											
										</a>
								
										</div>
									</div>

 								<!-- 	<div class="media-body">
										<h3>
											<strong> {{t.userFirstName}} {{t.userLastName}}  {{t.firstName}} {{t.lastName}}</strong> - <span class="position">{{t.orgnaizationName}}</span>
										</h3>
										<p>{{t.feedback}}</p>
									</div> 
								</div>
							</div>-->
						</div>
					</div>
				</div>
			</div>
		</div>		
	</section>
			<!-- Indurial Solution-->

			<!--/#footer START-->
			<%@include file="footer.jsp" %>
			<!--/#footer END-->

		
		</div>
		<!-- /#page -->
	</div>
	<!-- /#wrapper -->

	<a id="scroll-top"></a>



	<!-- Javascript -->
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
	<script src="<%=request.getContextPath() %>/resources/front/assets/js/shortcodes.js"></script>
	<script src="<%=request.getContextPath() %>/resources/front/assets/js/main.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_home.js"></script>
	

	<script>
		
	</script>



</body>


</html>




