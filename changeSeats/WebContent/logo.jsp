<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Fugaz+One');
	#logoDiv{
		text-align: center;
		padding: 0.2rem;
		color: #008156;
	}
	h1{
		padding: 0px;
		margin: 1rem;
		font-family: 'Fugaz One', cursive;
		line-height: 90%;
		font-size: 3.7rem;
	}
	a:link, a:visited {
    color: gray;
    text-decoration: none;
}

/* mouse over link */
a:hover,a:active {
    color: #008156;
}
#login-link{
	margin-bottom: 1rem;
	text-align: center;
}
</style>
<body>
<div id="logoDiv">
	<h1>Change<br>Seat</h1>
</div>

<%
String contentpage= request.getParameter("CONTENTPAGE");

String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

if(idSession==null||pwSession==null){%>
<div id="login-link"><a href="login.jsp" >관리자 로그인</a></div>
<%}else{ %>
<form action="logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
	<%} %>
</body>
</html>
