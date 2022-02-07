<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<html ng-app="MyApp" ng-controller="projectCtrl" ng-cloak ng-init="getProjectDetailsById('<%= request.getParameter("projectid") %>')">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">

    <title> {{projectDetail.projectTitle}} | Project Detail  </title>

    <link
        href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/fontawesome-pro-5/css/all.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/bootstrap-select/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/slick/slick.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/magnific-popup/magnific-popup.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/chartjs/Chart.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/dropzone/css/dropzone.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/timepicker/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/vendors/mapbox-gl/mapbox-gl.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/themes.css">
  	<%-- <script src="<%=request.getContextPath() %>/resources/front/js/theme.js"></script> --%>
  	
  	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_header.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/front_project.js"></script>
  	
  	<!-- Nivo-Lightbox START -->
<link href="<%=request.getContextPath() %>/resources/front/images/themes/default/default.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/resources/front/css/nivo-lightbox.css" rel="stylesheet" type="text/css">


    <!-- <link rel="icon" href="images/favicon.ico"> -->

    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@">
    <meta name="twitter:creator" content="@">
    <meta name="twitter:title" content="Single Property 9">
    <meta name="twitter:description" content="Real Estate Html Template">
    <meta name="twitter:image" content="<%=request.getContextPath() %>/resources/front/images/homeid-social-logo.png">

    <meta property="og:url" content="single-property-9.html">
    <meta property="og:title" content="Single Property 9">
    <meta property="og:description" content="Real Estate Html Template">
    <meta property="og:type" content="website">
    <meta property="og:image" content="<%=request.getContextPath() %>/resources/front/images/homeid-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    
    <script src='https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit' async defer></script>
