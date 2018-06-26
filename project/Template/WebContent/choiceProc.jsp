<%@page import="java.io.File"%>
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
	String dirPath=application.getRealPath("/WEB-INF/movie"); //내장 객체 //실제 저장된 경로를 가져오는 함수
	//out.println(dirPath);
	
	File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
	String filenames[]=dir.list(); //영화목록이 배열로 들어감
	
	/*
	for(int i=0;i<filenames.length;i++){
		out.println(filenames[i]);
		out.println("<br>");
	}*/
%>
<h4>아마스빈 메뉴</h4>

<%
	for(String filename : filenames){ %>
	<a href="movieReader.jsp?FILE_NAME=<%=filename%>"><%= filename %></a><br> 
	<%}
%>


</body>
</html>
