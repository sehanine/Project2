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
	       
	        <img src="img/blog/road-trip-las-vegas-to-nevada.jpg" alt="road-trip">
			<br/><br/>
	        <div class="post-content">
	            <h4>트립 호스트가 될 준비가 되셨나요?</h4>
	            <p>
	                	원하는 트립을 디자인 해보세요. 
	            </p>
	            <p>
	                	회원님의 트립이 기준에 만족되면 게시글이 등록됩니다.
	            </p>
	        </div>
	        <div class="pull-right">
	        	<a href="javascript:change(2);" class="btn btn-success" role="button">확인</a>
	        </div>
	    </article>
	</div>
	<script type="text/javascript">
	
		function change(mode) {
		
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