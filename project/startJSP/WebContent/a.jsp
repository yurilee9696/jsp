<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	이름 : <input type="text" name="name" size=11><br>
	ID : <input type="text" name="id" size=11><br>
	PW : <input type="password" name="pw" size=11><br>
	성별 : 남 <input type="radio" name="men">
	여 <input type="radio" name="women"><br>
	메일수신여부 : 공지 메일 <input type="checkbox" name="notice">
	광고메일 :  <input type="checkbox" name="Advertising">
	배송 확인 메일 :  <input type="checkbox" name="delivery"><br>
	직업 : <select name="job">
	  <option value="std">학생</option>
	  <option value="uni">대학생</option>
	  <option value="employee">회사원</option>
	</select><br>
	<input type="button" value="확인" onclick="ok()">
	<input type="button" value="취소" onclick="cancle()">
</form>
</body>
</html>
