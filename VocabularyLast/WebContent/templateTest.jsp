<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책과 어휘력</title>
<style>
	html, body{
		height: 100%;
		overflow: hidden;
		position: relative;
		width: 100%;
		margin: 0 auto;
	}
	#indexBorder{
		border: 2px solid #4CAF50;
		height: 90%;
		width: 90%;
		margin: auto;
		position: absolute;
		top: 0;               
    	bottom: 0;            
    	left: 0;              
    	right: 0;
	}
	#contentGroup{
		margin: auto;
		position: absolute;
		top: 0;               
    	bottom: 0;             
    	right: 0;
    	width: 100%;
    	height: 100%;
	}
	#mo{
	position:relative;
	}
	#cm { position:absolute; }
	.hc { width:80%; left:0; right:0; margin-left:auto; margin-right:auto; }
	.vc { position: absolute; top: 35%; transform: translateY(35%); }
	
	
	.buttonCustom{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    transition-duration: 0.4s;
    cursor: pointer;
    border: 2px solid white;
	text-align: center !important;
	margin: 0 40;
	}
	.buttonCustom:hover {
	    background-color: #fff;
	    color: #4CAF50;
	    cursor: pointer;
	    border: 2px solid #4CAF50;
	}
</style>
</head>
<body>
<%
	String contentpage= request.getParameter("CONTENTPAGE");
%><div id="indexBorder">
			<header>
				<jsp:include page="header.jsp" flush="false"/>
			</header>
			<div id="mo">
				<section id="cm" class="hc vc">
					<jsp:include page="<%=contentpage%>"></jsp:include>
				</section>
			</div>
		
</div>
</body>
</html>
