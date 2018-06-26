<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>책과 어휘력</title>
<style>
	html, body{
		height: 100%;
		overflow: hidden;
		text-align: center;
		position: relative;
		width: 100%;
		margin: 0 auto;
	}
	#indexBorder{
		border: 2px solid #4CAF50;
		height: 90%;
		width: 90%;
		text-align: center;
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
    	left: 0;              
    	right: 0;
    	width: 100%;
    	height: 30%;
	}
	#mainText{
 		text-align: center;
 		margin: 10px;
 		padding: 10px;
 	}
 	#mainText2{
 		line-height: 160%;
 	}
 	.buttonCustom {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    border: 2px solid white;
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
<div id="indexBorder" align="center">
	<div id="contentGroup">
		<div id="mainText">
			<h1>책을 읽으면 <font color="#4CAF50">어휘력</font>이 향상된다는<br>이야기가 있습니다.<br>
			과연 실제로도 그럴까요?</h1>
			<p id="mainText2">지금 설문조사에 참여해 결과를 확인해보세요!</p>
		</div>
		<div style="text-align: center;">
			<button class="buttonCustom" onclick="location.href='main.jsp' ">참여하기</button>
		</div>
	</div>
</div>
</body>
</html>