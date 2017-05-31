<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="${css_components }"></jsp:include>

</head>
<body class="home">
     <div class="page-mask">
         <div class="page-loader">
             <div class="spinner"></div>
             로딩중
         </div>
     </div>
     <div class="wrap">
	 	<jsp:include page="${nav_bar }"></jsp:include>
         <!-- Main Section -->
         <section id="main">
             <div class="breadcrumb-wrapper">
                 <div class="pattern-overlay">
                     <div class="container">
                         <div class="row">
                             <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                 <h2 class="title">여행 호스팅 하기</h2>
                             </div>
                             <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                 <div class="breadcrumbs pull-right">
                                     <ul>
                                         <li>현재 위치:</li>
                                         <li><a href="main.do">메인</a></li>
                                         <li><a href="#">호스팅</a></li>
                                         <li>여행 호스팅</li>
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
                         <div class="sidebar col-lg-4 col-md-4 col-sm-4 col-xs-12">
                             <!-- Left nav Widget Start -->
                             <div class="widget category">
                                 <h3 class="title">여행 호스팅 하기</h3>
                                 <ul class="category-list slide">
                                     <li><a href="javascript:change(1);">1. 시작</a></li>
                                     <li><a href="javascript:change(2);">2. 언어</a></li>
                                     <li><a href="javascript:change(3);">3. 카테고리</a></li>
                                     <li><a href="javascript:change(4);">4. 기관 설명</a></li>
                                     <li><a href="javascript:change(5);">5. 여행 제목</a></li>
                                     <li><a href="javascript:change(6);">6. 태그 설정</a></li>
                                     <li><a href="javascript:change(7);">7. 포스터 이미지 추가</a></li>
                                     <li><a href="javascript:change(8);">8. 일정표 작성</a></li>
                                     <li><a href="javascript:change(9);">9. 제공 항목</a></li>
                                     <li><a href="javascript:change(10);">10. 관련 사진 추가</a></li>
                                     <li><a href="javascript:change(11);">11. 프로그램 소개</a></li>
                                     <li><a href="javascript:change(12);">12. 여행 장소 입력</a></li>
                                     <li><a href="javascript:change(13);">13. 주의사항</a></li>
                                     <li><a href="javascript:change(14);">14. 게스트 설정</a></li>
                                     <li><a href="javascript:change(15);">15. 요금 책정</a></li>
                                     <li><a href="javascript:change(16);">16. 제출</a></li>
                                 </ul>
                             </div>
                             <!-- Left nav Widget End -->
                        </div>
                         <!-- Sidebar End -->
                         <!-- Post Content -->
                        <div id="change">
                         
                        </div>
					<%-- 	<c:choose>
							<c:when test="${param.mode == null || param.mode == 1}">
								<jsp:include page="${new_trip_01}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 2}">
								<jsp:include page="${new_trip_02}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 3}">
								<jsp:include page="${new_trip_03}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 4}">
								<jsp:include page="${new_trip_04}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 5}">
								<jsp:include page="${new_trip_05}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 6}">
								<jsp:include page="${new_trip_06}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 7}">
								<jsp:include page="${new_trip_07}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 8}">
								<jsp:include page="${new_trip_08}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 9}">
								<jsp:include page="${new_trip_09}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 10}">
								<jsp:include page="${new_trip_10}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 11}">
								<jsp:include page="${new_trip_11}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 12}">
								<jsp:include page="${new_trip_12}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 13}">
								<jsp:include page="${new_trip_13}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 14}">
								<jsp:include page="${new_trip_14}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 15}">
								<jsp:include page="${new_trip_15}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 16}">
								<jsp:include page="${new_trip_16}"></jsp:include>
							</c:when>
							<c:when test="${param.mode == 17}">
								<jsp:include page="${fin_trip}"></jsp:include>
							</c:when>
						</c:choose>
                          --%>
<!--                          <div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
                             <article class="post hentry">
                                 <div class="post-image">
                                     <a href="img/road-trip-las-vegas-to-nevada.jpg" data-rel="prettyPhoto">
                                     <span class="img-hover"></span>
                                     <span class="fullscreen"><i class="fa fa-plus"></i></span>
                                     <img src="img/road-trip-las-vegas-to-nevada.jpg" alt="">
                                     </a>
                                 </div>
                                 <div class="post-content">
                                     <p>
                                        	트립 호스트가 될 준비가 되셨나요?
                                     </p>
                                     <p>
                                         	원하는 트립을 디자인 해보세요. 
                                     </p>
                                     <p>
                                         	회원님의 트립이 기준에 만족하면 게시글이 등록됩니다.
                                     </p>
                                 </div>
                             </article>
                         </div> -->
                         <!-- /Post Content -->
                     </div>
                 </div>
             </div>
             <!-- /Main Content -->
         </section>
         <!-- /Main Section -->
         <!-- Footer  -->
         <footer id="footer">
             <div class="pattern-overlay">
                 <!-- Footer Top  -->
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
<jsp:include page="${scripts_main }"></jsp:include>
<script type="text/javascript">
	function change(mode) {
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange =
            function(){
                if(this.readyState == 4 && this.status == 200){
					document.getElementById("change").innerHTML = this.responseText;
                }
            };
        xhttp.open(
        		"GET", 
        		"trip_content.do?mode=" + mode, 
        		false
        );
        xhttp.send(); 
    };
    window.onload = change(1);
</script>	
</body>
</html>