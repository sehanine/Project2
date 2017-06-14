<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>모임</title>
<!-- css import see /web_contents/css_components.jsp -->
<jsp:include page="${css_components }"></jsp:include>
<!-- css import see /web_contents/css_components.jsp -->
</head>
<body class="page">
    <div class="page-mask">
        <div class="page-loader">
            <div class="spinner"></div>
            	로딩중
        </div>
    </div>
    <!-- Wrap -->
    <div class="wrap">
        <!-- Header -->
     	<!-- 네이게이션 오브젝트 불러오기 -->
		<jsp:include page="${nav_bar }"></jsp:include>
		<!-- 네이게이션 오브젝트 불러오기 --> 
        <!-- /Header --> 
        <!-- Main Section -->
        <section id="main">
            <div class="breadcrumb-wrapper">
                <div class="pattern-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                <h2 class="title">축제정보</h2>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                <div class="breadcrumbs pull-right">
                                    <ul>
                                        <li>현재 위치:</li>
                                        <li><a href="../index.jsp">메인</a></li>
                                        <li><a href="#">축제정보</a></li>
                                        <!-- 모아보기 추천보기 조건 넣을것! -->
                                        <li>모아보기</li> <!-- 모아보기 추천보기 조건 넣을것! -->
                                        <!-- 모아보기 추천보기 조건 넣을것! -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Main Content -->
            <div class="content margin-top60 margin-bottom60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="display">
                                <span><b>Display:</b></span>
                                <a class="active btn-small btn-color btn-pad"><i class="fa fa-th"></i></a>
                                <a class="list btn-small btn-pad" onclick="display(&#39;list&#39;);"><i class="fa fa-th-list"></i></a>
                            </div>                                       
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
                            <div class="input-group">
                                <input type="text" value="모임 찾기" onfocus="if(this.value=='Search Products')this.value='';" onblur="if(this.value=='')this.value='Search Products';" class="search-input form-control product-search-height">
                                <span class="input-group-btn">
                                <button type="submit" class="subscribe-btn btn product-search-height"><i class="fa fa-search"></i></button>
                                </span>
                            </div>  
                            <!-- /Product Search  -->
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-grid">
                                <div class="products-block">
                                    <div class="row product-items">
                                        <!-- Product Items1 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=1&curr=1" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/79/2495979_image2_1.jpg"  class="front">
                                                        </a>
                                                    </div>
                                                    <!-- /Swap image -->
                                                   
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=1&curr=1">인생꿀나잇 디저트 페스티벌 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">서울특별시 은평구 통일로 684 (녹번동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items1 -->
                                        <!-- Product Items2 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=2&curr=1" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/82/2495282_image2_1.JPG"  class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=2&curr=1">실향민 문화축제 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">강원도 속초시 청호동 일원</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items2 -->
                                        <!-- Product Items3 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=3&curr=1" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/49/2495949_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=3&curr=1">사회적경제 주간기념 사회적경제 박람회 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">서울특별시 중구 세종대로 110 (태평로1가)  </span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items3 -->
                                        <!-- Product Items4 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=4&curr=1" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/10/2495910_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=4&curr=1">휴애리 수국축제 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">제주특별자치도 서귀포시 남원읍 신례동로 256</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items4 -->
                                    </div>
                                    <div class="row product-items">
                                        <!-- Product Items5 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/68/2492268_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=5&curr=1">대구국제뮤지컬페스티벌 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">대구광역시 북구 호암로 51 (침산동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items5 -->
                                        <!-- Product Items6 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=6&curr=1" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/35/2495735_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=6&curr=1">페트 드 라 뮈지끄-프랑스 거리음악축제 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">서울특별시 서대문구 연세로 (창천동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items6 -->
                                        <!-- Product Items7 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/64/2384064_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=7&curr=2">호수별빛축제</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">강원도 춘천시 수변공원길 54 (삼천동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items7 -->
                                        <!-- Product Items8 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/10/2384710_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                     <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=8&curr=2">리복 스파르탄 레이스 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">강원도 횡성군 둔내면 고원로 451</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items8 -->
                                        <!-- /Product Items9 -->
                                    </div>
                                    <div class="row product-items last">
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=9&curr=2" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/65/2494365_image2_1.JPG" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=9&curr=2">춘천연극제 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">강원도 춘천시 서부대성로 71 (옥천동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items9 -->
                                        <!-- Product Items10 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=10&curr=2" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/25/2495325_image2_1.png" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=10&curr=2">국립무형유산원 토요상설공연 팔도무형유람 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">전라북도 전주시 완산구 서학로 95 (동서학동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items10 -->
                                        <!-- Product Items11 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=11&curr=2" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/98/2491598_image2_1.JPG" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=11&curr=2">봉황대 뮤직스퀘어 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">경상북도 경주시 노동동 261번지 </span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items11 -->
                                        <!-- Product Items12 -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=12&curr=2" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/55/2495155_image2_1.jpg" class="front">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=12&curr=2">새연교 시민콘서트 제2장 (한여름밤의 꿈) 2017</a></h3>
                                                        
                                                    </div>
                                                    <div class="right">
                                                         	<div class="price"><span class="price-new">제주특별자치도 서귀포시 남성중로 40 (서홍동)</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="pagination-centered padding-bottom30">
                            <ul class="pagination">
                                <li class="active"><a href="#">1</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main Section -->
        <!-- Footer -->
        <footer id="footer">
            <div class="pattern-overlay">
                <!-- Footer Top -->
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-one">
                                <h3 class="light">About</h3>
                                <p> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. 
                                </p>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-two">
                                <h3 class="light">Twitter Stream</h3>
                                <ul id="tweets">
                                </ul>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-three">
                                <h3 class="light">Contact Us</h3>
                                <ul class="contact-us">
                                    <li>
                                        <i class="fa fa-map-marker"></i>
                                        <p> 
                                            <strong class="contact-pad">Address:</strong> House: 325, Road: 2,<br> Mirpur DOHS <br>
                                            Dhaka, Bangladesh 
                                        </p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone"></i>
                                        <p><strong>Phone:</strong> +880 111-111-111</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        <p><strong>Email:</strong><a href="mailto:support@fifothemes.com">support@fifothemes.com</a></p>
                                    </li>
                                </ul>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-four">
                                <h3 class="light">Subscribe</h3>
                                <p>
                                    Subscribe to our email newsletter to receive our news, updates and awesome free files.
                                </p>
                                <form method="get" action="#">
                                    <div class="input-group">
                                        <input type="text" value="mail@example.com" onfocus="if(this.value=='mail@example.com')this.value='';" onblur="if(this.value=='')this.value='mail@example.com';" class="subscribe form-control">
                                        <span class="input-group-btn">
                                        <button class="btn subscribe-btn" type="button">Join</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form>
                            </section>
                        </div>
                    </div>
                </div>
                <!-- /Footer Top --> 
                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                                <p class="credits">&copy; Copyright 2014 by <a href="#">FIFOLAB</a>. All Rights Reserved. </p>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                                <ul class="social social-icons-footer-bottom">
                                    <li class="facebook"><a href="#" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="#" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li class="dribbble"><a href="#" data-toggle="tooltip" title="Dribble"><i class="fa fa-dribbble"></i></a></li>
                                    <li class="linkedin"><a href="#" data-toggle="tooltip" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="rss"><a href="#" data-toggle="tooltip" title="Rss"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Footer Bottom --> 
            </div>
        </footer>
        <!-- /Footer -->

        <!-- Scroll To Top --> 
        <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
    </div>
    <!-- /Wrap -->
    <!-- Style Switcher -->
    <section id="style-switcher">
        <h2>Style Switcher <a href="#"><i class="fa fa-cogs"></i></a></h2>
        <div>
            <h3>Predefined Colors</h3>
            <ul class="colors">
                <li><a title="Green" class="green" href="#"></a></li>
                <li><a title="Blue" class="blue" href="#"></a></li>
                <li><a title="Orange" class="orange" href="#"></a></li>
                <li><a title="Purple" class="purple" href="#"></a></li>
                <li><a title="Red" class="red" href="#"></a></li>
                <li><a title="Magenta" class="magenta" href="#"></a></li>
                <li><a title="Brown" class="brown" href="#"></a></li>
                <li><a title="Gray" class="gray" href="#"></a></li>
                <li><a title="Golden" class="golden" href="#"></a></li>
                <li><a title="Teal" class="teal" href="#"></a></li>
            </ul>
            <h3>Layout Style</h3>
            <div class="layout-style">
                <select id="layout-style">
                    <option value="1">Wide</option>
                    <option value="2">Boxed</option>
                </select>
            </div>
            <h3>Header Color</h3>
            <div class="header-color">
                <input type='text' class="header-bg" />
            </div>
            <h3>Footer Top Color</h3>
            <div class="header-color">
                <input type='text' class="footer-bg" />
            </div>
            <h3>Footer Bottom Color</h3>
            <div class="header-color">
                <input type='text' class="footer-bottom" />
            </div>
            <h3>Background Image</h3>
            <ul id="bg" class="colors bg">
                <li><a class="bg1" href="#"></a></li>
                <li><a class="bg2" href="#"></a></li>
                <li><a class="bg3" href="#"></a></li>
                <li><a class="bg4" href="#"></a></li>
                <li><a class="bg5" href="#"></a></li>
                <li><a class="bg6" href="#"></a></li>
                <li><a class="bg7" href="#"></a></li>
                <li><a class="bg8" href="#"></a></li>
                <li><a class="bg9" href="#"></a></li>
                <li><a class="bg10" href="#"></a></li>
            </ul>
        </div>
    </section>
    <!-- /Style Switcher -->
    <!-- The Scripts -->
	<jsp:include page="${scripts_categories }"></jsp:include>
</body>
</html>