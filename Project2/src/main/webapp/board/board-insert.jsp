<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
var fileIndex=0;
$(function(){
	$('#addBtn').click(function(){
		$('.fileView').append(
			'<tr id=f'+fileIndex+'>'
			+'<td width=20%>파일'+(fileIndex+1)+"</td>"
			+'<td width=80% align=left>'
			+'<input type=file name=files['+fileIndex+'] size=30>'
			+'</td></tr>'
		);
		fileIndex=fileIndex+1;
	});
	$('#removeBtn').click(function(){
		$('#f'+(fileIndex-1)).remove();
		fileIndex=fileIndex-1;
	});
});

	function send() {
		var f = document.frm
		if (f.name.value == "") {
			alert("로그인을 하세요.");
			f.name.focus();
			return;
		}
		if (f.subject.value == "") {
			alert("제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		if (f.content.value == "") {
			alert("내용을 입력하세요.");
			f.content.focus();
			return;
		}
		if (f.pwd.value == "") {
			alert("비밀번호를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.submit();
	};
</script>
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
		<section id="main"> <!-- Title, Breadcrumb -->
		<div class="breadcrumb-wrapper">
			<div class="pattern-overlay">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
							<h2 class="title">글쓰기</h2>
						</div>
						<div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
							<div class="breadcrumbs pull-right">
								<ul>
									<li>현재 위치</li>
									<li><a href="../index.jsp">메인</a></li>
									<li><a href="board.do">게시판</a></li>
									<li>상세 보기</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Content(BoardList) --> <!-- Contact Section --> 
		<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="star-divider">
						<div class="star-divider-icon">
							<i class=" fa fa-star"></i>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
					<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
					<form:form method="post" action="insert_ok.do" name="frm"
						enctype="multipart/form-data" modelAttribute="uploadForm">
						<div class="row control-group">
							<div
								class="form-group col-xs-12 floating-label-form-group controls">
								<label for="name">이름</label> <input type="text"
									class="form-control" placeholder="Name" id="name" 
									name="name"  readonly value="${sessionScope.lastName }${sessionScope.firstName }">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<!--    <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="email">이메일</label>
                                <input type="email" class="form-control" name="email" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div> -->
						<div class="row control-group">
							<div
								class="form-group col-xs-12 floating-label-form-group controls">
								<label for="phone">제목</label> <input type="tel"
									class="form-control" name="subject" placeholder="Subject"
									id="phone" required
									data-validation-required-message="Please enter your phone number.">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="row control-group">
							<div
								class="form-group col-xs-12 floating-label-form-group controls">
								<label for="message">내용</label>
								<textarea rows="6" class="form-control" name="content"
									placeholder="Content" id="message" required
									data-validation-required-message="Please enter a message."></textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="row control-group">
							<div
								class="form-group col-xs-12 floating-label-form-group controls">
								<label for="phone">비밀번호</label> <input type="password"
									class="form-control" name="pwd" placeholder="Password"
									id="phone" required
									data-validation-required-message="Please enter your phone number.">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						
						<div class="row control-group">
							<div
								class="form-group col-xs-12 floating-label-form-group controls">
								<label for="phone">첨부파일</label>
								<div id="table_content" width="560">
									<td colspan="2" align="right">
									<input type="button" class="btn btn-default" value="추가" id="addBtn"> 
										<input type="button" class="btn btn-default" value="취소"
										id="removeBtn"></td>
								</div>
								<table id="table_content" width="560" class="fileView">

								</table>
							</div>
						</div>
						
						<div id="success"></div>
						<center>
							<div class="row">
								<div class="form-group col-xs-12">
									<input type="button" class="btn btn-success" value="확인"
										onclick="send()"> <input type="button"
										class="btn btn-success" value="취소"
										onclick="javascript:history.back()">
								</div>
							</div>
						</center>
					</form:form>
				</div>
			</div>
		</div>
		</section> <!-- Main Content End --> 
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
