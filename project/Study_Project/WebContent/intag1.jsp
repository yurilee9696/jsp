<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
intag1파일<br>
<%
	String irum = request.getParameter("irum");
%>
<%= "넘겨진 값은 : "+irum+"입니다." %>
</body>
</html>
