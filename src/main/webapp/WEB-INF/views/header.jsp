
<div id="site-header-wrap">
	<div id="top-bar">
		<div id="top-bar-inner" class="container">
			<div class="top-bar-inner-wrap">
				<div class="top-bar-content">
					<div class="inner">
						<span class="phone content"> +91 7698 950 055 </span>
						<span class="time content"> info@everestconstruction.co.in </span>
					</div>
				</div>
				<div class="top-bar-socials">
					<div class="inner">
						<span class="icons">
							
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-pinterest-p"></i></a>
							<a href="#"><i class="fa fa-rss"></i></a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<header id="site-header">
		<div id="site-header-inner" class="container">
			<div class="wrap-inner clearfix" >
				<div id="site-logo" class="clearfix">
					<div id="site-log-inner" style="text-align:left;">
						<a href="<%=request.getContextPath() %>/" rel="home" class="main-logo">
							<img src="<%=request.getContextPath() %>/resources/front/assets/img/everest-logo.png" alt="Everst Group" width="140"
							height="39" data-retina="<%=request.getContextPath() %>/resources/front/assets/img/logo-white-small.png"
							data-width="140" data-height="39">
						</a>
					</div>
				</div>
				<div class="mobile-button">
					<span></span>
				</div>
				<nav id="main-nav" class="main-nav">
					<ul id="menu-primary-menu" class="menu" ng-app="MyApp" ng-controller="headerCtrl" ng-clock>
						<li class="menu-item menu-item-has-children">
							<a href="#">Everest Group</a>
							<ul class="sub-menu">
								<li class="menu-item">
									<a href="<%=request.getContextPath() %>/why_everest">Why Everest?</a>
								</li>
								<li class="menu-item"><a href="<%=request.getContextPath() %>/director_profile">Director's Profile </a></li>
							</ul>
						</li>
						<li class="menu-item menu-item-has-children">
							<a href="<%=request.getContextPath() %>/projects_list?workstatus=All"> Projects </a>
							<ul class="sub-menu">
								<li ng-repeat="w in getProjectstatus" class="menu-item"><a href="<%=request.getContextPath() %>/projects_list?workstatus={{w.workStatus}}"> {{w.workStatus}} Projects</a></li>
							</ul>
						</li>
						<li class="menu-item menu-item-has-children"><a href="<%=request.getContextPath() %>/NriCorner">NRI CORNER </a></li>
						<li class="menu-item menu-item-has-children"><a href="<%=request.getContextPath() %>/achievements"> Achievements </a></li>
						<li class="menu-item menu-item-has-children"><a href="<%=request.getContextPath() %>/testimonial">TESTIMONIALs </a></li>
						<li class="menu-item menu-item-has-children"><a href="#">Gallery </a></li>
						<li class="menu-item menu-item-has-children"><a href="<%=request.getContextPath() %>/contact_us"> Contact </a></li>
					</ul>
				</nav>
			</div>
		</div>
	
	</header>
</div>