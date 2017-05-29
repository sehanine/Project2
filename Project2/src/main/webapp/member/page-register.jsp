<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<jsp:include page="${css_components }"></jsp:include>
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
            <!-- Header -->
			<jsp:include page="${nav_bar }"></jsp:include>
            <!-- /Header -->  
            <!-- Main Section -->
            <section id="main">
                <!-- Title, Breadcrumb -->
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">회원가입</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재위치:</li>
                                            <li><a href="../index.jsp">메인</a></li>
                                            <li>회원가입</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                                <!-- Registration -->
                                <div class="col-md-6">
                                    <div class="featured-box featured-box-secundary default info-content">
                                        <h2 class="form-signin-heading">회원가입</h2>
                                        <div class="box-content">
                                            <form action="memberJoin.do" id="signup" method="post">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <input type="text" value="" name="lastName" class="form-control" placeholder="성">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <input type="text" value="" name="firstName" class="form-control" placeholder="이름">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" value="" name="email" class="form-control" placeholder="이메일 주소">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <input type="password" value="" name="pwd1" class="form-control" placeholder="비밀번호">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <input type="password" value="" name="pwd2"  class="form-control" placeholder="재입력">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 pull-right">
                                                        <input type="submit" value="회원가입" class="btn btn-color push-bottom" data-loading-text="로딩중">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Registration -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Main Content -->
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
                    <!-- /Footer Bottom --> 
                </div>
            </footer>
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
		<jsp:include page="${scripts_main }"></jsp:include>
</body>
</html>