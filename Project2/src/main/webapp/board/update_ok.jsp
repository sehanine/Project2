<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${bCheck==true }">
		<c:redirect url="board-content.do?no=${no }"/>
	</c:when>
	<c:otherwise>
		<script>
			alert("비밀번호가 틀립니다.");
			history.back();
		</script>
	</c:otherwise>
</c:choose>