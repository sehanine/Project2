<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글 쓰기</title>
	<jsp:include page="${css_components }"></jsp:include>
</head>
    <body class="home">
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                로딩중
            </div>
        </div>
        <!-- wrap -->
        <div class="wrap">
            <!-- Header -->
            <jsp:include page="${nav_bar }"></jsp:include>
            <!-- /Header --> 
            <!-- Main Section -->
            <section id="main">
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">새글</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재위치</li>
                                            <li><a href="main.do">메인</a></li>
                                            <li><a href="new_post.do">새글</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content -->
                <div class="content margin-bottom60 margin-top60">
                    <div class="container">
                        <!-- Three Column Pricing Table -->
                        <div class="row">
                            <div class="col-sm-4 col-md-4">
                                <div class="pricing_plan bottom-pad-small wow fadeInUp">
                                    <h3>숙소<strong> 소개하기</strong> <small>나만의 숙소를 소개해 보세요</small></h3>
                                    <div class="the_price"><span>$</span>150<small>/박</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> 대물 보험 지원</p>
                                        <p> <strong>2</strong> 화재 보험 지원 </p>
                                        <p> <strong>3</strong> 사망 보험 지원</p>
                                    </div>
                                    <a href="#" class="btn btn-color">소개하기</a> 
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <div class="pricing_plan bottom-pad-small special wow fadeInUp">
                                    <h3>여행 <strong> 소개하기</strong> <small>새로운 여행을 공유해 보세요</small></h3>
                                    <div class="the_price"><span>$</span>250<small>/year</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
                                    </div>
                                    <a href="new_trip.do" class="btn btn-color">글쓰기</a> 
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <div class="pricing_plan wow fadeInUp">
                                    <h3>모임<strong> 만들기</strong> <small>모임을 만들어 새로운 사람을 만나보세요</small></h3>
                                    <div class="the_price"><span>$</span>350<small>/year</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
                                    </div>
                                    <a href="#" class="btn btn-color">Get it Now!</a> 
                                </div>
                            </div>
                        </div>
                        <!-- /Three Column Pricing Table -->
                        <!-- Star-->
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
                        <!-- Star --> 
  
                        <!-- /4 Column Pricing Table -->
                    </div>
                </div>
                <!-- /Main Content -->
            </section>
            <!-- Main Section -->
            <!-- Footer -->
 			<jsp:include page="${footer }"></jsp:include>
            <!-- Footer -->

            <!-- /Modal -->
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->
        <!-- The Scripts -->
		<jsp:include page="${scripts_blog }"></jsp:include>
    </body>