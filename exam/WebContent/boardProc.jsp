<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 - 결과화면</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	Date date=new Date();
	Long time = date.getTime(); //시간은 중복이 되지 않기 때문에 파일 이름을 시간을 이용해 저장
	String filename=time+".txt";
	//out.println(filename);
	
	String result;
	
	PrintWriter writer=null;
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
		writer = new PrintWriter(filePath);
		writer.printf("제목 : %s %n", title);
		writer.printf("글쓴이 : %s %n", name);
		writer.println(content);
		
		//out.println("<font color='red'><b>게시물</b></font>이 저장되었습니다.");
		writer.flush(); //파일을 강제로 만들어줌
		result="ok";
		
	}catch(Exception e){
		out.println("오류 발생");
		result="fail";
	}
	
	response.sendRedirect("boardResult.jsp?send="+result);
	
	
	
	
	
	
	
%>
</body>
</html>
