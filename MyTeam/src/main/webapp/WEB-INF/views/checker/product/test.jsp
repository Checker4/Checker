<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Checker</title>
	<link rel="shortcut icon" href="img/logos/logo-shortcut.png" />	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Bootstrap CSS-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

	<!-- Themify icons -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	
	<!-- Font-Awesome -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css">  

	<!-- Icomoon -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icomoon.css">

	<!-- Plugins -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/plugins.css">

	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">	

	<!-- Owl Carousel  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">

    <!-- Revolution Slider  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rev-settings.css">

	<!-- Revolution Slider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rev-settings.css">

	<!-- Main Styles -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" id="main_styles">
</head>
<body>

<!-- Preloader Start-->
<div id="preloader">
	<div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
</div>
<!-- Preloader End -->

<!-- Top-Bar START -->
<div id="top-bar" class="hidden-md-down">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-12">
                <ul class="top-bar-info">
                    <li><i class="fas fa-phone"></i> Phone:  +1-23-456789</li>
                    <li><i class="fas fa-map-marker-alt"></i>New York, NY Sheram 113</li>
                    <li><i class="fa fa-envelope"></i>Email:  example@email.com</li>
                </ul>
            </div>
            <div class="col-md-3 col-12">
                <ul class="social-icons hidden-sm">
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Top-Bar END -->

