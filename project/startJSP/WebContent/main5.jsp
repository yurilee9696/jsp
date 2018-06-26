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
	String str[]={"승철","정한","지수","준휘","순영","원우","지훈","명호","민규","석민","승관","한솔","찬"};
	int i=(int)(Math.random()*str.length);
%>
<%=str[i] %>이가 오늘의 최애<br>
</body>
</html>
