<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
	<head>
		<meta charset="utf-8">
		<title>Everest Group</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/responsive.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/assets/css/colors/color1.css" id="colors">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/assets/img/favicon.ico">
		<link ref="https://fonts.googleapis.com/css?family=Oswald:400,600&display=swap"	rel="stylesheet">
		<script src="<%=request.getContextPath() %>/resources/front/assets/js/w3data.js"></script>
		
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/prettyPhoto.css">
		<script src="<%=request.getContextPath() %>/resources/front/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/jquery.prettyPhoto.js"></script>
		<style>
		.companylogo .owl-carousel.owl-drag .owl-item {
		    height: 165px;
		}
		.owl-carousel .owl-item img {
		    width: unset !important;
		}
	</style>
	</head>
	<body ng-app="MyApp" ng-controller="homeCtrl" ng-clock ng-init="getAllProject()" class="header-fixed page no-sidebar header-style-3 topbar-style-3 site-header-absolute menu-has-search">
		<div id="wrapper" class="animsition">
			<div id="page" class="clearfix">
				<%@include file="header.jsp" %>
				<div id="main-content" class="site-main clearfix">
					<div id="content-wrap">
						<div id="site-content" class="site-content clearfix">
							<div id="inner-content" class="inner-content-wrap">
								<div class="page-content">
									<div class="rev_slider_wrapper fullwidthbanner-container">
										<div id="rev-slider2" class="rev_slider fullwidthabanner">
											<ul>
												<c:forEach items="${sliders }" var="sliders">
													<li data-transition="random">
														<img src="${sliders.image}"	alt="" data-bgposition="center center" data-no-retina>
														<div class="tp-caption tp-resizeme text-white font-heading font-weight-600 font-24 mb-40"
															data-x="['left','left','left','center']"
															data-hoffset="['0','0','0','0']"
															data-y="['middle','middle','middle','middle']"
															data-voffset="['-90','-90','-90','-90']"
															data-fontsize="['20','20','20','16']"
															data-lineheight="['70','70','40','24']" data-width="full"
															data-height="none" data-whitespace="normal"
															data-transform_idle="o:1;"
															data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
															data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
															data-mask_in="x:0px;y:[100%];"
															data-mask_out="x:inherit;y:inherit;" data-start="700"
															data-splitin="none" data-splitout="none"
															data-responsive_offset="on">${sliders.sliderTitle}
														</div>
														<div class="tp-caption tp-resizeme text-white font-heading font-weight-700"
															data-x="['left','left','left','center']"
															data-hoffset="['0','0','0','0']"
															data-y="['middle','middle','middle','middle']"
															data-voffset="['-20','-20','-20','-20']"
															data-fontsize="['52','52','42','32']"
															data-lineheight="['65','65','45','35']" data-width="full"
															data-height="none" data-whitespace="normal"
															data-transform_idle="o:1;"
															data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
															data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
															data-mask_in="x:0px;y:[100%];"
															data-mask_out="x:inherit;y:inherit;" data-start="1000"
															data-splitin="none" data-splitout="none"
															data-responsive_offset="on">${sliders.sliderSubtitle}
														</div>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
									<section class="service-tab-box sectpad">
										<div class="container">
											<div class="row">
												<div class="col-lg-6 col-md-6 col-xs-12 left-ser">
													<h1>About Everest Group</h1>
													<p>The group stepping stone was laid down in 2009 with a
														mission to up lift the desire lifestyle for petron of
														Vadodara by constructing luxurious residential & commercial project
														with modern infrastructure and amenities in and around
														Vadodara city.
													</p>
													<p>In past decade the Group has a valuable hands in
														developing areas like Gotri, Bhayli and Ajwa Road.
													</p>
													<p>
														Our core business values and ethics have made us set high
														standards for which we are continuously striving to attain
														more to the needs and wishes of the new urban community. 
														<a href="<%=request.getContextPath() %>/why_everest"> read more... </a>
													</p>
												</div>
												<div class="col-lg-6 col-md-6 col-xs-12 right-ser">
													<img class="img-responsive" src="<%=request.getContextPath() %>/resources/front/assets/img/ser-p-img2.png"	alt="">
												</div>
											</div>
										</div>
									</section>
									<div class="row-project clearfix">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<div class="themesflat-spacer clearfix" data-desktop="60" data-mobile="60" data-smobile="60"></div>
													<div class="position-relative">
														<div class="themesflat-headings style-1 clearfix">
															<h2 class="heading ">PROJECTS</h2>
														</div>
														<ul class="themesflat-filter style-1 filter-absolute clearfix">
															<li ng-click="getProjectByStatus('')"><a href="#">All Projects </a></li>
															<li ng-repeat="w in getProjectstatus " ng-click="getProjectByStatus(w.workStatus)">
															<a href="#">{{w.workStatus}}</a></li>
														</ul>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="40" data-mobile="35" data-smobile="35"></div>
													<div class="themesflat-project style-2 has-margin mg15 data-effect clearfix">
												<!-- | filter:{workStatus : workstatus1 } | limitTo : 6 -->
														<div class="project-item" ng-repeat="item in getProjectsList | filter:{workStatus : workstatus1 } | limitTo : 6 " ng-click="redirecttoproject(item.projectId)">
															
															<div class="inner">
																<div class="thumb data-effect-item has-effect-icon w40 offset-v-19 offset-h-49" style="height: 280px;">
																	<a href="#"><img class="img-responsive" src="{{item.projMainImg}}" alt=""></a>
																</div>
																
																<div class="text-wrap">   

                                                                    <div class="elm-meta">
                                                                    <span class="heading"><strong><a href="#"> {{item.projectTitle}}</a></strong>     </span>
                                                                    <!--<span><a href="#">  </a></span>-->
                                                                    <span class="pull-right">
                                                                    <i class="fa fa-map-marker"></i> {{item.locationName}}
                                                                    </span>
                                                                    </div>      
                                                                   <!--  <div style="margin-top: 10px;"  class="elm-meta"><span> {{item.projectSubtitle | cut:true:40:' ..'}}  </span>
                                                                    <span><a href="#">  </a></span>
                                                                    </div> -->
                                                                  <div class="elm-meta">
																		<span>
																			<span ng-repeat="rs in item.realestateNameList"> {{rs.realestateTitle }},</span>
																			<!-- <span ng-repeat="rs in item.realestateType" ng-if="$index==0"> {{rs.realestateTypeName}},</span> -->
																			<span ng-repeat="rsub in item.realestateSubNameList"> {{rsub.subcategoryTitle }}<span ng-if="($index+1) != item.realestateSubNameList.length">,</span></span>
																		</span>
																	</div>
                                                                </div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12 text-center">
													<a href="<%=request.getContextPath() %>/projects_list?workstatus=All" class="themesflat-button bg-accent pd32">
														<span>All Projects <span class="icon"></span></span>
													</a>
												</div>
											</div>
										</div>
									</div>
									<%-- <div class="row-services">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<div class="themesflat-spacer clearfix" data-desktop="60"
														data-mobile="60" data-smobile="60"></div>
													<div class="themesflat-headings style-1 text-center clearfix">
														<h2 class="heading">ACHIEVEMENTS</h2>
														<div class="sep has-icon width-125 clearfix">
															<div class="sep-icon">
																<span class="sep-icon-before sep-center sep-solid"></span>
																<span class="icon-wrap"><i class="autora-icon-build"></i></span>
																<span class="sep-icon-after sep-center sep-solid"></span>
															</div>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="27" data-mobile="35" data-smobile="35"></div>
													<div class="themesflat-carousel-box has-arrows arrow-center offset-v-111 offset-h-21 arrow-circle arrow-style-2 data-effect clearfix"
														data-gap="30" data-column="3" data-column2="2"
														data-column3="1" data-auto="true">
														<div class="owl-carousel owl-theme">
															<div class="themesflat-image-box style-2 clearfix">
																<div class="image-box-item">
																	<div class="inner">
																		<div class="thumb data-effect-item">
																			<img class="img-responsive" src="<%=request.getContextPath() %>/resources/front/assets/img/achievements/1.jpg">
																			<div class="overlay-effect bg-color-accent"></div>
																		</div>
																		<div class="text-wrap">
																			<h5 class="heading">
																				<a href="#"> Award by Shri Vijay Rupani </a>
																			</h5>
																			<p>Award by Honorable Chief Minister of Gujarat Shri Vijay Rupani</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="themesflat-image-box style-2 clearfix">
																<div class="image-box-item">
																	<div class="inner">
																		<div class="thumb data-effect-item">
																			<img class="img-responsive" src="<%=request.getContextPath() %>/resources/front/assets/img/achievements/2.jpg">
																			<div class="overlay-effect bg-color-accent"></div>
																		</div>
																		<div class="text-wrap">
																			<h5 class="heading">
																				<a href="#"> Ceremony at Everest Dignity </a>
																			</h5>
																			<p>Hon. Rajamata of Vadodara Shubhangini Devi
																				Gracing the Possession Ceremony at Everest Dignity...
																			</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="themesflat-image-box style-2 clearfix">
																<div class="image-box-item">
																	<div class="inner">
																		<div class="thumb data-effect-item">
																			<img class="img-responsive"
																				src="<%=request.getContextPath() %>/resources/front/assets/img/achievements/3.jpg">
																			<div class="overlay-effect bg-color-accent"></div>
																		</div>
																		<div class="text-wrap">
																			<h5 class="heading">
																				<a href="#"> Warm Reception of Orbit 99 </a>
																			</h5>
																			<p>Warm Reception of Shri Satya Sankalp Swami &
																				Shri Dharmapriy Swami (SMVS) at Orbit 99...
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="45"
														data-mobile="60" data-smobile="60">
													</div>
												</div>
											</div>
										</div>
									</div> --%>
									<!-- <div class="row-request parallax parallax-3">
										<div class="container">
											<div class="row">
												<div class="col-md-12 ">
													<div class="themesflat-spacer clearfix" data-desktop="82"
														data-mobile="60" data-smobile="60"></div>
													<div class="themesflat-request-box style-1 clearfix">
														<div class="inner">
															<div class="themesflat-headings style-1 clearfix">
																<h2 class="heading text-white line-height-normal">REQUEST
																	CALL BACK</h2>
																<div class="sep has-width w80 accent-bg margin-top-13 clearfix"></div>
																<p class="sub-heading margin-top-22 font-size-14 line-height-24 text-white font-weight-400">Would
																	you like to speak to one of our financial advisers over
																	the phone? Just submit your details and we'll be in
																	touch shortly.
																</p>
															</div>
															<div class="themesflat-contact-form style-1 clearfix">
																<div class="themesflat-spacer clearfix" data-desktop="8" data-mobile="8" data-smobile="8"></div>
																<form action="#" method="post" class="contact-form wpcf7-form">
																	<span class="wpcf7-form-control-wrap your-name">
																		<input type="text" tabindex="1" id="name" name="name"
																		value="" class="wpcf7-form-control" placeholder="Name"
																		required>
																	</span>
																	<span class="wpcf7-form-control-wrap your-phone">
																		<input type="text" tabindex="2" id="phone" name="phone"
																		value="" class="wpcf7-form-control"
																		placeholder="Phone number" required>
																	</span>
																	<span class="wpcf7-form-control-wrap your-email">
																		<input type="email" tabindex="3" id="email"
																		name="email" value="" class="wpcf7-form-control"
																		placeholder="Email" required>
																	</span>
																	<span class="wrap-submit"><input type="submit"
																		value="SEND US"
																		class="submit wpcf7-form-control wpcf7-submit"
																		id="submit" name="submit">
																	</span>
																</form>
															</div>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="76"
														data-mobile="60" data-smobile="60">
													</div>
												</div>
											</div>
										</div>
									</div> -->
									<div class="row-testimonials bg-light-snow">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<div class="themesflat-spacer clearfix" data-desktop="60"
														data-mobile="60" data-smobile="60"></div>
													<div class="themesflat-headings style-1 font-hind text-center clearfix">
														<h2 class="heading">TESTIMONIAL</h2>
														<div class="sep has-icon width-125 clearfix">
															<div class="sep-icon">
																<span class="sep-icon-before sep-center sep-solid"></span>
																<span class="icon-wrap"><i class="autora-icon-build"></i></span>
																<span class="sep-icon-after sep-center sep-solid"></span>
															</div>
														</div>
														<!-- <p class="sub-heading">
															With us you will have the peace of mind knowing that your
															dream home project is in the hands <br> of a
															licensed fully insured building company.
														</p> -->
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="46"
														data-mobile="35" data-smobile="35">
													</div>
													<div class="themesflat-carousel-box has-bullets bullet-circle clearfix"
														data-gap="30" data-column="3" data-column2="2"
														data-column3="1" data-auto="true">
														<div class="owl-carousel owl-theme">
															<c:forEach items="${feedback}" var="feedback">
																<div class="themesflat-testimonials style-2 align-center clearfix">
																	<div class="testimonial-item">
																		<div class="inner">
																			<blockquote class="text">
																				<div class="name-pos clearfix">
																					<h6 class="name">${feedback.userFirstName} ${feedback.userLastName} ${feedback.firstName} ${feedback.lastName}</h6>
																					<%-- <c:if test="${feedback.userFirstName}">
																					    <h6 class="name">${feedback.userFirstName} ${feedback.userLastName}</h6>
																					</c:if>
																					<c:if test="${feedback.userFirstName}">
																					    <h6 class="name">${feedback.firstName} ${feedback.lastName}</h6>
																					</c:if> --%>
																					<span class="position">${feedback.orgnaizationName}</span>
																				</div>
																				<p>${feedback.feedback}
																				</p>
																				<div class="list-star">
																					<i class="ion-star"></i>
																					<i class="ion-star"></i>
																					<i class="ion-star"></i>
																					<i class="ion-star"></i>
																					<i class="ion-star"></i>
																				</div>
																			</blockquote>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="81"
														data-mobile="60" data-smobile="60"></div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12 text-center">
													<a href="<%=request.getContextPath() %>/testimonial" class="themesflat-button bg-accent pd32">
														<span>All Testimonials <span class="icon"></span></span>
													</a>
												</div>
											</div>
										</div>
									</div>
									
									 <!-- gallery -->
                                <div class="row-team" ng-hide="!getAlbums">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="themesflat-spacer clearfix gallery" data-desktop="61" data-mobile="60" data-smobile="60"></div>
                                                <div class="themesflat-headings style-1 text-center clearfix">
                                                    <h2 class="heading"> GALLERY </h2>
                                                    <div class="sep has-icon width-125 clearfix">
                                                        <div class="sep-icon">
                                                            <span class="sep-icon-before sep-center sep-solid"></span>
                                                            <span class="icon-wrap"><i class="autora-icon-build"></i></span>
                                                            <span class="sep-icon-after sep-center sep-solid"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="themesflat-spacer clearfix" data-desktop="39" data-mobile="35" data-smobile="35"></div>

                                                <div class="themesflat-carousel-box data-effect has-bullets bullet-circle bullet24 clearfix" data-gap="30" data-column="3" data-column2="2" data-column3="1" data-auto="true">
                                                    <div class="owl-carousel owl-theme gallery">

                                                        <div class="themesflat-team style-1 align-center clearfix" ng-repeat="items in getAlbums">
                                                            <div class="team-item">
                                                                <div class="inner">
                                                                    <a href="#" ng-click="viewAlbum(items.albumId,$index+1)"
                                                                        title="{{items.albumTitle}} ">
                                                                        <div class="thumb data-effect-item">
                                                                            <img ng-if="items.image" src="{{items.image}}"
                                                                                alt="{{items.imageTitle}}" />
                                                                                <img ng-if="!items.image" src="https://img.youtube.com/vi/{{items.vidId}}/hqdefault.jpg"
                                                                                alt="{{items.imageTitle}}" />
                                                                            
                                                                            <!--<img class="img-responsive" src="images/1.jpg" alt="Image">-->
                                                                        </div>
                                                                        <div class="text-wrap call-action-style1">
                                                                            <h6 class="name"> {{items.albumTitle}} </h6>
                                                                            <div class="position"> {{items.albumSubtitle}} </div>
                                                                        </div>
                                                                    </a>

                                                                    <a ng-repeat="item in items.getAlbumImageList" href="{{item.image}}"  rel="prettyPhoto[gallery2]" title="{{item.imageTitle}}"></a>

                                                                </div>
                                                            </div>
                                                        </div><!-- /.themesflat-team -->
                                                        
                                                    </div><!-- /.owl-carousel -->

                                                </div><!-- /.themesflat-carousel -->

                                                <div class="themesflat-spacer clearfix" data-desktop="40"
                                                    data-mobile="60" data-smobile="60"></div>

                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->

                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <a href="#" ng-click="viewAlbum(0)" class="themesflat-button bg-accent">
                                                    <span> View All
                                                        <span class="icon"><i class="ion-load-c"></i></span>
                                                    </span>
                                                </a>
                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->

                                        <div class="themesflat-spacer clearfix" data-desktop="60" data-mobile="60"
                                            data-smobile="60"></div>

                                    </div><!-- /.container -->
                                </div>
                                <!-- END gallery -->
									
									<!-- gallery end -->
									
									<div class="row-partner">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<div class="themesflat-spacer clearfix" data-desktop="22"
														data-mobile="35" data-smobile="35"></div>
													<div class="themesflat-carousel-box clearfix companylogo" data-gap="30"
														data-column="5" data-column2="3" data-column3="2"
														data-auto="true">
														<div class="owl-carousel owl-theme" >
															<div ng-repeat="l in getprojectslogo" class="themesflat-partner style-2 align-center clearfix">
																<div class="partner-item">
																	<div class="inner">
																		<div class="thumb" style="text-align: -webkit-center;">
																			<img style="height: -webkit-fill-available; max-width:none; height:120px; width:210px;" src="{{l.projectLogo}}"
																				class="">
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="themesflat-spacer clearfix" data-desktop="58"
														data-mobile="35" data-smobile="35"></div>
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