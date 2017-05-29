<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${res=='noInput' }">
		<script>
			alert("확인후 다시 입력해주세요.")
			history.back();
		</script>
	</c:when>
	<c:when test="${res=='idJungbok' }">
		<script>
			alert("이미 존재하는 아이디 입니다.")
			history.back();
		</script>	
	</c:when>
	<c:when test="${res=='pwdNotSame' }">
		<script>
			alert("비밀번호가 일치하지 않습니다")
			history.back();
		</script>	
	</c:when>
	<c:otherwise>
		<c:redirect url="main.do"/>
	</c:otherwise>
</c:choose>