<!-- Navbar START -->
<header>
	<nav id="navigation4" class="container navigation">
		<div class="nav-header">
			<a class="nav-brand" href="index.html">
				<img src="img/logos/logo.png" class="main-logo" alt="logo" id="main_logo">
			</a>
			<div class="nav-toggle"></div>
		</div>
		<div class="nav-menus-wrapper">
			<ul class="nav-menu align-to-right">
				<li><a href="#">Home</a>
					<ul class="nav-dropdown">
						<li><a href="index.html">Home I</a></li>
						<li><a href="home-2.html">Home II</a></li>
						<li><a href="home-3.html">Home III</a></li>
						<li><a href="home-4.html">Home IV</a></li>
						<li><a href="home-5.html">Home V</a></li>
						<li><a href="home-6.html">Home VI</a></li>
					</ul>
				</li>
				<li><a href="#">Pages</a>
					<ul class="nav-dropdown">
						<li><a href="#">About Us</a>
							<ul class="nav-dropdown">
								<li><a href="page-about-1.html">About Us I</a></li>
								<li><a href="page-about-2.html">About Us II</a></li>
								<li><a href="page-about-3.html">About Us III</a></li>
								<li><a href="page-about-4.html">About Us IV</a></li>
							</ul>
						</li>
						<li><a href="#">Services</a>
							<ul class="nav-dropdown">
								<li><a href="page-services-1.html">Our Services I</a></li>
								<li><a href="page-services-2.html">Our Services II</a></li>
								<li><a href="page-services-3.html">Our Services III</a></li>
							</ul>
						</li>
						<li><a href="#">Contact Us</a>
							<ul class="nav-dropdown">
								<li><a href="page-contact-1.html">Contact Us I</a></li>
								<li><a href="page-contact-2.html">Contact Us II</a></li>
								<li><a href="page-contact-3.html">Contact Us III</a></li>
							</ul>
						</li>
						<li><a href="#">Error Pages</a>
							<ul class="nav-dropdown">
								<li><a href="page-404-1.html">404 Error Style 1</a></li>
								<li><a href="page-404-2.html">404 Error Style 2</a></li>
								<li><a href="page-404-3.html">404 Error Style 3</a></li>
							</ul>
						</li>
						<li><a href="#">Additional Pages</a>
							<ul class="nav-dropdown">
								<li><a href="page-search-results.html">Search Results</a></li>
								<li><a href="page-maintenance.html">Maintenance Mode</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#">Blog</a>
					<ul class="nav-dropdown">
						<li><a href="#">Blog Grid</a>
							<ul class="nav-dropdown">
								<li><a href="blog-grid-2.html">Blog Grid 2 Column</a></li>
								<li><a href="blog-grid-3.html">Blog Grid 3 Column</a></li>
								<li><a href="blog-grid-4.html">Blog Grid 4 Column</a></li>
							</ul>
						</li>
						<li><a href="#">Blog List</a>
							<ul class="nav-dropdown">
								<li><a href="blog-list.html">Blog List</a></li>
								<li><a href="blog-list-centered.html">Blog List Centered</a></li>
							</ul>
						</li>
						<li><a href="#">Blog Post</a>
							<ul class="nav-dropdown">
								<li><a href="blog-post.html">Blog Post</a></li>
								<li><a href="blog-post-video.html">Blog Post Video</a></li>
								<li><a href="blog-post-centered.html">Blog Post Centered</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#">Case Study</a>
					<ul class="nav-dropdown">
						<li><a href="#">Case Study Grid</a>
							<ul class="nav-dropdown">
								<li><a href="case-grid-2.html">Case Study 2 Columns</a></li>
								<li><a href="case-grid-3.html">Case Study 3 Columns</a></li>
								<li><a href="case-grid-4.html">Case Study 4 Columns</a></li>
							</ul>
						</li>
						<li><a href="case-list.html">Case Study List</a></li>
					</ul>
				</li>
				<li><a href="#">Shop</a>
					<ul class="nav-dropdown">
						<li><a href="#">Shop Grid</a>
							<ul class="nav-dropdown">
								<li><a href="shop-grid-3.html">Shop Grid 3 Column</a></li>
								<li><a href="shop-grid-4.html">Shop Grid 4 Column</a></li>
								<li><a href="shop-grid-sidebar.html">Shop Grid Sidebar</a></li>
							</ul>
						</li>
						<li><a href="shop-single.html">Shop Single</a></li>
						<li><a href="shop-cart.html">Shop Cart</a></li>
					</ul>
				</li>
				<li><a href="#">Portfolio</a>
					<ul class="nav-dropdown">
						<li><a href="#">Portfolio Boxed Style I</a>
							<ul class="nav-dropdown">
								<li><a href="portfolio-boxed-grid.html">Portfolio Boxed Grid</a></li>
								<li><a href="portfolio-boxed-fluid.html">Portfolio Boxed Fluid</a></li>
								<li><a href="portfolio-boxed-metro.html">Portfolio Boxed Metro</a></li>
								<li><a href="portfolio-boxed-metro-fluid.html">Portfolio Boxed Metro Fluid</a></li>
							</ul>
						</li>
						<li><a href="#">Portfolio Boxed Style II</a>
							<ul class="nav-dropdown">
								<li><a href="portfolio-boxed-2-grid.html">Portfolio Boxed Grid</a></li>
								<li><a href="portfolio-boxed-2-fluid.html">Portfolio Boxed Fluid</a></li>
							</ul>
						</li>
						<li><a href="#">Portfolio Single</a>
							<ul class="nav-dropdown">
								<li><a href="portfolio-single-1.html">Portfolio Single Style I</a></li>
								<li><a href="portfolio-single-2.html">Portfolio Single Style II</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#">Elements</a>
					<div class="megamenu-panel">
						<div class="megamenu-lists">
							<ul class="megamenu-list list-col-4">
								<li class="megamenu-list-title"><a href="#">Elements I</a></li>
								<li><a href="elements-accordions.html">Accordions</a></li>
								<li><a href="elements-action-boxes.html">Action Boxes</a></li>
								<li><a href="elements-buttons.html">Buttons</a></li>
								<li><a href="elements-carousels.html">Carousels</a></li>
							</ul>
							<ul class="megamenu-list list-col-4">
								<li class="megamenu-list-title"><a href="#">Elements II</a></li>
								<li><a href="elements-clients.html">Clients</a></li>
								<li><a href="elements-countups.html">Countups</a></li>
								<li><a href="elements-feature-boxes.html">Feature Boxes</a></li>
								<li><a href="elements-forms.html">Forms</a></li>
							</ul>
							<ul class="megamenu-list list-col-4">
								<li class="megamenu-list-title"><a href="#">Elements III</a></li>
								<li><a href="elements-headings.html">Headings</a></li>
								<li><a href="elements-modals.html">Modals</a></li>
								<li><a href="elements-pie-charts.html">Pie Charts</a></li>
								<li><a href="elements-pricing.html">Pricing Tables</a></li>
							</ul>
							<ul class="megamenu-list list-col-4">
								<li class="megamenu-list-title"><a href="#">Elements IV</a></li>
								<li><a href="elements-progress-bars.html">Progress Bars</a></li>
								<li><a href="elements-team.html">Team</a></li>
								<li><a href="elements-testmonials.html">Testmonials</a></li>
								<li><a href="elements-videos.html">Videos</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</header>	
