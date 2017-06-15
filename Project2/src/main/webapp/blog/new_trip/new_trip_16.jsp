<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
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
	    		<form:form method="post" name="frm">
      			<div class="input-group col-lg-4">
			        <span class="input-group-addon">작성자</span>
			        <input id="email" type="text" class="form-control" name="email" value="${sessionScope.email }">
			    </div>						
				<div class="input-group col-lg-4">
			        <span class="input-group-addon">언어</span>
			        <input id="lang" type="text" class="form-control" name="lang" >
			    </div>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">범주</span>
			        <input id="cate" type="text" class="form-control" name="cate" >
			    </div>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">기관</span>
			        <input id="org" type="text" class="form-control" name="org" >
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">제목</span>
			        <input id="title" type="text" class="form-control" name="title" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">태그</span>
			        <input id="hash" type="text" class="form-control" name="hash" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">포스터</span>
			        <input id="poster" type="text" class="form-control" name="poster" readonly>
			    </div>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">일정</span>
			        <textarea class="form-control" id="itinerary" name="itinerary" readonly/>
			    </div>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">제공</span>
			        <input id="host_serve" type="text" class="form-control" name="host_serve" readonly>
			    </div>
			    <div class="input-group col-lg-4">
			        <span class="input-group-addon">사진</span>
			        <input id="trip_pictures" type="text" class="form-control" name="trip_pictures" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">소개</span>
			        <textarea class="form-control" id="about_program" name="about_program" readonly/>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">주소</span>
			        <input id="addr" type="text" class="form-control" name="addr" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">주의사항</span>
			        <input id="cautions" type="text" class="form-control" name="cautions" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">참여인원</span>
			        <input id="participants" type="text" class="form-control" name="participants" readonly>
			    </div>
		        <div class="input-group col-lg-4">
			        <span class="input-group-addon">1인 가격</span>
			        <input id="cost" type="text" class="form-control" name="cost" readonly>
			    </div>
		    	</form:form> 
		    	<div class="row">
                   <div class="form-group col-xs-12">
                       <input type="button" class="btn btn-success" value="글쓰기" onclick="next()">
                   </div>
                </div>
			</div><!-- 
		    <div class="pull-right">
	        	<a href="javascript:send(17);" class="btn btn-success" role="button">제출</a>
	        </div> -->
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			
			var lang = $('#lang_copy').val();
			$('#lang').val(lang);
			var cate = $('#cate_copy').val();
			$('#cate').val(cate);
			var org = $('#org_copy').val();
			$('#org').val(org);
			var title = $('#title_copy').val();
			$('#title').val(title);
			var hash = $('#hash_copy').val();
			$('#hash').val(hash);
			var poster = $('#poster_copy').val();
			$('#poster').val(poster);
			var itinerary = $('#itinerary_copy').val();
			$('#itinerary').val(itinerary);
			var host_serve = $('#host_serve_copy').val();
			$('#host_serve').val(host_serve);
			var trip_pictures = $('#trip_pictures_copy').val();
			$('#trip_pictures').val(trip_pictures);
			var about_program = $('#about_program_copy').val();
			$('#about_program').val(about_program);
			var addr = $('#addr_copy').val();
			$('#addr').val(addr);
			var cautions = $('#cautions_copy').val();
			$('#cautions').val(cautions);
			var participants = $('#participants_copy').val();
			$('#participants').val(participants);
			var cost = $('#cost_copy').val();
			$('#cost').val(cost);
		})
	
	function next() {
		var vo = {
			"email": $('#email').val(),
			"lang": $('#lang').val(),
			"cate": $('#cate').val(),
			"org": $('#org').val(),
			"title": $('#title').val(),
			"hash": $('#hash').val(),
			"poster": "https://arthurhovinc.files.wordpress.com/2015/04/roadtriplarge.png",
			"itinerary": $('#itinerary').val(),
			"host_serve": $('#host_serve').val(),
			"trip_pictures": "http://www.telegraph.co.uk/content/dam/Travel/Destinations/North%20America/USA/Route%2066/AP_Route66_Travel-large.jpg",
			"addr": $('#addr').val(),
			"about_program": $('#about_program').val(),
			"cautions": $('#cautions').val(),
			"participants": $('#participants').val(),
			"cost": $('#cost').val()
		};
		
       	$.ajax({   
        	url: "fin_trip.do", 
        	data: vo,
        	success: function(result){
        		$("#change").html(result);
        		
        	}
        });
	};
		
	</script>
</body>
</html>