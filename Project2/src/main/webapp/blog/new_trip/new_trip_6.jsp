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
	       
	        <img src="img/blog/hashtag.jpg" alt="hashtag">
	        <br/><br/>
	       
	        <div class="container">
			    <h4>6. 기억하기 쉬운 키워드로 트립을 표현해 보세요.</h4>
			    <p>키워드 앞에 해시태그를 꼭 붙혀주세요.</p>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">태그</span>
			        <input id="hash" type="text" class="form-control" name="hash" placeholder="#">
			    </div>
			</div>
	        <div class="pull-right">
	        	<a href="javascript:next(7);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#hash').val($('#hash_copy').val());
		});
		function next(mode) {
			$('#hash_copy').val($('#hash').val());
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