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
	}
	#content{
		background-color: #EBEBEB;
		padding: 10px;
	}
	#foot{
		padding:15px;
		color: #FFF;
		font-size: 0.7em;
		text-align: center;
		background-color: #008156;
		position: absolute;
		bottom: 0px;
		left: 0;
		right: 0;
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
		<td valign="top" id="content">
			<jsp:include page="<%=contentpage%>"></jsp:include>
		</td>
	</tr>
</table>
<div id="foot">
	<jsp:include page="bottom.jsp" flush="false"/>
</div>

</body>
</html>
