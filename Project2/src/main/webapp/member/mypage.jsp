<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>          <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>          <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->  
<html> 
	<!--<![endif]-->
    <head>

        <meta charset="UTF-8">
        <title>My Page</title>
        <jsp:include page="${css_mypage }"></jsp:include>
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
                                            <li>마이페이지</li>
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
                                    <div class="team-member-holder">
                                        <div class="team-member-image">
                                            <img alt="" src="img/team/team-member-1.jpg">
                                            <div class="team-member-links">
                                                <div class="team-member-links-list">
                                                    <a target="_blank" class="facebook team-member-links-item" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" class="twitter team-member-links-item" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" class="linkedin team-member-links-item" href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
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
                                <!-- <button type="button" class="btn btn-success">Success</button> -->
                                <button class="btn btn-success" size="5" id="btn">자기소개 작성/수정</button>
                                <form action="#" method="post" id="toggle">
                                <div class="form-group">
								  <textarea class="form-control" rows="5" id="comment"></textarea>
								  <input type="submit" class="btn btn-success" value="입력">
								</div>
                                </form>
                                </c:if>
                                <c:if test="${sessionScope.check !=null }">
                                <p>
                                	${sessionScope.content }
                                	${email }
                                </p>
                                <ul class="list icons list-unstyled">
                                    <li><i class="fa fa-check"></i>성별</li>
                                    <li><i class="fa fa-check"></i>거주도시</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id quis nisl.</li>
                                    <li><i class="fa fa-check"></i> Iaculis vulputate id.</li>
                                </ul></c:if>
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
            <footer id="footer">
                <div class="pattern-overlay">
                    <!-- Footer Top Start -->
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
        <jsp:include page="${scripts_mypage }"></jsp:include>
    </body>
</html>