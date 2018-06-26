<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*"
    import="java.sql.*"
    
    
    session="true" 
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    info="2018년  4월 9일  6교시에 작성한 예제"
    errorPage="errorPage.jsp"
    %>

<%--기본 제공 페키지
	import java.lang.*;
	import javax.servlet.*;
	import javax.servlet.jsp,*;
	import javax.servlet.http.*;
 --%>

<!-- 페이지 지시어(디렉티브) & 에러 페이지 정리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<b>페이지 지시어는 JSP 문서의 앞에서 꼭 필요한 것만 기술한다.</b>
<p>** 날짜 및 시간 출력 **
<br>

<%
	Calendar date= Calendar.getInstance();
	int year=date.get(Calendar.YEAR);
	int month=date.get(Calendar.MONTH)+1;
	int day=date.get(Calendar.DATE);
	
	out.println("오늘은 "+year+"년"+month+"월"+day+"일 입니다.");
%>
<br>

<%= getServletInfo() %>

<hr>
<%= 10/0 %>










</body>
</html>
