<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트2</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- css import see /web_contents/css_components.jsp --> 
<%-- <%@ include file="web_components/css/css_components.jsp"%> --%>
<jsp:include page="${css_components }"></jsp:include>
<!-- css import see /web_contents/css_components.jsp -->
</head>
<body class="home">
	<div class="page-mask">
		<div class="page-loader">
			<div class="spinner"></div>
			로딩중
		</div>
	</div>
	<!-- Wrap -->
	<div class="wrap">
		<!-- Header --> <!-- 네이게이션 오브젝트 불러오기 -->
		<%-- <%@ include file="web_components/nav_bar.jsp"%> --%>
		<jsp:include page="${nav_bar }"></jsp:include>
		<!-- 네이게이션 오브젝트 불러오기 --> <!-- /Header -->
		<!-- Main Section -->
		<div class="container">
			  <div id="myCarousel" class="carousel slide" data-ride="carousel">
			    <!-- Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
			
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner">
			      <div class="item active">
			        <img src="img/main_img/main3.jpg" alt="Los Angeles" style="width:100%;">
			      </div>
			
			      <div class="item">
			        <img src="img/main_img/main3.jpg" alt="Chicago" style="width:100%;">
			      </div>
			    
			      <div class="item">
			        <img src="img/main_img/main3.jpg" alt="New york" style="width:100%;">
			      </div>
			    </div>
			
			    <!-- Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right"></span>
			      <span class="sr-only">Next</span>
			    </a>
			  </div>
			</div>
					
		<!-- <section id="main"> Slider
		<div class="fullwidthbanner-container tp-banner-container">
			<div class="fullwidthbanner rslider tp-banner">
				<ul>
					THE FIRST SLIDE
					<li data-transition="fade" data-slotamount="7"
						data-masterspeed="2000" data-thumb="img/homeslider_thumb2.png"
						data-delay="10000" data-saveperformance="on">
						MAIN IMAGE <img src="img/dummy.png"
						alt="laptopmockup_sliderdy"
						data-lazyload="img/slider/slider-bg-1.jpg"
						data-bgposition="right top" data-kenburns="on"
						data-duration="12000" data-ease="Power0.easeInOut"
						data-bgfit="115" data-bgfitend="100"
						data-bgpositionend="center bottom"> LAYERS LAYER NR. 1
						<div class="tp-caption customin fadeout rs-parallaxlevel-10"
							data-x="783" data-y="146"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2700" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 2;">
							<img src="img/dummy.png" alt="" data-lazyload="img/redbg_big.png">
						</div> LAYER NR. 2
						<div
							class="tp-caption light_heavy_50 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="797" data-y="154"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2850" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 3; max-width: auto; max-height: auto; white-space: nowrap;">Bootstrap
						</div> LAYER NR. 3
						<div
							class="tp-caption black_heavy_70 skewfromleftshort fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="550" data-y="83" data-speed="500" data-start="2400"
							data-easing="Power3.easeInOut" data-splitin="chars"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;">Multipurpose
						</div> LAYER NR. 4
						<div
							class="tp-caption black_bold_40 skewfromrightshort fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="900" data-y="232" data-speed="500" data-start="3200"
							data-easing="Power3.easeInOut" data-splitin="chars"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">Theme!
						</div> LAYER NR. 5
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="933" data-y="300" data-speed="300" data-start="4000"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">RETINA
							READY</div> LAYER NR. 6
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="902" data-y="300"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="4000" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 7
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="911" data-y="306"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="4200" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 8;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 8
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="933" data-y="340" data-speed="300" data-start="4500"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">SUPER
							CUSTOMIZABLE</div> LAYER NR. 9
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="902" data-y="340"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="4500" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 10
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="911" data-y="347"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="4700" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 11;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 11
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="933" data-y="380" data-speed="300" data-start="5000"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;">EASY
							TO USE</div> LAYER NR. 12
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="902" data-y="380"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="5000" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 13; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 13
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="911" data-y="386"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="5200" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 14;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div>
					</li>
					/THE FIRST SLIDE
					THE RESPONSIVE SLIDE
					<li data-transition="fade" data-slotamount="1"
						data-masterspeed="300"><img src="img/slider/slider-bg-2.jpg"
						data-fullwidthcentering="on" alt="">
						<div class="caption large_text sft" data-x="660" data-y="54"
							data-speed="300" data-start="800" data-easing="easeOutExpo">TOUCH
							ENABLED</div>
						<div class="caption medium_text sfl" data-x="689" data-y="92"
							data-speed="300" data-start="1100" data-easing="easeOutExpo">AND</div>
						<div class="caption large_text sfr" data-x="738" data-y="88"
							data-speed="300" data-start="1100" data-easing="easeOutExpo">
							<span class="dblue">RESPONSIVE</span>
						</div> LAYER NR. 5 1
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="691" data-y="220" data-speed="300" data-start="1000"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Unique
							Design</div> LAYER NR. 6 1
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="660" data-y="220"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="1200" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 7 1
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="669" data-y="232"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="1500" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 8;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 5 1
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="691" data-y="260" data-speed="300" data-start="1500"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Responsive
							Pricing Tables</div> LAYER NR. 6 1
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="660" data-y="260"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="1700" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 7 1
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="669" data-y="272"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2000" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 8;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 5
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="691" data-y="300" data-speed="300" data-start="2000"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Crossbrowser
							Compatible</div> LAYER NR. 6
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="660" data-y="300"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2000" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 7
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="669" data-y="306"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2200" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 8;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 8
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="691" data-y="340" data-speed="300" data-start="2500"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Twitter
							1.1 API Support</div> LAYER NR. 9
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="660" data-y="340"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2500" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 10
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="669" data-y="347"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="2700" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 11;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div> LAYER NR. 11
						<div
							class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="691" data-y="380" data-speed="300" data-start="3000"
							data-easing="Power3.easeInOut" data-splitin="none"
							data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;">Bootstrap
							Framework</div> LAYER NR. 12
						<div
							class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
							data-x="660" data-y="380"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="3000" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="300"
							style="z-index: 13; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> LAYER NR. 13
						<div
							class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
							data-x="669" data-y="386"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="300" data-start="3200" data-easing="Power3.easeInOut"
							data-elementdelay="0.1" data-endelementdelay="0.1"
							data-endspeed="300" style="z-index: 14;">
							<img src="img/dummy.png" alt="" data-ww="17" data-hh="17"
								data-lazyload="img/check.png">
						</div>
						<div class="caption lfl" data-x="53" data-y="30" data-speed="300"
							data-start="1400" data-easing="easeOutExpo">
							<img src="img/slider/responsive-imac.png" alt="iMac Responsive">
						</div>
						<div class="caption lfl" data-x="323" data-y="145"
							data-speed="300" data-start="1500" data-easing="easeOutExpo">
							<img src="img/slider/responsive-ipad.png" alt="iPad Responsive">
						</div>
						<div class="caption lfl" data-x="472" data-y="253"
							data-speed="300" data-start="1600" data-easing="easeOutExpo">
							<img src="img/slider/responsive-iphone.png"
								alt="iPhone Responsive">
						</div></li>
				</ul>
			</div>
		</div> -->
		<!-- Slider --> <!-- Main Content -->
		<div class="main-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
						<div class="content-box big ch-item bottom-pad-small">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-1">
										<i class="fa fa-rocket"></i>
									</div>
									<div class="ch-info-back">
										<i class="fa fa-rocket"></i>
									</div>
								</div>
							</div>
							<div class="content-box-info">
								<h3>숙소</h3>
								<p>숙소 예약 또는 등록을 해보세요.</p>
								<a href="accomodation.do">숙소 보러가기 <i class="fa fa-angle-right"></i><i
									class="fa fa-angle-right"></i></a>
							</div>
							<div class="border-bottom margin-top30"></div>
							<div class="border-bottom"></div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
						<div class="content-box big ch-item bottom-pad-small">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-1">
										<i class="fa fa-check"></i>
									</div>
									<div class="ch-info-back">
										<i class="fa fa-check"></i>
									</div>
								</div>
							</div>
							<div class="content-box-info">
								<h3>여행</h3>
								<p>여행 예약 또는 등록을 해보세요.</p>
								<a href="trip.do">여행 보러가기 <i class="fa fa-angle-right"></i><i
									class="fa fa-angle-right"></i></a>
							</div>
							<div class="border-bottom margin-top30"></div>
							<div class="border-bottom"></div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
						<div class="content-box big ch-item">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-1">
										<i class="fa fa-tags"></i>
									</div>
									<div class="ch-info-back">
										<i class="fa fa-tags"></i>
									</div>
								</div>
							</div>
							<div class="content-box-info">
								<h3>모임</h3>
								<p>모임 예약 또는 등록을 해보세요.</p>
								<a href="meet-up.do">모임 보러가기 <i class="fa fa-angle-right"></i><i
									class="fa fa-angle-right"></i></a>
							</div>
							<div class="border-bottom margin-top30"></div>
							<div class="border-bottom"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Main Content --> 
		<div class="product-lead bottom-pad margin-top100">
			<div class="pattern-overlay">
				<div class="container">
					<div class="row">
						<div
							class="col-md-6 col-sm-12 col-xs-12 text-center wow fadeInLeft">
							<img class="app-img" src="img/plane.png" alt="iPhone5c">

						</div>
						<div class="col-md-6 col-sm-12 col-xs-12 wow fadeInRight">
							<div class="app-service padding-bottom50">
								<h2 class="light">갤럭시 소개</h2>
								<h4>갤럭시는 2017년 5월에 창립되어 서울시 마포구에 본사를 두고 있으며, 온라인 및 모바일, 태블릿에서 전국의 독특한 숙소들을 올리고, 발견하고, 예약할 수 있는 믿을만한 커뮤니티 플랫폼입니다.</h4>
								<p>