<!-- Navbar END -->

<!-- Start revolution slider -->
<div class="rev_slider_wrapper fs-slider-wrap bg-arrows">
	<div class="arrow-left"></div>
	<div class="arrow-right"></div>
	<div id="rev_slider" class="rev_slider fullscreenbanner">
		<ul>
			<!-- Slide 1 -->
			<li  data-delay="5000" data-transition="boxslide" data-slotamount="7" data-masterspeed="1000" data-fsmasterspeed="1000">

				<!-- Main image-->
				<img src="http://via.placeholder.com/1500x630"  alt="" data-bgposition="center right" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg">

				<!-- Layer 1 -->
				<div class="slide-title tp-caption tp-resizeme text-left text-center-sm"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['-90','-90', '-150', '-350']"
					 data-fontsize="['70','60', '60', '125']"
					 data-fontweight="600"
					 data-lineheight="['80','70', '70', '135']"
					 data-width="['700','700','650']"
					 data-height="none"
					 data-color="#222"
					 data-whitespace="normal"
					 data-transform_idle="o:1;"
					 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;"
					 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
					 data-mask_in="x:50px;y:0px;s:inherit;e:inherit;"
					 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
					 data-frames='[{"delay":0,"split":"chars","splitdelay":0.05,"speed":2000,"frame":"0","from":"y:[100%];z:0;rZ:-35deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
					 data-start="500"
					 data-responsive_offset="on"
					 data-elementdelay="0.05">Digital solutions for your business
				</div>

				<!-- Layer 2 -->
				<div class="slide-subtitle tp-caption tp-resizeme text-left text-center-sm"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['45','25', '15', '15']"
					 data-fontsize="['18', '18', '18', '18']"
					 data-fontweight="500"
					 data-lineheight="['30']"
					 data-width="['1200','1000','550']"
					 data-whitespace="nowrap"
					 data-transform_idle="o:1;"
					 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1200;e:Power1.easeInOut;"
					 data-transform_out="opacity:0;s:1000;s:1000;"
					 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
					 data-start="1500"
					 data-color="#222"
					 data-splitin="none"
					 data-splitout="none">Brand marketing that puts your vision into action! Putting vision into action. <br> Accurate data for precision marketing. Your outsourced marketing team.
				</div>

				<!-- Layer 3 -->
				<div class="tp-caption rev-btn tp-resizeme slider-btn button-primary"
					 id="slide-1081-layer-130"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['100','100','100','30']"
					 data-fontsize="['15','15','15','15']"
					 data-fontweight="600"
					 data-lineheight="['50','50','50','50']"
					 data-width="['200','200','200','200']"
					 data-height="none"
					 data-whitespace="nowrap"
					 data-start="1500"
					 data-type="button"
					 data-actions='[{"event":"click","action":"scrollbelow","offset":"-70px","delay":"","speed":"2500","ease":"Power1.easeInOut"}]'
					 data-responsive_offset="on"
					 data-splitin="none"
					 data-splitout="none"
					 data-frames='[{"delay":900,"speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;fbr:100;","to":"o:1;fb:0;fbr:100;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;fbr:100;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"200","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;fbr:110%;","style":"c:rgba(255,255,255,1);bs:solid;bw:0 0 0 0;"}]'
					 data-textAlign="['center','center','center','center']"
					 data-paddingtop="[0,0,0,0]"
					 data-paddingright="[0,0,0,0]"
					 data-paddingbottom="[0,0,0,0]"
					 data-paddingleft="[0,0,0,0]"
					 style="">Learn More
				</div>
			</li>

			<!-- Slide 2 -->
			<li  data-delay="5000" data-transition="boxslide" data-slotamount="7" data-masterspeed="1000" data-fsmasterspeed="1000">

				<!-- Main image-->
				<img src="http://via.placeholder.com/1500x630"  alt="" data-bgposition="center right" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg">

				<!-- Layer 1 -->
				<div class="slide-title tp-caption tp-resizeme text-center-sm"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['-90','-90', '-150', '-350']"
					 data-fontsize="['70','60', '60', '125']"
					 data-fontweight="600"
					 data-lineheight="['80','70', '70', '135']"
					 data-width="['700','700','650']"
					 data-height="none"
					 data-color="#222"
					 data-whitespace="normal"
					 data-transform_idle="o:1;"
					 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;"
					 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
					 data-mask_in="x:50px;y:0px;s:inherit;e:inherit;"
					 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
					 data-frames='[{"delay":0,"split":"chars","splitdelay":0.05,"speed":2000,"frame":"0","from":"y:[100%];z:0;rZ:-35deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
					 data-start="500"
					 data-splitin="chars"
					 data-splitout="chars"
					 data-responsive_offset="on"
					 data-elementdelay="0.05">Your marketing will come alive
				</div>

				<!-- Layer 2 -->
				<div class="slide-subtitle tp-caption tp-resizeme text-center-sm"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['45','25', '15', '15']"
					 data-fontsize="['18', '18', '18', '18']"
					 data-fontweight="500"
					 data-lineheight="['30']"
					 data-width="['1200','1000','550']"
					 data-whitespace="nowrap"
					 data-transform_idle="o:1;"
					 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1200;e:Power1.easeInOut;"
					 data-transform_out="opacity:0;s:1000;s:1000;"
					 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
					 data-start="1500"
					 data-color="#222"
					 data-splitin="none"
					 data-splitout="none">Brand marketing that puts your vision into action! Putting vision into action. <br> Accurate data for precision marketing. Your outsourced marketing team.
				</div>

				<!-- Layer 3 -->
				<div class="tp-caption rev-btn tp-resizeme slider-btn button-primary"
					 id="slide-1081-layer-13"
					 data-x="['left','left','center','center']" data-hoffset="['0','0','0','0']"
					 data-y="['middle','middle','middle','middle']" data-voffset="['100','100','100','30']"
					 data-fontsize="['15','15','15','15']"
					 data-fontweight="600"
					 data-lineheight="['50','50','50','50']"
					 data-width="['200','200','200','200']"
					 data-height="none"
					 data-whitespace="nowrap"
					 data-start="1500"
					 data-type="button"
					 data-actions='[{"event":"click","action":"scrollbelow","offset":"-70px","delay":"","speed":"2500","ease":"Power1.easeInOut"}]'
					 data-responsive_offset="on"
					 data-splitin="none"
					 data-splitout="none"
					 data-frames='[{"delay":900,"speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;fbr:100;","to":"o:1;fb:0;fbr:100;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;fbr:100;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"200","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;fbr:110%;","style":"c:rgba(255,255,255,1);bs:solid;bw:0 0 0 0;"}]'
					 data-textAlign="['center','center','center','center']"
					 data-paddingtop="[0,0,0,0]"
					 data-paddingright="[0,0,0,0]"
					 data-paddingbottom="[0,0,0,0]"
					 data-paddingleft="[0,0,0,0]"
					 style="">Learn More
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- End revolution slider -->

