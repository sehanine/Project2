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
	       
	        <img src="img/blog/travel_changes.jpg" alt="road-trip"><br/><br/>
	       
	        <div class="container">
			    <h4>5. 영화와 같은 트립의 제목을 만들어주세요.</h4>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">제목</span>
			        <input id="title" type="text" class="form-control" name="title" placeholder="Title">
			    </div>
			</div>
	        <div class="pull-right">
	        	<a href="javascript:next(6);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#title').val($('#title_copy').val());
		});
		function next(mode) {
			$('#title_copy').val($('#title').val());
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