갤럭시는 특별한 여행 경험을 가능하게 합니다. 하룻밤 지낼 아파트, 일주일 동안 지낼 수 있는 성, 한 달 동안 지낼 수 있는 빌라 등 다양한 가격대의 숙소가 전국 77개 도시에서 여러분을 기다리고 있습니다. 갤럭시는 세계적인 수준의 고객 서비스를 제공하며 사용자 커뮤니티가 지속적으로 성장하고 있습니다. 갤럭시는 남는 공간을 통해 수익을 창출하고 이를 수백만의 사람들에게 보여줄 수 있는 가장 쉬운 방법입니다.</p>
								<div class="divider"></div>
<!-- 버튼 걍 뺴겠음					<div class="learnmore">
									<a class="btn-special btn-grey" href="#">Learn More</a>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Product Content --> <!-- Portfolio Work -->
		<div class="portfolio bottom-pad margin-top100">
			<div class="container">
				<div class="row">
					<div class="portfolio-content">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="portfolio-title text-center">
								<h2 class="wow fadeIn">갤럭시 활동 사진</h2>
								<h4 class="wow fadeInRight">
									갤럭시와 함께한 소중한 추억들입니다. <br /> 
									당신도 아름다운 추억의 주인공이 되어 보세요.
								</h4>
							</div>
						</div>
						<div
							class="col-lg-12 col-md-12 col-sm-12 col-xs-12 portfolio-three-column wow fadeInUp">
							<div class="grid">
								<!-- Item 1 -->
								<figure class="effect-zoe portfolio-border web jquery item">
								<a href="img/item1.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item1.jpg"
									alt="img1" /></a> <figcaption>
								<h2>
									Creative <span>Zoe</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item1.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>부천 호수공원에서 한컷! 찰칵! 여행가이드분이 너무 유쾌하고 재밌어서 돈이 안아까웠어요.</p>
								</figcaption> </figure>
								<!-- /Item 1 -->
								<!-- Item 2 -->
								<figure class="effect-zoe portfolio-border wp css item">
								<a href="img/item2.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item2.jpg"
									alt="img2" /></a> <figcaption>
								<h2>
									Marchant <span>Mogul</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item2.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>인천 앞바다!!! 갤럭시에서 여행가이드분이랑 같이 놀았어요. 너무 좋은 추억이었습니다.</p>
								</figcaption> </figure>
								<!-- /Item 2 -->
								<!-- Item 3 -->
								<figure class="effect-zoe portfolio-border php jquery wp item">
								<a href="img/item3.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item3.jpg"
									alt="img3" /></a> <figcaption>
								<h2>
									Pedaling <span>Tavern</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item3.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>서울대공원에서 가이드분이 찍어주셨어요. 넘나 잘나온고~~ 앞으로 갤럭시 많이 이용할 것 같아요. 짱짱굿!</p>
								</figcaption> </figure>
								<!-- /Item 3 -->
								<!-- Item 4 -->
								<figure class="effect-zoe portfolio-border wp jquery css item">
								<a href="img/item4.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item4.jpg"
									alt="img4" /></a> <figcaption>
								<h2>
									Create <span>Smart</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item4.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>한강의 어느 다리에서... 날씨도 너무 좋고 가이드도 너무 잘해주시고 즐거운 여행이었습니다.</p>
								</figcaption> </figure>
								<!-- /Item 4 -->
								<!-- Item 5 -->
								<figure class="effect-zoe portfolio-border web css wp item">
								<a href="img/item5.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item5.jpg"
									alt="img5" /></a> <figcaption>
								<h2>
									Back to <span>Zen</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item5.jpg" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>제주도에서 특별한 숙소를 구하다가 갤럭시에 왔는데 왕궁같은 별장을 싼 가격에 얻어서 잘 쉬다 왔습니다. 갤럭시 너무 좋아요.</p>
								</figcaption> </figure>
								<!-- /Item 5 -->
								<!-- Item 6 -->
								<figure class="effect-zoe portfolio-border web php item">
								<a href="img/item6.png" class="portfolio-item-link"
									data-rel="prettyPhoto"><img src="img/item6.png"
									alt="img6" /></a> <figcaption>
								<h2>
									Dynamic <span>Wins</span>
								</h2>
								<span><a href="portfolio-single.html"><i
										class="fa fa-share"></i></a></span> <span><a
									href="img/item6.png" class="portfolio-item-link"
									data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span> <span><a
									href="#"><i class="fa fa-heart"></i></a></span>
								<p>수영장 딸린 숙소 얻어서 수영  실컷하고 왔습니다.ㅋㅋㅋ 너무 신나~~</p>
								</figcaption> </figure>
								<!-- /Item 6 -->
							</div>
							<!-- /grid -->
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Portfolio work --> <!-- Services -->
<!-- 		<div id="services" class="margin-top80">
			<div class="pattern-overlay">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="padding-top40 text-center">
								<h2 class="light wow fadeIn">Other Services We Provide</h2>
								<h4 class="light wow fadeInRight">We have a strong team of
									web design, email marketing and corporate solution.Feel free to
									get a free quote!!!</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInLeft">
							<div class="service-box padding-top30 padding-bottom40">
								<div class="service-box-icon">
									<a href="#"><img alt="Web Design"
										src="img/trip.png"></a>
								</div>
								<div class="service-box-info">
									<a href="#">
										<h3 class="padding-top25">Web Design</h3>
									</a>
									<p>Lorem Ipsum is simply dummy text of Lorem the printing
										and typesettings industry.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInUp">
							<div class="service-box padding-top30 padding-bottom40">
								<div class="service-box-icon">
									<a href="#"><img alt="Email Marketing"
										src="img/icons/email-marketing.png"></a>
								</div>
								<div class="service-box-info">
									<a href="#">
										<h3 class="padding-top25">Email Marketing</h3>
									</a>
									<p>Lorem Ipsum is simply dummy text of Lorem the printing
										and typesettings industry.</p>
								</div>
							</div>
						</div>
						<div
							class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInRight">
							<div class="service-box padding-top30 padding-bottom40">
								<div class="service-box-icon">
									<a href="#"><img alt="Corportate Solutions"
										src="img/icons/corporate-solutions.png"></a>
								</div>
								<div class="service-box-info">
									<a href="#">
										<h3 class="padding-top25">Corporate Solutions</h3>
									</a>
									<p>Lorem Ipsum is simply dummy text of Lorem the printing
										and typesettings industry.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		/Services Testimonials
		<div id="testimonials" class="padding-top100">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="text-center">
							<h2 class="wow fadeIn">What Clients Say About Us</h2>
							<h4 class="wow fadeInRight">We have a lot of clients over
								the world. Checout their feedback and comments about us.</h4>
						</div>
					</div>
				</div>
				<div class="row">
					<div
						class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeInRight">
						Testimonials Widget
						<div class="row margin-top25">
							<div class="testimonials widget">
								<div class="clearfix"></div>
								<div id="testimonials-carousel"
									class="testimonials-carousel carousel slide">
									<div class="carousel-inner">
										<div class="item active">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="testimonial item">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Ipsam necessitatibus magni nulla tempore ad deserunt
														vero dolor? Minus aspernatur adipisci quam nam, animi
														eveniet quos ab, necessitatibus iusto, molestias eligendi!
													</p>
													<div class="testimonials-arrow"></div>
													<div class="author">
														<div class="testimonial-image ">
															<img alt="" src="img/testimonial/team-member-1.jpg">
														</div>
														<div class="testimonial-author-info">
															<a href="#"><span class="color">Monica Sing</span></a>
															FIFO Themes
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="testimonial item">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Pariatur quas animi placeat consequatur dicta
														repudiandae voluptatum ut, iusto qui. Natus suscipit nemo
														officiis quo dignissimos laudantium, deleniti expedita
														eveniet. Expedita?</p>
													<div class="testimonials-arrow"></div>
													<div class="author">
														<div class="testimonial-image ">
															<img alt="" src="img/testimonial/team-member-2.jpg">
														</div>
														<div class="testimonial-author-info">
															<a href="#"><span class="color">Monzurul Haque</span></a>
															FIFO Themes
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="testimonial item">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Veniam ducimus eaque blanditiis quas! Error nam ad
														facilis mollitia cum aliquid, optio voluptates a
														doloremque, earum tempore iste! Autem, vel, ipsam.</p>
													<div class="testimonials-arrow"></div>
													<div class="author">
														<div class="testimonial-image ">
															<img alt="" src="img/testimonial/team-member-3.jpg">
														</div>
														<div class="testimonial-author-info">
															<a href="#"><span class="color">Carol Johansen</span></a>
															FIFO Themes
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					/Testimonials Widget
				</div>
			</div>
		</div>
		/Testimonials Random Facts
		<div id="random-facts" class=" margin-top70">
			<div class="pattern-overlay">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="padding-top60 text-center">
								<h2 class="light wow fadeIn">Some Random Facts</h2>
								<h4 class="light wow fadeInRight">Find what is going around
									us. You can see some real stats here!</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
							<div class="random-box padding-top30 padding-bottom40">
								<div class="random-box-icon">
									<i class="fa fa-coffee"></i>
								</div>
								<div class="random-box-info">
									<span class="facts" data-from="0" data-to="101"
										data-speed="5000" data-refresh-interval="50"></span>
									<p>COFFEES</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
							<div class="random-box padding-top30 padding-bottom40">
								<div class="random-box-icon">
									<i class="fa fa-briefcase"></i>
								</div>
								<div class="random-box-info">
									<span class="facts" data-from="0" data-to="299"
										data-speed="5000" data-refresh-interval="50"></span>
									<p>PROJECTS</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
							<div class="random-box padding-top30 padding-bottom40">
								<div class="random-box-icon">
									<i class="fa fa-user"></i>
								</div>
								<div class="random-box-info">
									<span class="facts" data-from="0" data-to="175"
										data-speed="5000" data-refresh-interval="50"></span>
									<p>CLIENTS</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
							<div class="random-box padding-top30 padding-bottom40">
								<div class="random-box-icon">
									<i class="fa fa-gift"></i>
								</div>
								<div class="random-box-info">
									<span class="facts" data-from="0" data-to="50"
										data-speed="5000" data-refresh-interval="50"></span>
									<p>AWARDS</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		/Random Facts Latest Posts
		<div id="latest-posts" class=" margin-top100">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 text-center">
						<h2 class="wow fadeIn">Latest Posts</h2>
						<h4 class="wow fadeInRight">We regularly post updates on our
							blog. Feel free to join with our blog!</h4>
					</div>
				</div>
				<div class="row">
					<div class="padding-top40">
						post item
						<div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
							<div class="post-img">
								<a href="single-post.html"><img alt="" src="img/blog/01.jpg"></a>
							</div>
							<div class="post-content blog-post-content">
								<h4>
									<a href="single-post.html">Praesentium minima</a>
								</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
							<div class="meta post-meta">
								<div class="post-date post-meta-content">
									<i title="12 May 2014" class="fa fa-clock-o"></i>
								</div>
								<div class="post-comment post-meta-content">
									<a title="Comments" href="#"><i class="fa fa-comment-o"></i>
										15</a>
								</div>
								<div class="post-like  post-meta-content">
									<a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
								</div>
								<div class="post-link post-meta-content">
									<a title="Read More" class="post-meta-link" href="#">...</a>
								</div>
							</div>
						</div>
						/post item
						post item
						<div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
							<div class="post-img">
								<a href="single-post.html"><img alt="" src="img/blog/02.jpg"></a>
							</div>
							<div class="post-content blog-post-content">
								<h4>
									<a href="single-post.html">Quisquam maiores</a>
								</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
							<div class="meta post-meta">
								<div class="post-date post-meta-content">
									<i title="12 May 2014" class="fa fa-clock-o"></i>
								</div>
								<div class="post-comment post-meta-content">
									<a title="Comments" href="#"><i class="fa fa-comment-o"></i>
										15</a>
								</div>
								<div class="post-like  post-meta-content">
									<a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
								</div>
								<div class="post-link post-meta-content">
									<a title="Read More" class="post-meta-link" href="#">...</a>
								</div>
							</div>
						</div>
						/post item
						post item
						<div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
							<div class="post-img">
								<a href="single-post.html"><img alt="" src="img/blog/03.jpg"></a>
							</div>
							<div class="post-content blog-post-content">
								<h4>
									<a href="single-post.html">Ipsam inventores</a>
								</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
							<div class="meta post-meta">
								<div class="post-date post-meta-content">
									<i title="12 May 2014" class="fa fa-clock-o"></i>
								</div>
								<div class="post-comment post-meta-content">
									<a title="Comments" href="#"><i class="fa fa-comment-o"></i>
										15</a>
								</div>
								<div class="post-like  post-meta-content">
									<a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
								</div>
								<div class="post-link post-meta-content">
									<a title="Read More" class="post-meta-link" href="#">...</a>
								</div>
							</div>
						</div>
						/post item
						post item
						<div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
							<div class="post-img">
								<a href="single-post.html"><img alt="" src="img/blog/04.jpg"></a>
							</div>
							<div class="post-content blog-post-content">
								<h4>
									<a href="single-post.html">Labore consequuntur</a>
								</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
							<div class="meta post-meta">
								<div class="post-date post-meta-content">
									<i title="12 May 2014" class="fa fa-clock-o"></i>
								</div>
								<div class="post-comment post-meta-content">
									<a title="Comments" href="#"><i class="fa fa-comment-o"></i>
										15</a>
								</div>
								<div class="post-like  post-meta-content">
									<a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
								</div>
								<div class="post-link post-meta-content">
									<a title="Read More" class="post-meta-link" href="#">...</a>
								</div>
							</div>
						</div>
						/post item
					</div>
				</div>
			</div>
		</div>
		/Latest Posts Slogan
		<div class="slogan margin-top100 bottom-pad-small">
			<div class="pattern-overlay">
				<div class="container">
					<div class="row">
						<div class="slogan-content">
							<div class="col-lg-10 col-md-10 wow fadeInLeft">
								<h2 class="slogan-title">Found a reason to work with us?
									Lets's start!</h2>
							</div>
							<div class="col-lg-2 col-md-2 wow fadeInRight">
								<div class="get-started wow fadeIn">
									<a href="#" class="btn-special btn-grey pull-right">BUY NOW</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		/Slogan Our Clients
		<div class="our-clients">
			<div class="container">
				<div class="row">
					<div class="client">
						<div class="client-logo">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="text-center">
									<h2 class="wow fadeIn">Our Clients</h2>
									<h4 class="wow fadeInRight">See some of our satisfied
										clients over the world.</h4>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="clearfix"></div>
								<div class="row text-center padding-top40">
									<div id="client-carousel"
										class="client-carousel carousel slide">
										<div class="carousel-inner">
											<div class="item active">
												<div
													class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/01.png"></a>
													</div>
												</div>
												<div
													class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/02.png"></a>
													</div>
												</div>
												<div
													class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/03.png"></a>
													</div>
												</div>
												<div
													class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/04.png"></a>
													</div>
												</div>
											</div>
											<div class="item">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/04.png"></a>
													</div>
												</div>
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/03.png"></a>
													</div>
												</div>
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/02.png"></a>
													</div>
												</div>
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
													<div class="item-inner">
														<a href="#"><img alt="Upportdash"
															src="img/clientslogo/01.png"></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeInUp">
								<div class="clients-title">
									<h3 class="title">&nbsp;</h3>
									<div class="carousel-controls pull-right">
										<a class="prev" href="#client-carousel" data-slide="prev"><i
											class="fa fa-angle-left"></i></a> <a class="next"
											href="#client-carousel" data-slide="next"><i
											class="fa fa-angle-right"></i></a>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		/Our Clients </section>
 -->		
		<!-- /Main Section -->
		<!-- Footer -->

		<jsp:include page="${footer }"></jsp:include>
		<!-- Scroll To Top -->
		<a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
	</div>

	<!-- The Scripts -->
	<jsp:include page="${scripts_main }"></jsp:include>
	<%-- <%@ include file="web_components/scripts/scripts_main.jsp"%> --%>
	<!-- see  /web_components/script_components.jsp The Scripts -->
</body>
</html>