<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>å�� ���ַ�</title>
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
			<h1>å�� ������ <font color="#4CAF50">���ַ�</font>�� ���ȴٴ�<br>�̾߱Ⱑ �ֽ��ϴ�.<br>
			���� �����ε� �׷����?</h1>
			<p id="mainText2">���� �������翡 ������ ����� Ȯ���غ�����!</p>
		</div>
		<div style="text-align: center;">
			<button class="buttonCustom" onclick="location.href='main.jsp' ">�����ϱ�</button>
		</div>
	</div>
</div>
</body>
</html>