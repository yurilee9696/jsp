<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		margin:0;
    	padding:0;
    	border-spacing: 0;
		border-collapse: collapse;
	}
	body{
		margin: 0px;
		background-color: #EBFAF6;
	}
	#content{
		background-color: #fff;
		padding: 10px;
	}
	#foot{
		padding:15px;
		color: gray;
		font-size: 0.7em;
		text-align: center;
	}
	h1{
		color: #595959;
	}
</style>
</head>
<body>
<%
	String contentpage= request.getParameter("CONTENTPAGE");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!--  templateTest.jsp     URL에 표시되는 내용은 main.jsp이다 -->

<table width="100%" border=0 >
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
		<td valign="top" id="content">
			<jsp:include page="<%=contentpage%>"></jsp:include>
		</td>
	</tr>
	<tr>
		<td id="foot">
			<jsp:include page="bottom.jsp" flush="false"/>
		</td>
	</tr>
</table>

</body>
</html>
