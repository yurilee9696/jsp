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
<form method="post" action="question.jsp" style="width: 100%;" id="form" name="form">
	<div style="background-color: #E4E4E4; padding-top: 10px;">
		<p>당신의 이름을 입력해주세요</p>
		<input type="text" id="name" name="name" placeholder="ex) 이유리" required><br><br>
		<p>당신의 나이를 입력해주세요</p>
		<input type="text" id="age" name="age" placeholder="ex) 19" required><br><br>
		<p>당신이 한 달 동안 책을 읽는 횟수를 입력해주세요</p>
		<input type="text" id="bookRead" name="bookRead" placeholder="ex) 3" required><br><br>
		</div>
		<p style="text-align: center;">기본적인 정보 입력이 끝났습니다.
		이제 문제를 풀어보도록 하겠습니다.</p>
	
	<input type="button" value="다음으로 >" class="buttonCustom" style="display: block; margin: 0 auto;" onclick="checkData()">
</form>
<script type="text/javascript">
 	function checkData(){
 		
 		
 		var flag=true;
 		

 		flag=checkErr();
 		if(flag==false) return;
 		
 		var ageVar= document.getElementById("age").value;
 		flag=isNumber1(ageVar);
 		if(flag==false) return;
 		
 		var bookReadVar= document.getElementById("bookRead").value;
 		flag=isNumber2(bookReadVar);
 		if(flag==false) return;
 		
 		document.form.submit();
 	}
 	function isNumber1(ageVar){
 		 if(isNaN(ageVar)){
 	           alert("숫자가 아닌 값이 있습니다. 확인해 주세요.");
 	          document.form.age.focus();
 	          return false;
 	      }
 		 return true;
 	}
 	function isNumber2(bookReadVar){
		 if(isNaN(bookReadVar)){
	           alert("숫자가 아닌 값이 있습니다. 확인해 주세요.");
	           document.form.bookRead.focus();
	          return false;
	      }
		 return true;
	}
 	
 	//////
 	
 	function checkErr(){
		var frm = document.form ;
		var name = frm.name.value ;

		var L_szKor = (name.length) ;
		//자바스크립트 정규식 한글 / 길이 체크!

		if( name == ""){
		alert( "한글을 입력해주세요" );
		frm.name.value="";
		frm.name.focus();

		return false;
		}else{
			var kor_check = /([^가-힣ㄱ-ㅎㅏ-ㅣ\x20])/i;

			if (kor_check.test(name)){

				alert("한글만 입력할 수 있습니다.");

				frm.name.value="";

				frm.name.focus();

				return false;

			}else{

				if( L_szKor < 2 || L_szKor > 6 ){

					alert("2~6글자만 입력할수 있습니다.");

					frm.name.value="";

					frm.name.focus();

					return false;

				}//if
			}//else
		}
		//return true;
 	}

 



</script>



</body>
</html>
