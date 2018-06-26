<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#pMenuItemDiv{
		text-align: center;
	}
	#menuItemDiv{
		width:34em;
		 display: inline-block;
		 margin: 0 auto ;
	}
	.detailMenu{
		width: 15em;
		margin: 1em;
		float: left;
		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  		transition: 0.3s;
    	border-radius: 5px;
	}
	.detailMenu:hover {
    box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2);
	}
	.container {
    padding: 2px 16px;
	}
	#menuImg{
		 border-radius: 5px 5px 0 0;
		 width: 15em;
		 height: 11em;
	}
	@media screen and (max-width: 500px) {
		.detailMenu{
			float: none;
		}
 	 }
</style>
</head>
<body>
<h1 style="text-align: center;">MENU</h1>
<div id="pMenuItemDiv">
	<div id="menuItemDiv" align="center">
		<div class="detailMenu" onclick="location.href='movieReader.jsp?FILE_NAME=Bakery'">
			<img src="image/bakery.jpg" id="menuImg">
			<div class="container">
    			<h3>Bakery</h3>
 			</div>
		</div>
		<div class="detailMenu" id="Bubble Tea" onclick="location.href='movieReader.jsp?FILE_NAME=Bubble Tea'">
			<img src="image/bubble.PNG" id="menuImg">
			<div class="container">
    			<h3>Bubble Tea</h3>
 			</div>
		</div>
		<div class="detailMenu" id="Coffee" onclick="location.href='movieReader.jsp?FILE_NAME=Coffee'">
			<img src="image/coffee.jpg" id="menuImg">
			<div class="container">
    			<h3>Coffee</h3>
 			</div>
		</div>
		<div class="detailMenu" id="Waffle" onclick="location.href='movieReader.jsp?FILE_NAME=Waffle'">
			<img src="image/waffle.jpg" id="menuImg">
			<div class="container">
    			<h3>Waffle</h3>
 			</div>
		</div>
	</div>
</div>
</body>
</html>
