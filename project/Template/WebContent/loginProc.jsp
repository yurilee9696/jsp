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

<%-- 주석1
ID = <%=id %><br>
PW = <%=pw %><br>
--%>


<%--주석2
<%
	if(id.equals("choi")){
		if(pw.equals("1234")){
			out.println("로그인 성공");
		}else{
			//비밀번호가 틀림
			out.println("비밀번호를 확인하세요");
		}
	}else{//회원이 아님
		out.println("회원이 아닙니다.");
	}
%>
 --%>

<%
	if(id.equals("choi")){
		if(pw.equals("1234")){%>
			<jsp:forward page="loginOk.jsp"/>
		<%}else{%>
			<jsp:forward page="login.jsp"/>
		<%}
	}else{//회원이 아님%>
		<jsp:forward page="insert.jsp"/>
	<%}
%>









</body>
</html>
