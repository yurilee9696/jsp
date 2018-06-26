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
<!-- get방식으로 선택한 값을 받아옴 -->
<%
	String filename=request.getParameter("FILE_NAME");
%>
<h4>파일 이름 : <%=filename %></h4>
<%
	BufferedReader reader=null;
	try{
		String filePath=application.getRealPath("/WEB-INF/movie/"+filename);
		//out.println(filePath);
		reader=new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null)break;
			out.println(str+"<br>");
		}
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다");
	}
%>
<br><br>
<a href="choice.jsp">[글 목록]</a>
</body>
</html>