<%@ include file="pdf_model.jsp" %>
<%@ include file="booking_status.jsp" %>
</head>
<body>

    <header class="main-header navbar-light header-sticky header-sticky-smart header-mobile-lg">
        <div class="sticky-area">
            <div class="container">
                <nav class="navbar navbar-expand-lg px-0">

                    <a class="navbar-brand project-logo" href="index.html">
                        <img src="{{projectDetail.projectLogo}}" alt="" class="d-none d-lg-inline-block">
                        <img src="{{projectDetail.projectLogo}}"alt="" class="d-inline-block d-lg-none">
                    </a>

                    <div class="d-flex d-lg-none ml-auto">
                        <a class="mr-4 position-relative text-white p-2" href="#" >
                            <i class="fal fa-heart fs-large-4" ></i>
                            <span class="badge badge-primary badge-circle badge-absolute" >1</span>
                        </a>
                        <button class="navbar-toggler border-0 px-0" type="button" data-toggle="collapse"
                            data-target="#primaryMenu01" aria-controls="primaryMenu01" aria-expanded="false"
                            aria-label="Toggle navigation"> <span class="text-white fs-24"><i
                                    class="fal fa-bars"></i></span>
                        </button>
                    </div>

                    <div class="collapse navbar-collapse mt-3 mt-lg-0 mx-auto flex-grow-0" id="primaryMenu01">
                        <ul class="navbar-nav hover-menu main-menu px-0 mx-lg-n4">

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link  p-0" href="#about"> Overview </a>
                            </li>

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link p-0" href="#master-plan"> Plans </a>
                            </li>

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link p-0" href="#specifications"> Specifications </a>
                            </li>

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link p-0" href="#amenities"> Amenities </a>
                            </li>

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link  p-0" href="#Payment-Schedules"> Payment Schedules </a>
                            </li>

                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4">
                                <a class="nav-link p-0" href="#approved-banks"> Approved By Banks </a>
                            </li>

                            
                            <li id="navbar-item-home" aria-haspopup="true" aria-expanded="false"
                                class="nav-item dropdown py-2 py-lg-5 px-0 px-lg-4" >
                                <a class="nav-link p-0" href="#" data-toggle="modal" data-target="#bookingStatus"  ng-click="getPropertyByProjectId" > Booking Status </a>
                            </li>

                        </ul>

                        <div class="d-block d-lg-none">
                            <ul class="navbar-nav flex-row justify-content-lg-end d-flex flex-wrap py-2">
                                
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle mr-md-2 pr-2 pl-0 pl-lg-2" href="#"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ENG
                                    </a>
                                    <div class="dropdown-menu dropdown-sm dropdown-menu-left">
                                        <a class="dropdown-item" href="#">VN</a>
                                        <a class="dropdown-item active" href="#">ENG</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">ARB</a>
                                        <a class="dropdown-item" href="#">KR</a>
                                        <a class="dropdown-item" href="#">JN</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link  px-2" data-toggle="modal" href="#login-register-modal">
                                        SIGN IN
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </nav>
            </div>
        </div>
    </header>



    <main id="content">

        <section class="pt-6 shadow-5">

          <div class="galleries">

              <!--   <div class="container position-relative">
                    <ul class="nav nav-pills position-absolute pos-fixed-top-right z-index-3 pt-4 pr-5 flex-nowrap nav-gallery" role="tablist">
                         <li class="nav-item mr-2" role="presentation">
                            <a class="bg-info text-heading bg-hover-primary hover-white"
                                data-toggle="pill" href="#image-1" role="tab" aria-selected="true">
                                <i class="fal fa-phone-alt"></i>
                            </a>
                        </li>

                        <li class="nav-item mr-2" role="presentation">
                            <a  href="{{projectDetail.projectPDF}}" class=" bg-danger text-heading bg-hover-primary hover-white "
                                data-toggle="pill"  role="tab" aria-selected="false">
                                <i class="fal text-white fa-file-pdf"></i>
                            </a>
                        </li> 

                    </ul>
                </div> -->
 
 				<div class="icon-bar">
 				<a class="bg-info text-heading bg-hover-primary hover-white rounded-circle justify-content-center w-48px h-48"
                                data-toggle="pill" href="#image-1" role="tab" aria-selected="true" >
                                <i class="fal text-white fa-phone-alt"></i>
                            </a>
                            <a   data-toggle="modal" data-target="#pdfDownload"  class="rounded-circle justify-content-center w-48px h-48 bg-danger text-heading bg-hover-primary hover-white "  >
                               <i class="fal text-white fa-file-pdf"></i>
                            </a>
 				</div>
                <div class="tab-content p-0 shadow-none">
                    <div class="tab-pane fade show active" id="image-1" role="tabpanel">
                        <div class="slick-slider mx-0" data-slick-options='{"slidesToShow": 1, "autoplay":false,"centerMode":true,"infinite":true,"arrows":false,"centerPadding":"350px","responsive":[{"breakpoint": 1200,"settings": {"centerMode":false}}]}'>

                  <c:forEach items="${projectsliders}" var="projectsliders">
					<div class="box px-xl-5">
						<div class="item item-size-3-2">
						<div class="card p-0">
						
							<img style="width: -webkit-fill-available;" class="card-img"
								src="${projectsliders.image}" />
							</div>
						</div>
					</div>
				</c:forEach>
			

         	  			<!--<div class="box px-xl-5">
                                <div class="item item-size-3-2">
                                    <div class="card p-0">
                                    <div class="card-img" style="background-image:url('images/sliders/2.jpg')"> </div>
                                    </div>
                                </div>
                            </div>


                            <div class="box px-xl-5">
                                <div class="item item-size-3-2">
                                    <div class="card p-0">
                                    <div class="card-img" style="background-image:url('images/sliders/3.jpg')"> </div>
                                    </div>
                                </div>
                            </div> -->

                            <!-- Video Block <div class="box px-lg-5">
                                <div class="item item-size-3-2">
                                    <div class="card p-0">
                                        <div class="card-img"
                                            style="background-image:url('images/single-property-20.jpg')">
                                        </div>
                                        <div
                                            class="card-img-overlay d-flex align-items-center justify-content-center p-4">
                                            <a href="https://www.youtube.com/watch?v=0O2aH4XLbto"
                                                class="d-inline-block position-relative play-animation"
                                                data-gtf-mfp="true" data-mfp-options='{"type":"iframe"}'>
                                                <span
                                                    class="text-primary bg-white w-78px h-78 rounded-circle d-flex align-items-center justify-content-center">
                                                    <i class="fas fa-play"></i>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>

                    <div class="tab-pane fade" id="map-view-1" role="tabpanel">
                        <div id="map-01" class="mapbox-gl" style="height:620px;"
                            data-mapbox-access-token="pk.eyJ1IjoiZHVvbmdsaCIsImEiOiJjanJnNHQ4czExMzhyNDVwdWo5bW13ZmtnIn0.f1bmXQsS6o4bzFFJc8RCcQ"
                            data-mapbox-options='{"center":[-73.981566, 40.739011],"setLngLat":[-73.981566, 40.739011],"container":"map-01"}'>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="street-view-1" role="tabpanel">
                        <div class="py-10"
                            style="background-image: url('images/BG2.jpg');background-size: cover;background-position: center">
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!--  -->
        <div class="primary-content pt-10" id="about">
            <div class="container">
                <div class="row">
                    <article class="col-lg-8 pr-xl-7">

                        <section class="pb-7 border-bottom">

                            <div class="d-sm-flex justify-content-sm-between border-bottom">
                                <div>
                                <h2 class="fs-35 font-weight-600  text-heading"> {{projectDetail.projectTitle}}  </h2>
                                    <p class="fs-16">
                                        <i class="fal fa-map-marker-alt mr-2"></i>
                                         {{projectDetail.locationName}},{{projectDetail.locationCity}}
                                    </p>
                                </div>

                                <!-- <div class="mt-2 text-lg-right">
                                    <p class="fs-16 text-heading mb-0"> PR/GJ/VADODARA/VADODARA/OTHERS/MAA06814/290220
                                     </p>
                                    <p class="mb-0">  Rera Number </p>
                                </div> -->
                            </div>

                            <ul class="list-inline d-sm-flex align-items-sm-center mb-2 mt-3">
                                <li class="list-inline-item badge badge-light mr-2"  ng-repeat="rt in realestatetypeById"> {{rt.realestateTypeName}}</li>
                                <li class="list-inline-item badge badge-light mr-3"  ng-repeat="rr in realestateById"> {{rr.realestateTitle}} </li>
                     
                            </ul>

                            <!-- <h4 class="fs-22 text-heading mt-6 mb-2">Description</h4> -->
                            
                            <!-- <h6 class="mt-5">PROJECT DESCRIPTION </h6> -->
                            <div style="text-align: justify;font-size:16px;" class="text-content"ng-bind-html="projectDetail.description | to_trusted">
						</div>

                            <h6 class="mt-5  text-uppercase text-gray"  ng-if="projectDetail.reraNo">  
                                Rera Number: {{projectDetail.reraNo}}
                            </h6>
                            
                        </section>

                        <!-- Plans -->
                        <section  class="py-6" id="master-plan">
                            <h4 class="fs-22 text-heading mb-6"> Plans </h4>

                            <div class="accordion accordion-03 mb-3" id="accordion-01">
                                <div class="card border-0 shadow-xxs-2">
                                    <div class="card-header bg-gray-01 border-gray border-0 p-0" id="floor-plans-01">
                                        <div class="heading d-flex justify-content-between align-items-center px-6"
                                            data-toggle="collapse" data-target="#collapse-01" aria-expanded="true"
                                            aria-controls="collapse-01" role="button">
                                            <h2 class="mb-0 fs-16 text-heading font-weight-500 py-4 lh-13"> Layout Plan 
                                            </h2>
                                        </div>
                                    </div>

                                    <div id="collapse-01" class="collapse show" aria-labelledby="floor-plans-01"
                                        data-parent="#accordion-01">
                                        <div class="card-body mb-3">
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

                            <div class="accordion accordion-03 mb-3" id="accordion-02"  ng-if="floorlayoutById.length!=0" >
                            <%--     <div class="blog-post call-action-style1"  >
	                                 <div class="card text-center">
	                                    <a  data-lightbox-gallery="gallery2" href="${workstatusAllImage.image}" title="${workstatusAllImage.title}">
	                                        <img  src="${workstatusAllImage.image}" class="card-img card-img mx-auto" alt="">
	                                      </a>
	                                   <div  role="button" class="card-body p-0 mt-2 mb-2">
	                                            <a data-lightbox-gallery="gallery1" href="{{allworkstatusimage.image}}" class="bg-gray-01 border-0 fs-14 text-heading">
	                                                ${workstatusAllImage.title}
	                                            </a>
	                                    </div>
	                                   </div>
	                                 </div> --%>
                             <div class="card border-0 shadow-xxs-2"  ng-repeat="i in floorlayoutById" on-finish-render="ngRepeatFinished" >
                                     <div class="blog-post call-action-style1"  >
                                    <div class="card-header bg-gray-01 border-gray border-0 p-0" id="floor-plans-02{{i.projectFloorLayoutId}}" >
                                        <div class="heading d-flex justify-content-between align-items-center px-6 collapsed " data-toggle="collapse" data-target="#collapse-02{{i.projectFloorLayoutId}}" aria-expanded="true" aria-controls="collapse-02{{i.projectFloorLayoutId}}" >
                                            <h2 class="mb-0 fs-16 text-heading font-weight-500 py-4 lh-13" >
                                	{{i.categoryName}} "{{i.unitName}}" <span>Floor: {{i.floorNumber}} </span>
                                            </h2>
                                           
                                        </div>
                                    </div>

                                   <div id="collapse-02{{i.projectFloorLayoutId}}" class="collapse " aria-labelledby="floor-plans-02"
                                        data-parent="#accordion-02" >
                                        <div class="card-body col-sm-6 offset-sm-3 mb-3">
                                            
                                            <a href="{{i.image}}"
											data-size="4962x1754"
											data-med="{{i.image}}"
											data-med-size="4962x1754" data-author="Layout Plan"
											class="demo-gallery__img--main" title="{{i.title}}"><img  class="card-img card-img mx-auto" src="{{i.image}}"  alt=""></a>
                                           
                                        </div>
                                        </div>
                                    </div>
                                </div> 
                                
                                
                            </div>
                        </section>
                         


             <!--  Amenities of Everest Dignity -->
            <section class="py-6 border-bottom" id="amenities">
                <h4 class="fs-22 text-heading mb-5">  Amenities of<em> {{projectDetail.projectTitle}}</em> </h4>
                  <div class="row">
                    <div class="col-lg-12"  >
                      <div   class="shadow-xxs-2 pt-4 pb-2 px-6 border-bottom border-primary border-5x rounded-lg"  >
                        <div ng-repeat="am in projectAmenity" class="Amenities_I">
                        <div class="row">
                        	<div class="col-md-3 pt-1">
                        	<img alt="" src="{{am.attachment}}">
                        	</div>
                        	<div class="col-md-9">
                        		<h6 class="font-weight-bold">{{am.title}}</h6>
	                        	<span class="font-weight-bold">{{am.subtitle}}</span>
	                          	<div  ng-bind-html="am.description | to_trusted" ></div> 
                        	</div>
                        	</div>
                          <hr>
                        </div>
                  
                      </div>
                    </div>
                  </div>            
              </section>
             




         <!--  Specifications  of Everest Dignity -->
            <section class="py-6 border-bottom" id="specifications">
                <h4 class="fs-22 text-heading mb-5">  Specifications  of<em> {{projectDetail.projectTitle}}</em> </h4>
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="shadow-xxs-2 pt-4 pb-2 px-6 border-bottom border-primary border-5x rounded-lg" >
                        <div ng-repeat="s in projectSpecification" class="Amenities_I">
                   
                        		<h6 class="font-weight-bold">{{s.title}}</h6>
	                        	<span class="font-weight-bold">{{s.subtitle}}</span>
                          <div ng-bind-html="s.description | to_trusted"></div> 
                       <hr>
                        </div>
                        <!-- <dl class="d-flex mb-0 justify-content-between py-2">
                          <dt class="font-weight-normal"> <span ng-bind-html="s.description | to_trusted"></span></dt>
                        </dl> -->
                    
                      </div>
                    </div>
                  </div>            
              </section>


                        <!-- Payment Schedules -->
                        <section class="pt-6 border-bottom" id="Payment-Schedules">
                            <h4 class="fs-22 text-heading mb-6"> Payment <em> Schedules </em> </h4>
                           
                           
                            <div class="row">

                                <div class="col-lg-3 col-sm-4 mb-6" ng-repeat="ps in projectPaymentSchedule">
                                    <div class="media" >
                                       <div class="media-body text-center" >
                                    <p class="mb-0 fs-16 font-weight-bold text-heading">{{ps.paymentValue}}{{ps.unitName}} </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal">{{ps.paymentLable}}
                                    </h5>
                                        </div>
                                    </div>
                                </div>

                               <!--  <div class="col-lg-3 col-sm-4 mb-6">
                                    <div class="media">
                                        <div class="media-body text-center">
                                    <p class="mb-0 fs-16 font-weight-bold text-heading"> 20% </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal"> FIRST SLAB 
                                    </h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-4 mb-6">
                                    <div class="media">
                                        <div class="media-body text-center">
                                    <p class="mb-0 fs-16 font-weight-bold text-heading"> 20% </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal"> LAST SLAB 
                                    </h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-4 mb-6">
                                    <div class="media">
                                        <div class="media-body text-center">
                                    <p class="mb-0 fs-16 font-weight-bold text-heading"> 20% </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal"> MASONRY 
                                    </h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-4 mb-6">
                                    <div class="media">
                                        <div class="media-body text-center">
                                    <p class="mb-0 fs-16 font-weight-bold text-heading"> 20% </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal"> FINISHING 
                                    </h5>
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="col-lg-3 col-sm-4 mb-6">
                                    <div class="media">
                                        <div class="media-body text-center">
                                    <p class="mb-0 fs-16 font-weight-bold text-heading"> 20% </p>
                                    <h5 class="my-1 fs-13 text-uppercase letter-spacing-093 font-weight-normal"> PLASTER 
                                    </h5>
                                        </div>
                                    </div>
                                </div> -->

                            </div>
                        </section>



                            <!-- Additional Details  -->
                        <section class="pt-6 border-bottom pb-4">
                            <h4 class="fs-22 text-heading mb-4"> Additional Details </h4>
                            <div class="row">

                                <dl class="col-sm-4 mb-0">
                                <dt class="w-130px fs-14 font-weight-500 text-heading pr-2" ng-show="projectDetail.developerCompanyName"> {{projectDetail.developerCompanyName}}</dt>
                                <dd> DEVELOPER  </dd>
                              </dl>

                              <dl class="col-sm-4 mb-0">
                                <dt class="w-150px fs-14 font-weight-500 text-heading pr-2" ng-show="projectDetail.architechName"> {{projectDetail.architechName}}  </dt>
                                <dd>ARCHITECT </dd>
                              </dl>

                              <dl class="col-sm-4 mb-0">
                                <dt class="fs-14 font-weight-500 text-heading pr-2" ng-show="projectDetail.designerName"> {{projectDetail.designerName}} </dt>
                                <dd> STRUCTURAL DESIGNER  </dd>
                              </dl>

