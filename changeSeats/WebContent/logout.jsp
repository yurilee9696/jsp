<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate(); //세션에 저장된 값 삭제
%>

<script>
	alert("로그아웃되었습니다.");
</script>
	
<jsp:forward page="templateTest.jsp">
	<jsp:param value="index.jsp" name="CONTENTPAGE"/>
</jsp:forward>
</body>
</html>
