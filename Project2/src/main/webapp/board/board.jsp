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
                                    <h2 class="title">자유 게시판</h2>
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
        <p>
        <p>
        <p>
		<center>
		<table  width="700" class="table table-hover" style="width: 70% ">
			<tr>
				<th width="10%" bgcolor="#f1f8e9">번호</th>
				<th width="45%" bgcolor="#f1f8e9">제목</th>
				<th width="15%" bgcolor="#f1f8e9">이름</th>
				<th width="20%" bgcolor="#f1f8e9">작성일</th>
				<th width="10%" bgcolor="#f1f8e9">조회수</th>
			</tr>
			
			<!-- model.addAttribute("list", list); -->
			<c:forEach var="vo" items="${list }">
				<tr id="dataTr">
					<td width="10%" align="center">${vo.no }</td> 
					<td width="45%" align="left">
						<a href="board-content.do?no=${vo.no }">${vo.subject }</a>
					</td> 
					<td width="15%" align="center">${vo.name }</td>
					<td width="20%" align="center">
						<fmt:formatDate value="${vo.regdate }"
							pattern="yyyy-MM-dd"
						/>
					</td>
					<td width="10%" align="center">${vo.hit }</td>
				</tr>		
			</c:forEach>
		</table>
	
		<table border="0" width="700">
			<tr>
				<td align="right">
				 <div class="form-group" style="">
                     <ul class="pagination">
                     	<li class="pagination"><a href="board.do?page=${curpage>1 ? curpage-1:curpage }"><</a></li>
                     		<c:forEach begin="${start }" end="${totalpage }" step="1" var="i">
                     			<c:if test=""></c:if>
							<li class="pagination"><a href="board.do?page=${i }">${i }</a></li>
							</c:forEach>
                     	<li class="pagination"><a href="board.do?page=${curpage<totalpage ? curpage+1:curpage }">></a></li>
                     	 &nbsp;&nbsp;&nbsp;<a href="board-insert.do"><input type="button" class="btn btn-success" value="글쓰기"></a>
                     </ul>
                  </div>
					<!-- model.addAttribute("curpage", curpage) 이전 페이지-->
					<!-- model.addAttribute("totalpage", totalpage); -->
		
			<%-- 		${curpage } page / ${totalpage } pages --%>
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