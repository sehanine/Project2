<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header">
<!--  if(isLogin()){
			회원가입/ 로그인
		}
 -->
	<!-- Header Top Bar -->
	<div class="top-bar">
		<div class="slidedown collapse">
			<div class="container">
				<div class="pull-left">
					<ul class="social pull-left">
						<li class="accomodation"><a href="accomodation.do"><i class="fa fa-bed"></i><br />숙소</a></li>
						<li class="trip"><a href="trip.do"><i class="fa fa-plane"></i><br />여행</a></li>
						<li class="meet-up"><a href="meet-up.do"><i class="fa fa-users"></i><br />모임</a></li>
						<!-- 2017-05-15 주석처리 신명덕 헤더 네비게이터 바 
                                    <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="rss"><a href="#"><i class="fa fa-rss"></i></a></li>
                                     -->
					</ul>
				</div>
			
			
					<c:if test="${sessionScope.email==null }">
						<div class="phone-login pull-right">
							<a href="page-register.do"><i class="fa fa-user-plus"></i>회원가입</a>
							<a href="page-login.do"><i class="fa fa-sign-in"></i>로그인</a>
						</div>
					</c:if>
					<c:if test="${sessionScope.email!=null }">
						<div class="phone-login pull-right">
							${sessionScope.email }님! 안녕하세요.&nbsp;&nbsp;
							<a href="new_post.do"><i class="fa fa-file-text-o"> 글쓰기</i></a>
							<a href="mypage.do"><i class="fa fa-user"></i>마이페이지</a>
							<a href="logout.do"><i class="fa fa-sign-out"></i>로그아웃</a>

						</div>
					</c:if>
			</div>
		</div>
	</div>
		<!-- else{
			마이페이지/로그아웃
		}
		 -->
	<!-- /Header Top Bar -->
	<!-- Main Header -->
	<div class="main-header">
		<div class="container">
			<!-- TopNav -->
			<div class="topnav navbar-header">
				<a class="navbar-toggle down-button" data-toggle="collapse" data-target=".slidedown"> 
					<i class="fa fa-angle-down icon-current"></i>
				</a>
			</div>
			<!-- /TopNav-->
			<!-- Logo -->
			<div class="logo pull-left">
				<h1>
					<a href="index.jsp"> <img class="logo-color"
						src="img/logos/logo_green.png" alt="gallaxy" width="160"
						height="60">
					</a>
				</h1>
			</div>
			<!-- /Logo -->
			<!-- Mobile Menu -->
			<div class="mobile navbar-header">
				<a class="navbar-toggle" data-toggle="collapse"
					href=".navbar-collapse"> <i class="fa fa-bars fa-2x"></i>
				</a>
			</div>
			<!-- /Mobile Menu -->
			<!-- Menu Start -->
			<nav class="collapse navbar-collapse menu">
				<ul class="nav navbar-nav sf-menu">
					<li><a id="current" href="accomodation.do"> 숙소 <span
							class="sf-sub-indicator"> <i class="fa fa-angle-down "></i>
						</span>
					</a>
						<ul>
							<li><a href="index.html" class="sf-with-ul">숙소 모아보기</a></li>
							<li><a href="index-2.html" class="sf-with-ul">추천 숙소 보기</a></li>
						</ul></li>
					<li>
						<a href="trip.do" class="sf-with-ul"> 여행 
							<span class="sf-sub-indicator"> 
								<i class="fa fa-angle-down "></i>
							</span>
						</a>
						<ul>
							<li><a href="shortcodes.html" class="sf-with-ul">여행 모아보기</a></li>
							<li><a href="components.html" class="sf-with-ul">추천 여행 보기</a></li>
						</ul>
					</li>
					<li>
						<a href="meet-up.do" class="sf-with-ul"> 모임 
							<span class="sf-sub-indicator">
								<i class="fa fa-angle-down "></i>
							</span>
						</a>
						<ul>
							<li><a href="shortcodes.html" class="sf-with-ul">모임 모아보기</a></li>
							<li><a href="components.html" class="sf-with-ul">추천 모임 보기</a></li>
						</ul>
					</li>
					<li>
						<a href="single-post.do" class="sf-with-ul"> 블로그 
							<span class="sf-sub-indicator"> 
								<i class="fa fa-angle-down "></i>
							</span>
						</a>
						<ul>
							<li><a href="single-post.do" class="sf-with-ul">블로그1</a></li>
							<li><a href="components.html" class="sf-with-ul">블로그2</a></li>
						</ul>
					</li>
					<li><a href="board.do" class="sf-with-ul"> 게시판 <span
							class="sf-sub-indicator"> <i class="fa fa-angle-down "></i>
						</span>
					</a>
						<ul>
							<li><a href="portfolio-two.html" class="sf-with-ul">2
									Column</a></li>
							<li><a href="portfolio-three.html" class="sf-with-ul">3
									Column</a></li>
							<li><a href="portfolio-four.html" class="sf-with-ul">4
									Column</a></li>
							<li><a href="portfolio-full-width.html" class="sf-with-ul">Full
									Width</a></li>
							<li><a href="portfolio-single.html" class="sf-with-ul">Single
									Item Page</a></li>
							<li><a href="portfolio-single-big.html" class="sf-with-ul">Single
									Large Item Page</a></li>
						</ul></li>
					<li><a href="#" class="sf-with-ul"> 블로그2 <span
							class="sf-sub-indicator"> <i class="fa fa-angle-down "></i>
						</span>
					</a>
						<ul>
							<li><a href="blog-left-sidebar.html" class="sf-with-ul">Left
									Sidebar Blog</a></li>
							<li><a href="blog-right-sidebar.html" class="sf-with-ul">Right
									Sidebar Blog</a></li>
							<li><a href="blog-full-width.html" class="sf-with-ul">Blog
									Full Width</a></li>
							<li><a href="single-post.html" class="sf-with-ul">Single
									Post</a></li>
						</ul></li>
					<li><a href="#"> 기타2 <span class="sf-sub-indicator">
								<i class="fa fa-angle-down"></i>
						</span>
					</a>
						<ul>
							<li><a href="new_trip.do" class="sf-with-ul">새글</a></li>
							<li><a href="contact-2.html" class="sf-with-ul">Contact
									Option</a></li>
							<li><a href="contact-3.html" class="sf-with-ul">Contact
									Option 2</a></li>
						</ul></li>
				</ul>
			</nav>
			<!-- /Menu -->
		</div>
	</div>
	<!-- /Main Header -->
</header>
