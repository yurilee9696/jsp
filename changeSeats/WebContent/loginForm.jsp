<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#login-form{
	background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0px 3px 11px #00000016;
}
#login-btn,#cancle-btn{
	background-color: #008156; /* Green */
    border: none;
    color: white;
    padding: 0.5rem 1.5rem;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 1rem;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 2rem;
}
#cancle-btn{
background-color: #fff; /* Green */
color: #008156;
border: 1px solid #008156;
}
.input{
	background-color: #EBEBEB;
	border: none;
	padding: 1rem;
	margin: 0.5rem;
	width: 90%;
}
</style>

</head>
<body>
<%
String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

	if(!(idSession==null&&pwSession==null)){ //null이 아니면 -> 로그인 유지 %>
		<jsp:forward page="adminIndex.jsp"/>
	<%}
%>
<div id='login-form'>
	<form action="loginProc.jsp" method="post">
	<input type="text" name="id" placeholder="ID" class="input"><br>
	<input type="password" name="pw" placeholder="PW" class="input"><br>
	<input type="submit" value="로그인" id="login-btn">
	<input type="button" value="취소" id="cancle-btn" onclick="location.href='index.jsp'">
</form>
</div>

</body>
</html>
