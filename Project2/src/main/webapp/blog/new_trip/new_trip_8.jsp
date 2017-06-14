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
		    	<h4>8. 트립 일정을 작성해 주세요.</h4>
		    	<a href="javascript:void();">
		    		<i class="fa fa-plus fa-4x" aria-hidden="true" id="add_button"></i>일정 추가
		    	</a>
			</div>
			<div class="container col-lg-12">
				<form>
					<div class="form-group">
					
						<div><label for="comment">1일차</label>
						<textarea class="form-control" id="itinerary1"/>
						</div>
						<div class="input_fields_wrap"></div>
					</div>
				</form>
			</div> 
	        <div class="pull-right">
	        	<a href="javascript:next(9);" class="btn btn-success" role="button">다음</a>
	        </div>
	    </article>
	</div>
<script type="text/javascript">

$(document).ready(function() {
	/*
		var input = $('#itinerary1').val();
		$('#lang').val(input);
		array handling
	*/
	$('#itinerary1').val($('#itinerary_copy').val());
    var max_fields      = 8; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $("#add_button"); //Add button ID
    
    var x = 2; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
             //text box increment
            $(wrapper).append('<div><label for="itinerary">' + x + '일차</label><textarea class="form-control" id="itinerary' + x + '"/><a href="#" class="remove_field">삭제하기</a></div>' ); //add input box
            x++;
           // '<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'
           
        }
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});

function next(mode) {
	$('#itinerary_copy').val($('#itinerary1').val());
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