<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${res=='noInput' }">
		<script>
			alert("Ȯ���� �ٽ� �Է����ּ���.")
			history.back();
		</script>
	</c:when>
	<c:when test="${res=='idJungbok' }">
		<script>
			alert("�̹� �����ϴ� ���̵� �Դϴ�.")
			history.back();
		</script>	
	</c:when>
	<c:when test="${res=='pwdNotSame' }">
		<script>
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�")
			history.back();
		</script>	
	</c:when>
	<c:otherwise>
		<c:redirect url="main.do"/>
	</c:otherwise>
</c:choose>