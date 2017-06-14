<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>          <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>          <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->  
<html> 
	<!--<![endif]-->
    <head>

        <meta charset="UTF-8">
        <title>My Page</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <jsp:include page="${css_mypage }"></jsp:include>
    <link href="css_add/dropzone.css" rel="stylesheet">
	<script src="js_add/dropzone.js"></script>
	<script type="text/javascript">
	
	function change(mode) {
			
        $.ajax({   
        	url: "mypageImageInsert.do?mode=" + mode, 
        	success: function(result){
           		$("#change").html(result);
           		Dropzone.discover();
        	}
        });
        
	}
		  window.onload = change(1);

</script> 
	
    </head>
    <body class="page">
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                	로딩중
            </div>
        </div>
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
                                    <h2 class="title">마이페이지</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재 위치</li>
                                            <li><a href="index.jsp">메인</a></li>
                                            <li>마이페이지 </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content -->
                <div class="content-about margin-top60">
                    <div class="container">
                        <div class="row">
                            <div class="posts-block col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="team-member">
                                    <div class="team-member-holder" id="change">
                                        <div class="team-member-image" >
                                        	<div class="team-member-links">
                                                <!-- <div class="team-member-links-list"> -->
                                                <c:choose>
					                                <c:when test="${sessionScope.pCheck==null }">
	                                                  <li><a href="javascript:change(1);">이미지 추가 </a></li>
	                                     				<input type="button" class="btn btn-success" value="입력 " href="javascript:change(1);">
	                                        			<input id="poster_copy" type="hidden" readonly>
	                                        		</c:when>
	                                        		<c:otherwise>
