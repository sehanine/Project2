<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행 호스팅 하기</title>
</head>
<body>
	<div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
	    <article class="post hentry">
	       
	        <img src="img/blog/languages.jpg" alt="language">
	       	<div class="container">
			    <h4>2. 트립에 사용되는 언어를 입력해 주세요</h4>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">언어</span>
			        <input id="lang" type="text" class="form-control" name="lang" placeholder="Language">
			    </div>
			</div>
			<div class="pull-right">
	        	<a href="javascript:next(3);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#lang').val($('#lang_copy').val());
		});
		function next(mode) {
			$('#lang_copy').val($('#lang').val());
	       	$.ajax({   
	        	url: "trip_content.do?mode=" + mode, 
	        	success: function(result){
	           		$("#change").html(result);
	        	}
	        });
		};
	</script>
</body>
</html>