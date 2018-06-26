<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#logoDiv{
		background-color: #EBFAF6;
		text-align: center;
		padding: 30px;
	}
	#logoImg{
		width: 120px;
	}
	#logoText{
		display: block;
		width: 100px;
		margin: 0 auto ;
	}
</style>
<body>
<div id="logoDiv">
	<img src="image/logo.gif" id="logoImg">
	<img src="image/logo2.gif" id="logoText">
</div>

<%
String contentpage= request.getParameter("CONTENTPAGE");

String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

if(idSession==null||pwSession==null){%>
<a href="login.jsp">관리자 로그인</a>
<%}else{ %>
<form action="logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
	<%} %>
</body>
</html>
