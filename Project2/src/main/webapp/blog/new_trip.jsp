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
<link href="css_add/dropzone.css" rel="stylesheet">
<script src="js_add/dropzone.js"></script>
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
                                     <input id="lang_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(3);">3. 카테고리</a></li>
                                     <!-- 작업중 -->
                                     <input id="cate_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(4);">4. 기관 설명</a></li>
                                     <input id="org_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(5);">5. 여행 제목</a></li>
                                     <input id="title_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(6);">6. 태그 설정</a></li>
                                     <input id="hash_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(7);">7. 포스터 이미지 추가</a></li>
                                     <input id="poster_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(8);">8. 일정표 작성</a></li>
                                     <input id="itinerary_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(9);">9. 제공 항목</a></li>
                                     <input id="host_serve_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(10);">10. 관련 사진 추가</a></li>
                                     <input id="trip_pictures_copy" type="hidden" readonly> 
                                     <li><a href="javascript:change(11);">11. 프로그램 소개</a></li>
                                     <input id="about_program_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(12);">12. 여행 장소 입력</a></li>
                                     <input id="addr_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(13);">13. 주의사항</a></li>
                                     <input id="cautions_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(14);">14. 게스트 설정</a></li>
                                     <input id="participants_copy" type="hidden" readonly>
                                     <li><a href="javascript:change(15);">15. 요금 책정</a></li>
                                     <input id="cost_copy" type="hidden" readonly>
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
		<jsp:include page="${footer }"></jsp:include>
         <!-- /Footer --> 
         <!-- Scroll To Top --> 
         <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
     </div>
<jsp:include page="${scripts_main }"></jsp:include>
<script type="text/javascript">
	
	function change(mode) {
		
        $.ajax({   
        	url: "trip_content.do?mode=" + mode, 
        	success: function(result){
           		$("#change").html(result);
           		Dropzone.discover();
        	}
        });
        
	}
	window.onload = change(1);
    
    //$('html').keyup(function(e){if(e.keyCode == 8)alert('backspace trapped')})
		
</script>	
</body>
</html>