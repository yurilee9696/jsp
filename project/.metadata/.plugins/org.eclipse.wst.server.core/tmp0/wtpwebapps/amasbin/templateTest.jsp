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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!--  templateTest.jsp     URL에 표시되는 내용은 main.jsp이다 -->

<table width="70%" border=1 >
	<tr>
		<td>
			<jsp:include page="logo.jsp" flush="false"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="top.jsp" flush="false"/>
		</td>
	</tr>
	<tr>
		<td width=350 valign="top">
			<jsp:include page="<%=contentpage%>"></jsp:include>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="bottom.jsp" flush="false"/>
		</td>
	</tr>
</table>

</body>
</html>
