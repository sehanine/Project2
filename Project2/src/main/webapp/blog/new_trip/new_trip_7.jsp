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
	    	<div class="container col-lg-12">
	    		<h4>7. 포스터 이미지 추가</h4>
	    		<p>메인 페이지에 노출되는 사진이니 한장만 올려주세요.</p>
	    		<form action="#" class="dropzone"></form>
	    	</div>
	        <div class="pull-right" style="margin-top:10px">
	        	<a href="javascript:next(8);" class="btn btn-success" role="button">다음</a>
	        </div>
	        <div class="input-group col-lg-4">
			        <span class="input-group-addon">사진</span>
			        <input id="poster" type="text" class="form-control" name="trip_pictures" placeholder="pictures">
			</div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#poster').val($('#poster_copy').val());
			Dropzone.discover();
		})
		function next(mode) {
			$('#poster_copy').val($('#poster').val());
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