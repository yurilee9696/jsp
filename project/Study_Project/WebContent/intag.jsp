<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
홀수 출력 :
<%
	for(int a=1;a<=10;a++){
		if(a%2==1) out.print(a+" ");
	}
%>
<br>

<%="** 액션 태그의 역할 : 각 페이지 간 이동 또는 빈즈 사용 등에 활용" %><br>
<%="** 액션 태그의 종류 : include, forward, plug-in, useBean, setProperrty, getProperty" %>





</body>
</html>