<%-- 	                                                  	<img src="${sessionScope.poster }">
 --%>	                                                  	<li><a href="javascript:change(2);">이미지 추가 </a></li>
	                                                  	<input type="button" class="btn btn-success" value="수정 " href="javascript:change(2);">
	                                        			<input id="poster_copy" type="hidden" readonly>
	                                        		</c:otherwise>
	                                        	</c:choose>   
                                        		<!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Left Section End -->
                            <!-- welcome Section Start -->
                            <div class="welcome col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <h2 class="shorter">${sessionScope.lastName } <span>${sessionScope.firstName }</span></h2>
                                <h4 class="color" >${sessionScope.email }</h4>  
                                <input type="hidden" name="email" value="abcd">
                                <div class="star-divider star-divider-small">
                                    <div class="star-divider-icon">
                                        <i class=" fa fa-star"></i>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.check==null }">
                                <p>
                                	자신을 소개하여 주세요 !
                                </p>
                                <ul class="list icons list-unstyled">
                                    <li><i class="fa fa-check"></i>성별</li>
                                    <li><i class="fa fa-check"></i>거주도시</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id quis nisl.</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id.</li>
                                </ul>
                                <button class="btn btn-info" size="5" id="btn" style="margin-bottom: 15px">자기소개 작성</button>
                                <form action="mypage-insert.do" method="post" id="toggle" name="content">
                                <div class="form-group">
								  <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
								  <input type="submit" class="btn btn-success" value="입력">
								</div>
                                </form>
                                </c:if>
                                <c:if test="${sessionScope.check !=null }">
                                <p>
                                	${sessionScope.content }
                                	${sessionScope.pCheck }
                                </p>
                                <ul class="list icons list-unstyled">
                                    <li><i class="fa fa-check"></i>성별</li>
                                    <li><i class="fa fa-check"></i>거주도시</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id quis nisl.</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id.</li>
                                </ul>
                                <button class="btn btn-info" size="5" id="btn" style="margin-bottom: 15px">자기소개 수정</button>
                                <form action="mypage-update.do" method="post" id="toggle" name="content">
                                <div class="form-group">
								  <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
								  <input type="submit" class="btn btn-success" value="입력">
								</div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Main Content -->
                <!-- Star -->
                <div class="star">
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="star-divider margin-topminus30">
                                    <div class="star-divider-icon">
                                        <i class=" fa fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Star -->
                <!-- Expertise -->
                <!-- <div class="expertise">
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="circular-knob">
                                    <input class="knob" data-linecap="round" data-fgColor="#0088CC" data-thickness=".2" value="85" data-readOnly="true" data-displayInput="false">
                                    <div class="circular-knob-content">
                                        <strong>사용처</strong>
                                        <label>85%</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="circular-knob">
                                    <input class="knob" data-linecap="round" data-fgColor="#59AB02" data-thickness=".2" value="75" data-readOnly="true" data-displayInput="false">
                                    <div class="circular-knob-content">
                                        <strong>생각해보기</strong>
                                        <label>75%</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="circular-knob">
                                    <input class="knob" data-linecap="round" data-fgColor="#FA6900" data-thickness=".2" value="60" data-readOnly="true" data-displayInput="false">
                                    <div class="circular-knob-content">
                                        <strong>없으면</strong>
                                        <label>60%</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="circular-knob">
                                    <input class="knob" data-linecap="round" data-fgColor="#008080" data-thickness=".2" value="80" data-readOnly="true" data-displayInput="false">
                                    <div class="circular-knob-content">
                                        <strong>주석</strong>
                                        <label>80%</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 --><!-- /Expertise -->
                <!-- Slogan Start-->
                <div class="slogan margin-top70 margin-bottom100">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="slogan-content">
                                    <div class="col-lg-9 col-md-9">
                                        <h2 class="slogan-title">게시물 모아보기</h2>
                                    </div>
                                    <div class="col-lg-3 col-md-3">
                                        <div class="get-started">
                                            <a class="btn-special btn-grey pull-right" href="board.do">게시판으로</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Slogan End-->     
                <!-- Portfolio Work -->
                <div class="portfolio">
                    <div class="container">
                        <div class="row">
                            <div class="portfolio-content">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="portfolio-title text-center">
                                        <h2>찜목록</h2>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-isotope portfolio-four-column">
                                    <div class="grid">
                                        <!-- item 1 -->
                                        <figure class="effect-zoe portfolio-border web jquery item">
                                            <a href="img/portfolio/01.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="http://tong.visitkorea.or.kr/cms/resource/64/2494464_image2_1.jpg" alt="img1"/></a>
                                            <figcaption>
                                                <h2>여수 야경불꽃크루즈 <span>2017</span></h2>
                                                <span><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=28&curr=5"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="http://tong.visitkorea.or.kr/cms/resource/64/2494464_image2_1.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>국내 최대 선상불꽃축제로 여수밤바다의 아름다운 야경과 함께 즐기는로맨틱 불꽃축제.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 1 -->
                                        <!-- item 2 -->
                                        <figure class="effect-zoe portfolio-border wp css item">
                                            <a href="img/portfolio/02.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="http://tong.visitkorea.or.kr/cms/resource/00/2041500_image2_1.jpg" alt="img2"/></a>
                                            <figcaption>
                                                <h2>서울대공원 장미원축제 <span>2017</span></h2>
                                                <span><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=48&curr=8"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="http://tong.visitkorea.or.kr/cms/resource/00/2041500_image2_1.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>	공연 후 관람자 중 희망 고객에 한해 무대에서 직접 격파 할 수 있는 격파체험 기회 제공 및 시범단과의 기념촬영 진행.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 2 -->
                                        <!-- item 3 -->
                                        <figure class="effect-zoe portfolio-border php jquery wp item">
                                            <a href="img/portfolio/03.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="http://tong.visitkorea.or.kr/cms/resource/82/2415882_image2_1.jpg" alt="img3"/></a>
                                            <figcaption>
                                                <h2>전주 문화재야행 <span>2017</span></h2>
                                                <span><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=51&curr=9"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="http://tong.visitkorea.or.kr/cms/resource/82/2415882_image2_1.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>전주의 대표적 문화유산과 콘텐츠를 담아내는 ‘전주야행’은 오래된 미래로 떠나는 문화여행이다. 거리마다 찬란한 밤을 품은 문화유산이 관광객들을 맞는다.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 3 -->
                                        <!-- item 4 -->
                                        <figure class="effect-zoe portfolio-border wp jquery css item">
                                            <a href="img/portfolio/04.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="http://tong.visitkorea.or.kr/cms/resource/76/2492076_image2_1.jpg" alt="img4"/></a>
                                            <figcaption>
                                                <h2>대전 수제맥주&뮤직페스티벌 <span>2017</span></h2>
                                                <span><a href="http://211.238.142.216:8080/TravelWebProject/content/content.jsp?page=75&curr=13"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="http://tong.visitkorea.or.kr/cms/resource/76/2492076_image2_1.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>수입맥주가 아닌 국내 수제맥주가 한자리에 모여 국내 수제맥주를 알고 즐길 수 있는 축제이다.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 4 -->
                                    </div>
                                    <!--end .grid-->                               
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Portfolio Work -->
                <!-- Star -->
                <div class="star">
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="star-divider">
                                    <div class="star-divider-icon">
                                        <i class=" fa fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Star -->  
                <!-- Our Clients -->
                <div class="our-clients margin-topminus30">
                    <div class="container">
                        <div class="row">
                            <div class="client">
                                <div class="client-logo">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="text-center">
                                            <h2>작성한 글</h2>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="clearfix"></div>
                                        <div class="row text-center padding-top40">
                                            <div id="client-carousel" class="client-carousel carousel slide">
                                                <div class="carousel-inner">
                                                    <div class="item active">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d1">
                                                            <div class="item-inner"><a href=""><img alt="Upportdash" src="https://arthurhovinc.files.wordpress.com/2015/04/roadtriplarge.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d2">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="http://tong.visitkorea.or.kr/cms/resource/79/2495979_image2_1.jpg"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d3">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/about-2.jpg"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d4">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="https://irp-cdn.multiscreensite.com/dd482778/dms3rep/multi/desktop/sundollar-pools-imgslider-4-1350x598.jpg"></a></div>
                                                        </div>
                                                    </div>
                                                    <div class="item">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Mercure_hotel_taksim.jpg/350px-Mercure_hotel_taksim.jpg"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="http://tong.visitkorea.or.kr/cms/resource/10/2495910_image2_1.jpg"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="http://tong.visitkorea.or.kr/cms/resource/55/2495155_image2_1.jpg"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="http://tong.visitkorea.or.kr/cms/resource/45/2495045_image2_1.jpg"></a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="clients-title">
                                            <h3 class="title">&nbsp;</h3>
                                            <div class="carousel-controls pull-right">
                                                <a class="prev" href="#client-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                                <a class="next" href="#client-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Our Clients -->  
            </section>
            <!-- /Main Section -->
            <!-- Footer Start -->
            <footer id="footer">
                <div class="pattern-overlay">
                    <!-- Footer Top Start -->
                    <div class="footer-top">
                        <div class="container">
                            <div class="row">
                                <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-one">
                                    <h3 class="light">TeamProject2</h3>
                                    <p> 
                                        airbnb를 참고하여 만든  숙소,여행,모임 공유를 하는 커뮤니티사이트입니다.  
                                    </p>
                                </section>
                                <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-two">
                                    <h3 class="light">사용 프로그램 및 조원</h3>
                                    <ul id="tweets">
                                    		조원 : 신명덕, 김경철, 김현나, 정우삼
                                    		Front Form : Bootstrap <br>
                                    		사용 프로그램 : STS , DataGrip
                                    		사용 언어 : Java,JavaScript,MySQL,Ajax
                                    </ul>
                                </section>
                                <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-three">
                                    <h3 class="light">쌍용 교육센터</h3>
                                    <ul class="contact-us">
                                        <li>
                                            <i class="fa fa-map-marker"></i>
                                            <p> 
                                                <strong class="contact-pad">Address:</strong> 서울특별시 마포구 백범로18(노고산동) 미화빌딩 2,3층 쌍용 강북교육센터
                                            </p>
                                        </li>
                                        <li>
                                            <i class="fa fa-phone"></i>
                                            <p><strong>Tel:</strong>02)336 - 8546 ~8</p>
                                        </li>
                                        <li>
                                            <i class="fa fa-envelope"></i>
                                            <p><strong>Fax:</strong><a href="mailto:support@fifothemes.com">02)224 - 5405</a></p>
                                        </li>
                                    </ul>
                                </section>
                                <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-four">
                                    <h3 class="light">수료 D-2</h3>
                                    <p>
                                        		고생하셨습니다.<br>
                                        		
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
                    <!-- Footer Top End --> 
                    <!-- Footer Bottom Start -->
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
                    <!-- Footer Bottom End --> 
                    <!-- /Footer Bottom --> 
                </div>
            </footer>
            <!-- Modal -->
            <section id="modals">
                <!-- Login Modal -->
                <div class="modal login fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="form-signin-heading modal-title" id="myModalLabel">Login</h2>
                            </div>
                            <form method="post" id="login">
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" id="username" name="username" type="text" placeholder="Username" value="" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <!-- <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="" required> -->
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <a href="password-recovery.html" class="pull-left">(Lost Password?)</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Logan Modal -->
                <!-- Registration Modal -->
                <div class="modal register fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h2 class="form-signin-heading modal-title" id="registrationModalLabel">Create a new account</h2>
                        </div>
                        <form method="post" id="registration">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="First Name">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="Last Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="text" value="" class="form-control" placeholder="E-mail Address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Re-enter Password">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Registration Modal -->
            </section>
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- Wrap End -->
        <jsp:include page="${scripts_mypage }"></jsp:include>
    </body>
</html>