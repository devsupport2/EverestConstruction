<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
	<head>
		<meta charset="utf-8">
		<title>Achievements | Everest Group</title>
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/responsive.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/colors/color1.css" id="colors">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/assets/img/favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Oswald:400,600&display=swap" rel="stylesheet">
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/w3data.js"></script>
	</head>
	<body ng-app="MyApp" ng-controller="achievementCtrl" ng-clock class="header-fixed page no-sidebar header-style-2 topbar-style-1 menu-has-search">
		<div id="wrapper" class="animsition">
			<div id="page" class="clearfix">
				<%@include file="header.jsp" %>
				<div id="featured-title" class="featured-title clearfix">
					<div id="featured-title-inner" class="container clearfix">
						<div class="featured-title-inner-wrap">
							<div id="breadcrumbs">
								<div class="breadcrumbs-inner">
									<div class="breadcrumb-trail">
										<a href="index.html" class="trail-begin"> <i
											class="fa fa-home"></i>
										</a>
										<span class="sep">|</span><span class="trail-end">Achievements </span>
									</div>
								</div>
							</div>
							<div class="featured-title-heading-wrap">
								<h1 class="feautured-title-heading">Achievements</h1>
							</div>
						</div>
					</div>
				</div>
				<section class="about-w3ls">
					<div class="container">
						<div ng-repeat="a in getAchievements">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
									<figure>
										<img class="img-responsive" src="{{a.image}}">
									</figure>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
									<h3>{{a.title}}  <span class="comment-position pull-right"> </span></h3>
									<p>{{a.subtitle}}</p>
								</div>
							</div><hr>
						</div>
					</div>
				</section>
				<!-- <div id="main-content" class="site-main clearfix">
					<div id="content-wrap" class="container">
						<div id="site-content" class="site-content clearfix">
							<div id="inner-content" class="inner-content-wrap">
								<div class="themesflat-spacer clearfix" data-desktop="61"
									data-mobile="60" data-smobile="60"></div>
								<div class="themesflat-spacer clearfix" data-desktop="40"
									data-mobile="35" data-smobile="35"></div>
								<div class="themesflat-content-box clearfix"
									data-margin="0 15px 0 0" data-mobilemargin="0 0 0 0">
									<ol class="comment-list style-2">
										<li class="comment" ng-repeat="a in getAchievements">
											<article class="comment-wrap clearfix">
												<div class="gravatar"><img class="img-responsive" src="{{a.image}}"></div>
												<div class="comment-content">
													<div class="comment-meta">
														<h6 class="comment-author"> {{a.title}}  </h6>
														<span class="comment-position pull-right"> 12 August 2019 </span>
													</div>
													<div class="comment-text">
														<p> {{a.subtitle}} </p>
													</div>
												</div>
											</article>
										</li>
									
										<li class="comment" ng-repeat="a in getAchievements">
											<article class="comment-wrap clearfix">
												<div class="gravatar">
													<img class="img-responsive" src="{{a.image}}">
												</div>
												<div class="comment-content">
													<div class="comment-meta">
														<h6 class="comment-author">{{a.title}}</h6>
														<span class="comment-position pull-right"> 12 August
															2019 </span>
													</div>
													<div class="comment-text">
														<p>{{a.subtitle}}</p>
													</div>
												</div>
											</article>
										</li>
									</ol>
								</div>
								<div class="themesflat-spacer clearfix" data-desktop="83" data-mobile="60" data-smobile="60"></div>
							</div>
						</div>
					</div>
				</div> -->
				<%@include file="footer.jsp" %>
			</div>
		</div>
		<a id="scroll-top"></a>
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
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/achievements.js"></script>
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