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
				<form>
					<div class="form-group">
						<label for="">9. 호스트가 게스트에게 제공하는 목록을 작성해 주세요.</label>
						<p>예) 식사, 차량, 숙소</p>
						<textarea class="form-control" id="host_serve"/>
						
					</div>
				</form>
			</div> 
	        <div class="pull-right">
	        	<a href="javascript:next(10);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#host_serve').val($('#host_serve_copy').val());
		});
		function next(mode) {
			$('#host_serve_copy').val($('#host_serve').val());
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