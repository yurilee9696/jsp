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
	request.setCharacterEncoding("UTF-8"); //post 방식으로 값을 받을 때에는 꼭 써주어야 한다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gen = request.getParameter("gen");
	if (gen.equals("M")) gen="남자";
	else gen="여자";
	
	String inotice=request.getParameter("inotice");
	String cnotice=request.getParameter("cnotice");
	String dnotice=request.getParameter("dnotice");
	String job=request.getParameter("job");
%>
이름 : <%=name %><br>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
성별 : <%=gen %><br>

공지 메일 : <%=choi(inotice) %><br>
광고 메일 : <%=choi(cnotice) %><br>
배송 확인 메일 : <%=choi(dnotice) %><br>
직업 : <%=job %><br>


<%!
	String str2="전역 변수";
	public String choi(String notice){
		if(notice==null)
			return "받지 않음";
		else return "받음";
	}
%>
</body>
</html>
