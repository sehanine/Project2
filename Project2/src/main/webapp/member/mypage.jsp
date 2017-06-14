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
                                	${sessionScope.content }
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
                <div class="expertise">
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
                <!-- /Expertise -->
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
                                            <a class="btn-special btn-grey pull-right" href="#">BUY NOW</a>
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
                                            <a href="img/portfolio/01.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="img/portfolio/01.jpg" alt="img1"/></a>
                                            <figcaption>
                                                <h2>Creative <span>Zoe</span></h2>
                                                <span><a href="portfolio-single.html"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="img/portfolio/01.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 1 -->
                                        <!-- item 2 -->
                                        <figure class="effect-zoe portfolio-border wp css item">
                                            <a href="img/portfolio/02.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="img/portfolio/02.jpg" alt="img2"/></a>
                                            <figcaption>
                                                <h2>Marchant <span>Mogul</span></h2>
                                                <span><a href="portfolio-single.html"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="img/portfolio/02.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 2 -->
                                        <!-- item 3 -->
                                        <figure class="effect-zoe portfolio-border php jquery wp item">
                                            <a href="img/portfolio/03.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="img/portfolio/03.jpg" alt="img3"/></a>
                                            <figcaption>
                                                <h2>Pedaling <span>Tavern</span></h2>
                                                <span><a href="portfolio-single.html"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="img/portfolio/03.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                            </figcaption>
                                        </figure>
                                        <!-- /item 3 -->
                                        <!-- item 4 -->
                                        <figure class="effect-zoe portfolio-border wp jquery css item">
                                            <a href="img/portfolio/04.jpg" class="portfolio-item-link" data-rel="prettyPhoto" ><img src="img/portfolio/04.jpg" alt="img4"/></a>
                                            <figcaption>
                                                <h2>Create <span>Smart</span></h2>
                                                <span><a href="portfolio-single.html"><i class="fa fa-share"></i></a></span>                  
                                                <span><a href="img/portfolio/04.jpg" class="portfolio-item-link" data-rel="prettyPhoto"><i class="fa fa-paperclip"></i></a></span>
                                                <span><a href="#"><i class="fa fa-heart"></i></a></span>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
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
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/01.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d2">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/02.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d3">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/03.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d4">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/04.png"></a></div>
                                                        </div>
                                                    </div>
                                                    <div class="item">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/04.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/03.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/02.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/01.png"></a></div>
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
			<jsp:include page="${footer }"></jsp:include>
 
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- Wrap End -->
        <jsp:include page="${scripts_mypage }"></jsp:include>
    </body>
</html>