<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#ID, #PW{
		padding: 15px;
		margin: 20px;
		width: 300px;
		display: block;
  		margin-right: auto;
  		margin-left: auto;
  		background-position: 15px 10px;
    	background-repeat: no-repeat;
    	text-indent: 30px;
    	border-bottom: 1px solid #66A8D4;
    	border-style: none none solid none;
	}
	#ID{
		background-image: url(image/user.png);
    	
	}
	#PW{
		background-image: url(image/key.png);
	}
	.button{
 		width:8em;
 		background: #66A8D4;
 		border: none;
    	color: white;
    	padding: 15px;
    	font-size: 1em;
    	cursor: pointer;
    	margin-top: 20px;
    	border-radius: 20px;
    	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  		transition: 0.3s;
  		display: block;
  		margin-right: auto;
  		margin-left: auto;
  		margin-bottom: 20px;
 	}
 	.button:hover{
 		background: #ffffff;
 		color: #66A8D4;
 		box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2);
 		border: 1px solid #66A8D4;
 	}
 	
</style>
</head>
<body>
<%
String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

	if(!(idSession==null&&pwSession==null)){ //null이 아니면 -> 로그인 유지 %>
		<jsp:forward page="loginOk.jsp"/>
	<%}
%>
<h1 style="text-align: center; color: #595959">Log In</h1>
<form action="loginProc.jsp" method="post">
	<input id="ID" type="text" name="id" placeholder="ID">
	<input id="PW" type="password" name="pw" placeholder="PW">
	<input type="submit" value="로그인" class="button" >
</form>
</body>
</html>
