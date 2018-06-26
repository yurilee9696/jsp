<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	p{
 		padding-left: 3em;
 		padding-right: 3em;
 	}
 	input[type='text']{
 		padding: 5px;
 		margin-left: 5em;
 		margin-right: 5em;
 		text-align: left;
 	}
 	input[type='submit']{
 		text-align: center;
 	}
 	
</style>
</head>
<body>
<form method="post" action="question.jsp" style="width: 100%;">
	<div style="background-color: #E4E4E4; padding-top: 10px;">
		<p>당신의 이름을 입력해주세요</p>
		<input type="text" name="name" placeholder="ex) 이유리" required><br><br>
		<p>당신의 나이를 입력해주세요</p>
		<input type="text" name="age" placeholder="ex) 19" required><br><br>
		<p>당신이 한 달 동안 책을 읽는 횟수를 입력해주세요</p>
		<input type="text" name="bookRead" placeholder="ex) 3" required><br><br>
		</div>
		<p style="text-align: center;">기본적인 정보 입력이 끝났습니다.
		이제 문제를 풀어보도록 하겠습니다.</p>
	
	<input type="submit" value="다음으로 >" class="buttonCustom" style="display: block; margin: 0 auto;">
</form>




</body>
</html>
