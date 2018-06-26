<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date,java.io.*,java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요
<%
	String name="민규";
	out.println(name+"의 홈페이지 입니다.");
	
	for(int i=1;i<7;i++){
		out.print("<h"+i+">");
		out.print("세븐틴 사랑해~~~");
		out.println("</h"+i+">");
	}//for
%>

<hr>
<%= new Date() %> <!--오늘 날짜 찍음-->

<br>
<%
	int a=0,sum=0;
	do{
		a++;
		sum+=a;
	}while(a<10);
%>

<%= "1~10까지의 합은"+sum+"입니다" %>
<%= name+"님의 전화번호는 "+tel+"입니다" %>
<%! String tel="1234-5678"; %> <!-- 선언 -->

<br>

<%! 
	public int add(int m,int n){
	return m+n;
}
%>

<%
	out.println(add(25,10));
%>

<br>
<%= add(17,13) %>









</body>
</html>
