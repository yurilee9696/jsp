<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
<style>
	#name, #title, #que{
		padding: 15px;
		margin: 10px;
		width: 500px;
		display: block;
		margin: 0 auto;
  		display: block;
  		margin-right: auto;
  		margin-left: auto;
	}
	.button{
 		width:8em;
 		background: #66A8D4;
 		border: none;
    	color: white;
    	padding: 15px;
    	font-size: 1em;
    	cursor: pointer;
    	margin-top: 10px;
    	margin-bottom:20px;
    	border-radius: 20px;
    	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  		transition: 0.3s;
  		display: block;
  		margin-right: auto;
  		margin-left: auto;
 	}
 	.button:hover{
 		background: #ffffff;
 		color: #66A8D4;
 		box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2);
 		border: 1px solid #66A8D4;
 	}
 	@media screen and (max-width: 550px) {
 	 	#name, #title, #que{
 	 		width: 90%;
 	 	}
 	 }
</style>
</head>
<body>
<h1 style="text-align: center; color: #595959">Questions</h1>
<form action="boardProc.jsp" method="post">
	<input id="name" type="text" name="name" placeholder="Name" required><br>
	<input id="title" type="text" name="title" placeholder="Title" required><br>
	<textarea id="que" rows="5" cols="30" name="content" placeholder="Any Questions" required="required"></textarea><br>
	<input class="button" type="submit" value="문의하기">
</form>
</body>
</html>
