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
	        <div class="container">
			    <h4>15. 게스트 1인당 요금 책정</h4>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">$</span>
			        <input id="cost" type="text" class="form-control" name="cost" placeholder="Per person">
			    </div>
			</div>
	        <div class="pull-right">
	        	<a href="javascript:next(16);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#cost').val($('#cost_copy').val());
		});
		function next(mode) {
			$('#cost_copy').val($('#cost').val());
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