<!-- 
                              <dl class="col-sm-4 mb-0">
                                <dt class="w-110px fs-14 font-weight-500 text-heading pr-2"> TITEL </dt>
                                <dd> TEXT </dd>
                              </dl>


                              <dl class="col-sm-4 mb-0">
                                <dt class="w-110px fs-14 font-weight-500 text-heading pr-2"> TITEL </dt>
                                <dd> TEXT </dd>
                              </dl>


                              <dl class="col-sm-4 mb-0">
                                <dt class="w-110px fs-14 font-weight-500 text-heading pr-2"> TITEL </dt>
                                <dd> TEXT </dd>
                              </dl> -->
                              
                            </div>
                          </section>


                            <!-- Approved by Banks -->
                          <section class="py-6 border-bottom" id="approved-banks">
                            <h4 class="fs-22 text-heading mb-6">  Approved by <em>Banks</em></h4>
                            <div class="d-sm-flex">
                                <c:forEach items="${projectbank}" var="projectbank">
							<div class="w-sm-170 mb-sm-0 mb-6 mr-sm-6">
								<div class="card text-center">
									<img class="card-img card-img  mx-auto" src="${projectbank.image}" alt="">
								</div>
								
							</div>
						</c:forEach>
                            </div>
                        </section>

								
  						<!-- Work Progress -->
  		 <section class="py-6 border-bottom">
           <h4 class="fs-22 text-heading mb-6"> Work Progress </h4>
               <div class="d-sm-flex">
                      <c:forEach items="${workstatusOneImage}" var="workstatusOneImage" varStatus="status3">
						<c:forEach items="${workstatusAllImage}" var="workstatusAllImage" varStatus="status3">
	                        <c:if test="${workstatusOneImage.workstatusId ==  workstatusAllImage.workstatusId}">
	                            <div class="w-sm-170 mb-sm-0 mb-6 mr-sm-6">
	                               <div class="blog-post call-action-style1">
	                                 <div class="card text-center">
	                                    <a  data-lightbox-gallery="gallery2" href="${workstatusAllImage.image}" title="${workstatusAllImage.title}">
	                                        <img  src="${workstatusAllImage.image}" class="card-img card-img mx-auto" alt="">
	                                      </a>
	                                   <div  role="button" class="card-body p-0 mt-2 mb-2">
	                                            <a data-lightbox-gallery="gallery1" href="{{allworkstatusimage.image}}" class="bg-gray-01 border-0 fs-14 text-heading">
	                                                ${workstatusAllImage.title}
	                                            </a>
	                                    </div>
	                                   </div>
	                                 </div>
	                                </div>
	                                </c:if>
	                              </c:forEach>
	                               <br>
                               </c:forEach>
                     		</div>
						</section>
 

