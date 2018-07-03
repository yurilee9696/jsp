<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	#login-form{
	background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0px 3px 11px #00000016;
}
#login-btn,#cancle-btn{
	background-color: #008156; /* Green */
    border: none;
    color: white;
    padding: 0.5rem 1.5rem;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 1rem;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 2rem;
}
#cancle-btn{
background-color: #fff; /* Green */
color: #008156;
border: 1px solid #008156;
}
</style>
</head>
<body>
<div id="login-form">
	<h2>우리 학급에 맞는 자리 배치도를 설정해보세요!</h2>
	<form action="changeInfo.jsp">
		<label>학급 인원을 선택하세요 : </label><input type="number" name="count" min="20" max="40"  required><br>
		<label>분단을 선택하세요 : </label><input type="number" name="division" min="2" max="4"  required><br><br>
		<label>결번 처리할 학번을 입력해주세요<br> (여러명일 경우,단위로 구분해주세요) </label><input type="text" name="disjunction"><br><br>
		<input type="submit" value="저장" id="login-btn">
		<input type="reset" value="취소" id="cancle-btn">
	</form>
</div>

</body>
</html>