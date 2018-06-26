<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값을 입력하는 폼</title>
<script>
	function check() {
		if(document.form1.number.value=""){
			alert("숫자를 입력하세요");
			//document.form1.number.value=""
		}
	}
</script>
</head>
<body>
<h2>숫자 값을 입력하세요</h2>
<form action="ifTestPro.jsp" method="post" name="form1">
	<input type="text" name="numbrt">
	<input type="button" value="입력완료" onclick="check()">
</form>
</body>
</html>