<!-- <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="..." alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 -->
                    </article>

                    <aside class="col-lg-4 pl-xl-4 primary-sidebar sidebar-sticky" id="sidebar">
                        <div class="primary-sidebar-inner">
                            <div class="card border-0 widget-request-tour">
                                <ul class="nav nav-tabs d-flex" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active px-3 text-uppercase fs-18" data-toggle="tab" href="#schedule" role="tab" aria-selected="true"> Request a Call Back </a>
                                    </li>
                                </ul>
                                <div class="card-body px-sm-6 shadow-xxs-2 pb-5 pt-0">
                                    <form ng-submit="createUser()">
                                        <div class="tab-content pt-1 pb-0 px-0 shadow-none">
                                            <div class="tab-pane fade show active" id="schedule" role="tabpanel">
                                              
                                                <div class="form-group mb-2 mt-4">
                                                   <input type="text" name="firstname" id="firstname" ng-model="firstname" class="form-control"
												placeholder="Your full name..." ng-change="setFlag()">
											<p ng-show="errorFirstName == 1" style="color: red;">{{msgFirstName}}</p>
										
                                                </div>

                                                <div class="form-group mb-2">
                                                    <input type="email" name="email" id="email" ng-model="email"
													class="form-control" placeholder="Your Email..." ng-change="setFlag()">
													<p ng-show="errorEmail == 1" style="color: red;">{{msgEmail}}</p>
                                                </div>

                                                <div class="form-group mb-4">
                                                   <input type="number" name="number" ng-model="number" maxlength="10" id="number"
												class="form-control" placeholder="Your Contact No..." ng-change="setFlag()">
											<p ng-show="errorNumber == 1" style="color: red;">{{msgNumber}}</p>
                                                </div>

                                                <div class="form-group mb-4">
                                                    <label for="message" class="sr-only">Message</label>
                                                    <textarea  class="form-control form-control-lg border-0 shadow-none h-120" ng-model="message" id="message" name="message"placeholder="Hello, I'm interested in {{projectDetail.projectTitle}}"></textarea>
                                                </div>
												
									 <div class="g-recaptcha"  id="recaptchaC" ></div>
												<p ng-show="errorCaptcha == 1" style="color: red;">{{msgCaptcha}}</p>
                                                
                                                
                                                <button type="submit"
                                                    class="btn btn-primary btn-lg btn-block rounded" ng-disabled="spin == 1"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i>
                                                    Submit
                                                </button>
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
                    </aside>
                </div>
            </div>
        </div>
   
   
  

    </main>

