<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
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

	BufferedReader reader=null;
try{
	 String couponPath=application.getRealPath("/WEB-INF/seatInfo.txt");
	
	 System.out.println(couponPath);
	 
	 String count=request.getParameter("count"); //학생 수
	 String division=request.getParameter("division"); //분단
	 String disjunction=request.getParameter("disjunction"); //결번
	 
	  FileReader fr = new FileReader(couponPath); //파일읽기객체생성
       BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성
       String line = null;
       while((line=br.readLine())!=null){ //라인단위 읽기
       
			  BufferedWriter out2 = new BufferedWriter(new FileWriter(couponPath));
			     
			     String s=count+"@"+division+"@"+disjunction;
			     out2.write(s);
			     out2.newLine();
				  out2.flush();
			     out2.close();
		}//while End
	  
     
     
     
}catch(Exception e) { 
	    System.out.println(e.toString()); //에러 발생시 메시지 출력
 }
%>
<p>설정정보가 저장되었습니다</p>
</body>
</html>
