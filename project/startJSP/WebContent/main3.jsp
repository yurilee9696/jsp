<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String str1="전역변수";
		public String getStr(){
			return str1;
		}
	%>
	<%
		String str2="지역변수";
	%>
	str1은 <%=str1%>입니다.<br>
	str2는 <%=str2%>입니다.<br>
	
</body>
</html>