<br><br><br><br><br><br>

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/js/nivo-lightbox.js"></script>

    <%-- <script src="<%=request.getContextPath() %>/resources/front/vendors/jquery.min.js"></script> --%>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/jquery-ui/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/bootstrap/bootstrap.bundle.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/slick/slick.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/waypoints/jquery.waypoints.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/counter/countUp.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/chartjs/Chart.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/dropzone/js/dropzone.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/timepicker/bootstrap-timepicker.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/hc-sticky/hc-sticky.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/jparallax/TweenMax.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/front/vendors/mapbox-gl/mapbox-gl.js"></script>

    <script src="<%=request.getContextPath() %>/resources/front/js/theme.js"></script>
    
   
    
     
     
     
     <script>
     
/* $(document).ready(function(){
    $('a').nivoLightbox();
}); */
</script>

    <div class="modal fade login-register login-register-modal" id="login-register-modal" tabindex="-1" role="dialog"
        aria-labelledby="login-register-modal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered mxw-571" role="document">
            <div class="modal-content">
                <div class="modal-header border-0 p-0">
                    <div class="nav nav-tabs row w-100 no-gutters" id="myTab" role="tablist">
                        <a class="nav-item col-sm-3 ml-0 nav-link pr-6 py-4 pl-9 active fs-18" id="login-tab"
                            data-toggle="tab" href="#login" role="tab" aria-controls="login"
                            aria-selected="true">Login</a>
                        <a class="nav-item col-sm-3 ml-0 nav-link py-4 px-6 fs-18" id="register-tab" data-toggle="tab"
                            href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                        <div class="nav-item col-sm-6 ml-0 d-flex align-items-center justify-content-end">
                            <button type="button" class="close m-0 fs-23" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="modal-body p-4 py-sm-7 px-sm-8">
                    <div class="tab-content shadow-none p-0" id="myTabContent">
                        <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                            <form class="form">
                                <div class="form-group mb-4">
                                    <label for="username" class="sr-only">Username</label>
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend ">
                                            <span class="input-group-text bg-gray-01 border-0 text-muted fs-18"
                                                id="inputGroup-sizing-lg">
                                                <i class="far fa-user"></i></span>
			                                </div>
                                        <input type="text" class="form-control border-0 shadow-none fs-13" id="username"
                                            name="username" required placeholder="Username / Your email">
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password" class="sr-only">Password</label>
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend ">
                                            <span class="input-group-text bg-gray-01 border-0 text-muted fs-18">
                                                <i class="far fa-lock"></i>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control border-0 shadow-none fs-13" id="password"
                                            name="password" required placeholder="Password">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-gray-01 border-0 text-body fs-18">
                                                <i class="far fa-eye-slash"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex mb-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="remember-me"
                                            name="remember-me">
                                        <label class="form-check-label" for="remember-me">
                                            Remember me
                                        </label>
                                    </div>
                                    <a href="password-recovery.html" class="d-inline-block ml-auto text-orange fs-15">
                                        Lost password?
                                    </a>
                                </div>
                                <div class="d-flex p-2 border re-capchar align-items-center mb-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="verify"
                                            name="verify">
                                        <label class="form-check-label" for="verify">
                                            I'm not a robot
                                        </label>
                                    </div>
                                    <a href="#" class="d-inline-block ml-auto">
                                        <img src="images/re-captcha.png" alt="Re-capcha">
                                    </a>
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Log in</button>
                            </form>
                            <div class="divider text-center my-2">
                                <span class="px-4 bg-white lh-17 text">
                                    or continue with
                                </span>
                            </div>
                            <div class="row no-gutters mx-n2">
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block facebook text-white px-0">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </div>
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block google px-0">
                                        <img src="images/google.png" alt="Google">
                                    </a>
                                </div>
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block twitter text-white px-0">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                            <form class="form">
                                <div class="form-group mb-4">
                                    <label for="full-name" class="sr-only">Full name</label>
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend ">
                                            <span class="input-group-text bg-gray-01 border-0 text-muted fs-18">
                                                <i class="far fa-address-card"></i></span>
                                        </div>
                                        <input type="text" class="form-control border-0 shadow-none fs-13"
                                            id="full-name" name="full-name" required placeholder="Full name">
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="username01" class="sr-only">Username</label>
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend ">
                                            <span class="input-group-text bg-gray-01 border-0 text-muted fs-18">
                                                <i class="far fa-user"></i></span>
                                        </div>
                                        <input type="text" class="form-control border-0 shadow-none fs-13"
                                            id="username01" name="username01" required
                                            placeholder="Username / Your email">
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password01" class="sr-only">Password</label>
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend ">
                                            <span class="input-group-text bg-gray-01 border-0 text-muted fs-18">
                                                <i class="far fa-lock"></i>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control border-0 shadow-none fs-13"
                                            id="password01" name="password01" required placeholder="Password">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-gray-01 border-0 text-body fs-18">
                                                <i class="far fa-eye-slash"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <p class="form-text">Minimum 8 characters with 1 number and 1 letter</p>
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Sign up</button>
                            </form>
                            <div class="divider text-center my-2">
                                <span class="px-4 bg-white lh-17 text">
                                    or continue with
                                </span>
                            </div>
                            <div class="row no-gutters mx-n2">
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block facebook text-white px-0">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </div>
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block google px-0">
                                        <img src="images/google.png" alt="Google">
                                    </a>
                                </div>
                                <div class="col-4 px-2 mb-4">
                                    <a href="#" class="btn btn-lg btn-block twitter text-white px-0">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="mt-2">By creating an account, you agree to HomeID
                                <a class="text-heading" href="#"><u>Terms of Use</u> </a> and
                                <a class="text-heading" href="#"><u>Privacy Policy</u></a>.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <div class="position-fixed pos-fixed-bottom-right p-6 z-index-10">
        <a href="#"
            class="gtf-back-to-top bg-white text-primary hover-white bg-hover-primary shadow p-0 w-52px h-52 rounded-circle fs-20 d-flex align-items-center justify-content-center"
            title="Back To Top"><i class="fal fa-arrow-up"></i></a>
    </div>

</body>

</html>

<script>
$('#primaryMenu01 ul li a').on('click',function(event){
	   var $anchor = $(this);
	   $('html, body').animate({
	     scrollTop: $("#"+($anchor.attr('href').split('#').pop())).offset().top + "px"
	   }, 1500);
	   event.preventDefault();
	});
</script>