<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
	<head>
		<meta charset="utf-8">
		<title>Projects List | Everest Group</title>
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
	<body ng-app="MyApp" ng-controller="homeCtrl" ng-clock ng-init="getAllProjectByStatus('<%=request.getParameter("workstatus") %>')" class="header-fixed page no-sidebar header-style-2 topbar-style-1 menu-has-search">
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
										</a>
										<span class="sep">|</span>
										<span class="trail-end"><%=request.getParameter("workstatus") %> Projects</span>
									</div>
								</div>
							</div>
							<div class="featured-title-heading-wrap">
								<h1 class="feautured-title-heading"><%=request.getParameter("workstatus") %> Projects</h1>
							</div>
						</div>
					</div>
				</div>
				<div id="main-content" class="site-main clearfix">
					<div id="content-wrap">
						<div id="site-content" class="site-content clearfix">
							<div id="inner-content" class="inner-content-wrap">
								<div class="page-content">
									<div class="row-services">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<div class="themesflat-spacer clearfix" data-desktop="73"
														data-mobile="60" data-smobile="60">
													</div>
													<!-- <div class="themesflat-project style-2 isotope-project has-margin mg15">
														<div class="project-item" ng-repeat="item in getAllProjectsList">
															<div class="inner">
																<div class="thumb data-effect-item has-effect-icon w40 offset-v-19">
																	<a target="_blank" href="project-detail/orbit99-villas.html"> <img
																		class="" style="width:100%"
																		src="{{item.projMainImg}}" alt="">
																	</a>
																</div>
																<div class="text-wrap">
																	<h5 class="heading">
																		<a href="project-detail.html"> {{item.projectTitle}} </a>
																	</h5>
																	<div class="elm-meta">
																		<span><span ng-repeat="rs in item.realestateNameList"> {{rs.realestateTitle}},</span><span ng-repeat="rs in item.realestateType" ng-if="$index==0"> {{rs.realestateTypeName}},</span><span ng-repeat="rsub in item.realestateSubNameList" ng-if="$index==0"> {{rsub.subcategoryTitle}},</span><span ng-repeat="rsub in item.realestateSubNameList" ng-if="$index==1"> {{rsub.subcategoryTitle | cut:true:3:' ...'}},</span></span>
																		<span class="pull-right"> <i
																			class="fa fa-map-marker"></i> {{item.locationName}}
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div> -->
													<div class="themesflat-project style-2 has-margin mg15 data-effect clearfix">
														<div class="project-item" ng-repeat="item in getAllProjectsList" ng-click="redirecttoproject(item.projectId)">
															<div class="inner">
																<div class="thumb data-effect-item has-effect-icon w40 offset-v-19 offset-h-49" style="height: 280px;">
																	<a href="#"><img class="img-responsive" src="{{item.projMainImg}}" alt=""></a>
																</div>
																<div class="text-wrap">
																	<h5 class="heading">
																		<a href="#"> {{item.projectTitle}} </a>
																	</h5>
																	<div class="elm-meta">
																		<span><span ng-repeat="rs in item.realestateNameList" ng-if="$index==0"> {{rs.realestateTitle}},</span><span ng-repeat="rs in item.realestateType" ng-if="$index==0"> {{rs.realestateTypeName}},</span><span ng-repeat="rsub in item.realestateSubNameList" ng-if="$index==1"> {{rsub.subcategoryTitle | cut:true:1:' ..'}},</span></span>
																		<span class="pull-right"> <i
																			class="fa fa-map-marker"></i> {{item.locationName}}
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="72" data-mobile="60" data-smobile="60"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/shortcodes.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/main.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_home.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/jquery.themepunch.tools.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/rev-slider.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
		<script	src="<%=request.getContextPath() %>/resources/front/includes/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
	</body>
</html>