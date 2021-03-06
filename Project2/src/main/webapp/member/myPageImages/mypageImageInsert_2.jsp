<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My page</title>

</head>
<body>
	<div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
	    <article class="post hentry">
	    	<div class="container col-lg-12">
	    		<img src="${sessionScope.poster }">
	    	</div>
	    	<div class="container">
	    		<form:form method="post" name="frm" action="mypageImageInsert_ok.do">
	    			<div class="input-group col-lg-4">
			        <input id="email" type="hidden" class="form-control" name="email" value="${sessionScope.email }">
			    	</div>
			    	<div class="input-group col-lg-4">
			        <input id="poster" type="hidden" class="form-control" name="poster" readonly>
			    	</div>
	    		</form:form> 
		    	<div class="row">
                   <div class="form-group col-xs-12">
                       <input type="button" class="btn btn-success" value="프로필 변경" onclick="next()">
                   </div>
                </div>
			</div>
	    </article>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var poster = $('#poster_copy').val();
			$('#poster').val(poster);
			Dropzone.discover();
		});

		function next() {
			var vo = {
				"email": $('#email').val(),	
				"poster": "https://arthurhovinc.files.wordpress.com/2015/04/roadtriplarge.png"
			};
			$.ajax({   
	        	url: "mypageImageInsertUpdate_ok.do", 
	        	data: vo,
	        	success: function(result){
	        		$("#change").html(result);
	        		
	        	}
	        });
		}
	</script>	
</body>	
</html>