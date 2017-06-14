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
                                    <h2 class="title">게시글 삭제</h2>
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
		<form action="delete_ok.do" method="post">
			<table width="350">
				<tr>
					<td align="left">
					비밀번호 : <input type="password" class="form-control" size="12" name="pwd">
						<input type="hidden" name="no" value="${no }">
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="submit" class="btn btn-success" value="삭제">
						<input type="button" class="btn btn-success" value="취소" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
	</center>
	<p><p><p><p><p><p><p><p><p><p><p><p><p><p><p><p>
	<!-- Main Content End -->
            <!-- Footer -->
			<jsp:include page="${footer }"></jsp:include>
            <!-- /Footer --> 

            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->

        <!-- The Scripts -->
	<jsp:include page="${scripts_blog }"></jsp:include>
</body>
</html>