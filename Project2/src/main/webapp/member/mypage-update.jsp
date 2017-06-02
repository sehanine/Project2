<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${res == null }">
		<script>
			alert("300자 이내로 작성하여 주세요.")
			<c:redirect url="mypage.do"/>
		</script>
	</c:when>
	<c:otherwise>
		<c:redirect url="mypage.do"/>
	</c:otherwise>
</c:choose>
