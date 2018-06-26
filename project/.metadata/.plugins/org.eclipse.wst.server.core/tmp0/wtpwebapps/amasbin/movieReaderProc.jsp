<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
<!-- get방식으로 선택한 값을 받아옴 -->
<%
	String filename=request.getParameter("FILE_NAME");
%>
<h4>파일 이름 : <%=filename %></h4>
<%
	BufferedReader reader=null;
	try{
		String dirPath=application.getRealPath("/WEB-INF/type/"+filename+"/");
		//out.println(filePath);
		
			File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
			String filenames[]=dir.list(); //영화목록이 배열로 들어감
	
	out.print("<form action='buy.jsp' method='post'>");
	for(int i=0;i<filenames.length;i++){
		out.print("<li>");
		out.println(filenames[i]);
		reader=new BufferedReader(new FileReader(dirPath+filenames[i]));
		while(true){
			String str = reader.readLine();
			if(str==null)break;
			out.println(str+"<br>");
		}
		out.print("<input type='number' name='menu' min='0' method='post'>");
		out.print("</li>");
	}
	
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다");
	}
%>
	<input type="submit" value="구매" onclick="buy(filename)">
	<input type="hidden" name="filename" value="<%=filename%>">
</form>
<br><br>
<a href="choice.jsp">[글 목록]</a>
<script>
	function buy(filename) {
		 alert("구매완료 되었습니다.");
		 location.replace("buy.jsp?FILE_NAME=filename");
	}
</script>

</body>
</html>
