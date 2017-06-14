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
	       
	        <img src="img/blog/road-trip.jpg" alt="road-trip"><br/><br/>
	        
	        <div class="container">
			    <h4>4. 회원님이 속한 기관 이름을 입력해 주세요.</h4>
			    <p>개인 호스트면 생략하셔도 됩니다.</p>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">기관</span>
			        <input id="org" type="text" class="form-control" name="org" placeholder="Organization">
			    </div>
			</div>
			
	        <div class="pull-right">
	        	<a href="javascript:next(5);" class="btn btn-success" role="button" style="margin-top:10px">다음</a>
	        </div>
		</article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#org').val($('#org_copy').val());
		});
		function next(mode) {
			$('#org_copy').val($('#org').val());
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