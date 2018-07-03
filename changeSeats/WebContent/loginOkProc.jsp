<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#logout-btn{
	background-color: #FFF;
    border: none;
    color: gray;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 1rem;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 2rem;
}
</style>
</head>
<body>
<b>로그인 성공</b><br>
<%
String idSession=(String) session.getAttribute("id");
String pwSession=(String) session.getAttribute("pw");

%>
	<form action="logout.jsp" method="post">
		<input type="submit" value="로그아웃" id="logout-btn">
	</form>
</body>
</html>


