<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
String contentpage= request.getParameter("CONTENTPAGE");

String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

if(idSession==null||pwSession==null){
	out.print("<SCRIPT LANGUAGE='JavaScript'>");
	out.print("alert('회원만 사용가능합니다!');");
	out.print("location.href='login.jsp';");
	out.print("</SCRIPT>");
	%>
	
	
<%}%>
<%
if(!(idSession==null||pwSession==null)){
	%>
<h1 style="text-align: center;">자리 바꾸기</h1>

<%

} %>
</body>
</html>
