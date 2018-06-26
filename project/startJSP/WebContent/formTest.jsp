<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
<form action="formProc.jsp" method="post"> <!-- action으로 넘겨줌 -->
	이름 : <input type="text" name="name"><br> <!-- <name,최규정>으로 넘어감 -->
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	
	성별 : 
	남 <input type="radio" name="gen" value="M">
	여 <input type="radio" name="gen" value="F"><br>
	
	메일수신여부 : 
	공지 메일 : <input type="checkbox" name="inotice">
	광고 메일 : <input type="checkbox" name="cnotice">
	배송 확인 메일 : <input type="checkbox" name="dnotice"><br>
	
	직업 : 
	<select name="job">
	  <option>회사원</option>
	  <option>학 생</option>
	  <option>교 사</option>
	  <option>주 부</option>
	</select><br>
	
	<input type="submit" value="확인">
	<input type="submit" value="취소">
</form>
</body>
</html>
