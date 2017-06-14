<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
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
                                    <h2 class="title">로그인</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재위치:</li>
                                            <li><a href="../index.jsp">메인</a></li>
                                            <li>로그인</li>
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
                           <!-- Login -->
                            <div class="featured-boxes login">
                                <!-- Login -->
                                <div class="col-md-6">
                                    <div class="featured-box featured-box-secundary default info-content">
                                        <h2 class="form-signin-heading">로그인</h2>
                                        <div class="box-content ">
                                            <form action="login.do"  id="siginin" method="post">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" value="" name="email" class="form-control" placeholder="이메일 주소">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="password" value="" name="pwd" class="form-control" placeholder="비밀번호">
                                                            <a class="pull-right" href="#">패스워드 찾기</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-9">
                                                        <span class="remember-box checkbox">
                                                        <label for="rememberme">
                                                        <input type="checkbox" id="rememberme" name="rememberme">아이디 저장
                                                        </label>
                                                        </span>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="submit" value="로그인" class="btn btn-color push-bottom" data-loading-text="Loading...">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Login -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Main Content -->
            </section>
            <!-- /Main Section -->
            <!-- Footer -->
  			<jsp:include page="${footer }"></jsp:include>
 
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->

        <!-- The Scripts -->
		<jsp:include page="${scripts_main }"></jsp:include>
</body>
</html>