<!--Features Section START-->
<div class="section-block grey-bg background-center background-no-repeat" style="background-image: url('http://via.placeholder.com/1500x760');">
	<div class="container">
		<div class="section-heading text-center">
			<small class="primary-color">WHAT WE DO</small>
			<h4 class="semi-bold font-size-35">Marketing solutions to win you more customers! <br>marketing for technology businesses</h4>
			<div class="section-heading-line line-thin"></div>
		</div>
		<div class="row mt-20">
			<div class="col-md-4 col-sm-4 col-12">
				<div class="service-box-3">
					<div class="inner">
						<div class="service-box-3-icon">
							<i class="icon-locked-combination-padlock-stroke"></i>
						</div>
						<h4>Content Strategist</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
						<a href="#" class="service-box-3-btn">Learn More <i class="fa fa-arrow-right"></i></a>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-12">
				<div class="service-box-3">
					<div class="inner">
						<div class="service-box-3-icon">
							<i class="icon-worldwide"></i>
						</div>
						<h4>Investment Advisor</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
						<a href="#" class="service-box-3-btn">Learn More <i class="fa fa-arrow-right"></i></a>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-12">
				<div class="service-box-3">
					<div class="inner">
						<div class="service-box-3-icon">
							<i class="icon-development"></i>
						</div>
						<h4>Marketing Manager</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
						<a href="#" class="service-box-3-btn">Learn More <i class="fa fa-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Features Section END-->

