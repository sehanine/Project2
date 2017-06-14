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
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
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
                        <div class="row">
                        	임의로 남겨둔 박스
                        </div>
                        <!-- 4 Column Pricing Table -->
                        <div class="row">
                            <div class="col-sm-3 col-md-3">
                                <div class="pricing_plan bottom-pad-small wow fadeInUp">
                                    <h3>Lite<strong>Plan</strong> <small>this is where you start</small></h3>
                                    <div class="the_price"><span>$</span>150<small>/year</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
                                    </div>
                                    <a href="#" class="btn btn-color">Get it Now!</a> 
                                </div>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <div class="pricing_plan bottom-pad-small special wow fadeInUp">
                                    <h3>Medium<strong>Plan</strong> <small>this is what you should choose</small></h3>
                                    <div class="the_price"><span>$</span>250<small>/year</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
                                    </div>
                                    <a href="#" class="btn btn-color">Get it Now!</a> 
                                </div>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <div class="pricing_plan bottom-pad-small wow fadeInUp">
                                    <h3>Pro<strong>Plan</strong> <small>this is what you really need</small></h3>
                                    <div class="the_price"><span>$</span>350<small>/year</small></div>
                                    <div class="the_offerings">
                                        <p> <strong>1</strong> Design Template </p>
                                        <p> <strong>2</strong> Revisions </p>
                                        <p> <strong>5</strong> HTML Pages </p>
                                    </div>
                                    <a href="#" class="btn btn-color">Get it Now!</a> 
                                </div>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <div class="pricing_plan wow fadeInUp">
                                    <h3>Pro<strong>Plan</strong> <small>this is what you really need</small></h3>
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
                        <!-- /4 Column Pricing Table -->
                    </div>
                </div>
                <!-- /Main Content -->
            </section>
            <!-- Main Section -->
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
            <!-- Footer -->
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
                                                <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="" required>
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
                <!-- /Login Modal -->
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
            <!-- /Modal -->
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->
        <!-- The Scripts -->
		<jsp:include page="${scripts_blog }"></jsp:include>
    </body>