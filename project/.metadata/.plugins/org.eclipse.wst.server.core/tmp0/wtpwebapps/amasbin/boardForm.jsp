<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
<h2>문의하기</h2>
<form action="boardProc.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	제목 : <input type="text" name="title"><br>
	<textarea rows="5" cols="30" name="content"></textarea><br>
	<input type="submit" value="저장">
	<input type="reset" value="취소">
</form>
</body>
</html>
