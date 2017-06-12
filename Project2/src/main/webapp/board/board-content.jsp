<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<!--    <script src="/resources/bootstrap/js/respond.js"></script>
        <script src="/resources/bootstrap/js/jquery.number.min.js"></script>
        <script src="/resources/bootstrap/js/jssor.slider.mini.js"></script> -->
<!-- css import see /web_contents/css_components.jsp -->
	<jsp:include page="${css_blog }"></jsp:include>
<!-- css import see /web_contents/css_components.jsp -->
</head>
<body>
    <body class="blog">
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
                                    <h2 class="title">게시글 내용보기</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재 위치</li>
                                            <li><a href="../index.jsp">메인</a></li>
                                            <li><a href="#">게시판</a></li>
                                            <li>상세 보기</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
        <!-- Main Content(BoardList) -->
        <p><p><p>
		<center>
		<table class="table table-bordered" width="700" style="width: 50%">
			<tr>
				<th width="20%">번호</th>
				<td width="30%" align="center">${vo.no }</td>
				<th width="20%">작성일</th>
				<td width="30%" align="center">
					<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
				</td>				
			</tr>
			<tr>
				<th width="20%">이름</th>
				<td width="30%" align="center">${vo.name }</td>
				<th width="20%">조회수</th>
				<td width="30%" align="center">${vo.hit }</td>				
			</tr>
			<tr>
				<th width="20%">제목</th>
				<td colspan="3">${vo.subject }</td>
			</tr>
			
			<c:if test="${vo.filecount !=0 }">
			 <tr>
			 	<th width="20%">첨부파일</th>
			 	<td colspan="3" align="left">
			 		<c:forEach var="fname" items="${vo.nameList }">
			 			<a href="download.do?fn=${fname }">${fname }</a>&nbsp;
			 		</c:forEach>
			 	</td>
			 </tr>	
			</c:if>
			
			<tr>
				<td colspan="4" valign="top" align="left" height="200">
					${vo.content }
				</td>
			</tr>
											
		</table>
		
		<table id="table_content" width="700">
			<tr>
				<td align="right">
					<a href="board-update.do?no=${vo.no }"><input type="button" class="btn btn-success" value="수정"></a>&nbsp;
					<a href="board-delete.do?no=${vo.no }"><input type="button" class="btn btn-success" value="삭제"></a>&nbsp;
					<a href="board.do"><input type="button" class="btn btn-success" value="목록"></a>&nbsp;
					<p><p><p><p>
				</td>
			</tr>
		</table>
	</center>
	<!-- Main Content End -->
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
	<jsp:include page="${scripts_blog }"></jsp:include>
</body>
</html>