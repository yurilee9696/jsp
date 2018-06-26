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
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	//System.out.println("ID = "+id);
	//out.println("ID = "+id); //out은 내장객체이므로 만들어주지 않아도 오류가 안난다
	//out.println("PW = "+pw);
%>


<%
	if(id.equals("choi")){
		if(pw.equals("1234")){
			session.setAttribute("id", "choi");
			session.setAttribute("pw", "1234");
		%>
			<jsp:forward page="adminIndex.jsp"/>
		<%}else{%>
			<jsp:forward page="login.jsp"/>
		<%}
	}else{//회원이 아님%>
		<jsp:forward page="insert.jsp"/>
	<%}
%>









</body>
</html>