<!--Progress Bars Section START-->
<div class="section-block">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-12">
				<div class="section-heading text-left">
					<small>Brilliant ideas for every client</small>
					<h3 class="semi-bold font-size-30">Strategy. Creativity. Results.</h3>
				</div>
				<div class="text-content mt-20">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				</div>
				<a href="#" class="button-sm button-primary-bordered mt-5">Learn More</a>
			</div>
			<div class="col-md-5 col-sm-6 col-12 offset-md-1">
				<div class="progress-bar-title clearfix">
					<h5>Budget Analyst</h5>
					<h6>25%</h6>
				</div>
				<div class="progress progress-bar-sm">
					<div class="progress-bar progress-bar-gradient slideInLeft wow animated" style="width:25%"></div>
				</div>
				<div class="progress-bar-title clearfix">
					<h5>Digital Marketing</h5>
					<h6>50%</h6>
				</div>
				<div class="progress progress-bar-sm">
					<div class="progress-bar progress-bar-gradient slideInLeft wow animated" style="width:50%"></div>
				</div>
				<div class="progress-bar-title clearfix">
					<h5>Social Media Managment</h5>
					<h6>75%</h6>
				</div>
				<div class="progress progress-bar-sm">
					<div class="progress-bar progress-bar-gradient slideInLeft wow animated" style="width:75%"></div>
				</div>
				<div class="progress-bar-title clearfix">
					<h5>Connecting customers to brand</h5>
					<h6>90%</h6>
				</div>
				<div class="progress progress-bar-sm">
					<div class="progress-bar progress-bar-gradient slideInLeft wow animated" style="width:90%"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Progress Bars Section END-->

<!-- Clients Carousel START -->
<div class="section-block section-sm border-top">
	<div class="container">
		<div class="owl-carousel owl-theme clients clients-carousel">
			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>

			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>

			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>

			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>

			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>

			<div class="item">
				<img src="http://via.placeholder.com/135x65" alt="partner-image">
			</div>
		</div>
	</div>
</div>
<!-- Clients Carousel END -->

<!--Info Section START-->
<div class="section-block grey-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-12">
				<img src="http://via.placeholder.com/570x430" class="shadow-primary rounded-border" alt="img">
			</div>
			<div class="col-md-6 col-sm-6 col-12">
				<div class="pl-45-md">
					<div class="section-heading text-left mt-5">
						<h3 class="semi-bold font-size-30">Brand marketing that puts your <span class="primary-color">vision into action!</span></h3>
						<div class="section-heading-line line-thin"></div>
						<div class="text-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor.</p>
						</div>
					</div>
					<div class="primary-list mt-20">
						<ul>
							<li><i class="fas fa-check-circle"></i>Vision, passion and marketing excellence.</li>
							<li><i class="fas fa-check-circle"></i>Growing your brand through health education.</li>
							<li><i class="fas fa-check-circle"></i>Get answers and advices from Professionals.</li>
						</ul>
					</div>
					<a href="#" class="button-md button-primary mt-25">Learn More</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Info Section END-->

<!-- Parallax Section START -->
<div class="section-block-parallax jarallax black-overlay-70" data-jarallax data-speed="0.6" style="background-image: url('http://via.placeholder.com/1500x370');">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-sm-10 col-12">
				<div class="large-heading text-left">
					<small class="semi-bold primary-color">Making sense of global markets</small>
					<h4 class="semi-bold white-color">Knowing more about business, consumers and society. The compass for the market place.</h4>
					<p class="white-color">Knowledge. Identified & delivered. Your single source for buying market research.</p>
				</div>
			</div>
			<div class="col-md-2 col-sm-2 col-12">
				<!-- Video Button Start -->
				<div class="video-button center-holder mt-30">
					<button class="video-video-play-icon" data-izimodal-open=".izimodal">
						<i class="fa fa-play"></i>
					</button>
				</div>
				<!-- Video Button End -->

				<!-- Modal Start -->
				<div class="izimodal" data-iziModal-width="800px" data-iziModal-fullscreen="true">
					<iframe height="415" src="https://www.youtube.com/embed/nrJtHemSPW4" class="full-width shadow-primary"></iframe>
				</div>
				<!-- Modal End -->
			</div>
		</div>
	</div>
