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
String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

	if(!(idSession==null&&pwSession==null)){ //null이 아니면 -> 로그인 유지 %>
		<jsp:forward page="adminIndex.jsp"/>
	<%}
%>
<form action="loginProc.jsp" method="post">
	<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인">
				<input type="button" value="취소" onclick="location.href='index.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
