<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>우리 학급에 맞는 자리 배치도를 설정해보세요!</h2>
<form action="changeInfo.jsp">
	<label>학급 인원을 선택하세요 : </label><input type="number" name="quantity" min="20" max="40"><br>
	<label>분단을 선택하세요 : </label><input type="number" name="quantity" min="2" max="4"><br>
	<label>현재 결번 처리된 학번의 학생은 다음과 같습니다 : </label><input type="text" disabled="disabled"><input type="button" value="결번 학생 수정"><br><br>
	<input type="submit" value="저장">
	<input type="reset" value="취소">
</form>
</body>
</html>