</div>
<!-- Parallax Section END -->

<!--Pricing Section START-->
<div class="section-block">
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-12 col-12">
				<div class="pr-45-md">
					<div class="section-heading text-left mt-35">
						<h3 class="semi-bold">Senior marketing expertise at a <span class="primary-color">small business price</span></h3>
						<div class="section-heading-line line-thin"></div>
						<div class="text-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor.</p>
						</div>
					</div>
					<a href="#" class="button-md button-primary-bordered mt-15">Get more Information</a>
				</div>
			</div>
			<div class="col-md-7 col-sm-12 col-12">
				<div class="row no-gutters">
					<div class="col-md-6 col-sm-12 col-12 wow fadeInLeftSm" data-wow-delay="0.7s">
						<div class="pricing-section">
							<div class="pricing-section-price">
								<h2><sup>$</sup>199</h2>
								<h4>Pro Package</h4>
								<h6>Monthly Plan</h6>
							</div>
							<ul>
								<li> Performance Consultants</li>
								<li> Business Transformation</li>
								<li> Professional Consulting</li>
								<li> Economic Marketing</li>
								<li> Market Research</li>
								<li> 24/7 Support</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-12 wow fadeInLeftSm" data-wow-delay="0.9s">
						<div class="pricing-section pricing-section-advanced">
							<div class="pricing-section-price">
								<h2><sup>$</sup>149</h2>
								<h4>Basic Package</h4>
								<h6>Monthly Plan</h6>
							</div>
							<ul>
								<li> Performance Consultants</li>
								<li> Business Transformation</li>
								<li> Professional Consulting</li>
								<li> Economic Marketing</li>
								<li> Market Research</li>
								<li> 24/7 Support</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Pricing Section END-->

<!--Testmonials Section START-->
<div class="section-block grey-bg">
	<div class="background-shape bs-right"></div>
	<div class="container">
		<div class="section-heading text-center">
			<small class="primary-color text-uppercase">Our Testonials</small>
			<h4 class="semi-bold">Feedback from our clients</h4>
			<div class="section-heading-line line-thin"></div>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt<br>ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
		</div>
		<div class="row mt-20">
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Harley Johnson</h4>
							<strong>CEO Founder</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Raul Drake</h4>
							<strong>Sales Manager</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Mariyah Mcleod</h4>
							<strong>Account executive</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Franklin Ferrell</h4>
							<strong>Accounting analyst</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Adrianna Churchs</h4>
							<strong>Advertising operator</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-12">
				<div class="testmonial-box-2">
					<i class="quote-icon fa fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
					<div class="d-table">
						<img src="http://via.placeholder.com/70x70" class="testmonial-img" alt="img">
						<div class="d-table-cell">
							<h4>Nathan Day</h4>
							<strong>Association planner</strong>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Testmonials Section END-->

<!--Blog Posts START-->
<div class="section-block">
	<div class="container">
		<div class="section-heading text-center">
			<h3 class="semi-bold">Recent News</h3>
			<div class="section-heading-line line-thin dark-bg"></div>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt<br>ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
		</div>
		<div class="row mt-50">
			<div class="col-md-3 col-sm-6 col-12">
				<div class="blog-grid">
					<img src="http://via.placeholder.com/270x190" alt="blog">
					<div class="blog-team-box">
						<h6>Oct 24, 2018</h6>
					</div>
					<h4><a href="#">Advices for young designers, what Planning ...</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="button-simple-primary mt-20">Read More <i class="fas fa-arrow-right"></i></a>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 col-12">
				<div class="blog-grid">
					<img src="http://via.placeholder.com/270x190" alt="blog">
					<div class="blog-team-box">
						<h6>Oct 13, 2018</h6>
					</div>
					<h4><a href="#">Leverage Customer Analytics, red Is Good...</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="button-simple-primary mt-20">Read More <i class="fas fa-arrow-right"></i></a>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 col-12">
				<div class="blog-grid">
					<img src="http://via.placeholder.com/270x190" alt="blog">
					<div class="blog-team-box">
						<h6>Oct 30, 2018</h6>
					</div>
					<h4><a href="#">The Best Way to Align, How Brands Can Get ahead ?</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="button-simple-primary mt-20">Read More <i class="fas fa-arrow-right"></i></a>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 col-12">
				<div class="blog-grid">
					<img src="http://via.placeholder.com/270x190" alt="blog">
					<div class="blog-team-box">
						<h6>Oct 30, 2018</h6>
					</div>
					<h4><a href="#">We make up the news, so you don't have to!</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="button-simple-primary mt-20">Read More <i class="fas fa-arrow-right"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Blog Posts END-->

