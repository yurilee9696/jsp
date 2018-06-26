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
	String str = request.getParameter("send");
	if(str.equals("ok")){
		 out.println("<font color='red'><b>게시물</b></font>이 저장되었습니다.");
	} 
	else{
		 out.println("<font color='red'><b>게시물</b></font> 저장에 실패했습니다.");
	}
%>
<meta http-equiv='refresh' content='3; url=main.jsp'>
</body>
</html>
