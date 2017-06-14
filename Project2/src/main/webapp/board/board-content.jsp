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
				<img alt="image" src="${vo.filename }">
					<pre>${vo.content }</pre>
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