<!-- Action Box START -->
<div class="action-box action-box-lg jarallax primary-overlay-80 center-holder-xs" data-jarallax data-speed="0.6" style="background-image: url('http://via.placeholder.com/1500x230');">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-sm-10 col-12">
				<h3 class="white-color bold">Your marketing, sales & design partner</h3>
				<p class="white-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
			</div>
			<div class="col-md-2 col-sm-2 col-12 text-right center-holder-xs mt-10">
				<a href="#" class="button-md button-white-bordered">Read More</a>
			</div>
		</div>
	</div>
</div>
<!-- Action Box END -->

<!--Footer START-->
<footer>
    <div class="footer-1">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-12">
                    <a href="#"><img id="footer_logo" src="img/logos/logo-footer.png" alt="logo"></a>
                    <p class="mt-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <ul class="social-links-footer">
                        <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-12">
                    <h2>Extra Links</h2>
                    <div class="row mt-25">
                        <div class="col-md-6 col-sm-6">
                            <ul class="footer-nav">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Our approach</a></li>
                                <li><a href="#">Case Studies</a></li>
                                <li><a href="#">Our team</a></li>
                                <li><a href="#">Our approach</a></li>
                                <li><a href="#">Accounting</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <ul class="footer-nav">
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Consulting</a></li>
                                <li><a href="#">Development</a></li>
                                <li><a href="#">Case Studies</a></li>
                                <li><a href="#">Latest News</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-12">
                    <h2>Recent news</h2>
                    <ul class="footer-news mt-25">
                        <li>
                            <a href="#">Apartamento at ten: a decade of celebrating the everyday.</a>
                            <strong><i class="fa fa-calendar"></i> 11 September 2018</strong>
                        </li>
                        <li>
                            <a href="#">Within the construction industry as their overdraft</a>
                            <strong><i class="fa fa-calendar"></i> 11 September 2018</strong>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-12">
                    <h2>Subscribe</h2>
                    <form class="footer-subscribe-form mt-25">
                        <div class="d-table full-width">
                            <div class="d-table-cell">
                                <input type="text" placeholder="Your Email adress">
                            </div>
                            <div class="d-table-cell">
                                <button type="submit"><i class="fas fa-envelope"></i></button>
                            </div>
                        </div>
                    </form>
                    <p class="mt-10">Get latest updates and offers.</p>
                </div>
            </div>
            <div class="footer-1-bar">
                <p>SpecThemes © 2019. All Rights Reserved.</p>
            </div>
        </div>
    </div>
</footer>
<!--Footer END-->

<!-- Scroll to top button Start -->
<a href="#" class="scroll-to-top"><i class="fas fa-chevron-up"></i></a>	
<!-- Scroll to top button End -->

<!-- Jquery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

<!-- Plugins JS-->
<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>

<!-- Chart JS -->
<script src="${pageContext.request.contextPath}/resources/js/Chart.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/utils.js"></script>

<!-- Navbar JS -->
<script src="${pageContext.request.contextPath}/resources/js/navigation.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/navigation.fixed.js"></script>

<!-- Revolution Slider -->
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/jquery.themepunch.revolution.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.actions.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.kenburn.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.layeranimation.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.migration.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.navigation.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.slideanims.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/rev-slider/revolution.extension.video.min.js"></script>

<!-- Google Map -->
<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>