<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.button{
 		width:8em;
 		background: #66A8D4;
 		border: none;
    	color: white;
    	padding: 15px;
    	font-size: 1em;
    	cursor: pointer;
    	margin-top: 20px;
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
 	#couponTable{
 		width: 400px;
 		height: 150px;
 		border: 1px solid #66A8D4;
 		border-radius: 15px;
 	}
 	table#couponTable tr td{
 		background-size: cover;
 		background-repeat:no-repeat;
 		background-position: center center;
 		border: 1px solid #66A8D4;
 	}
 	#couponText{
 		line-height: 160%;
 		text-align: center;
 	}
 	@media screen and (max-width: 500px) {
 		#couponTable{
 			width: 100%;
 		}
 	 }
</style>
</head>

<body>
<%
String contentpage= request.getParameter("CONTENTPAGE");

String idSession=(String) session.getAttribute("id"); //세션 가져오기
String pwSession=(String) session.getAttribute("pw");

if(idSession==null||pwSession==null){
	out.print("<SCRIPT LANGUAGE='JavaScript'>");
	out.print("alert('회원만 사용가능합니다!');");
	out.print("location.href='login.jsp';");
	out.print("</SCRIPT>");
	%>
	
	
<%}%>
<%
if(!(idSession==null||pwSession==null)){
	int cnt=0;
	try{
		 String couponPath=application.getRealPath("/WEB-INF/couponCount.txt");
		//out.println(couponPath);
		FileReader fr = new FileReader(couponPath); //파일읽기객체생성
         BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성
         String line = null;
         while((line=br.readLine())!=null){ //라인단위 읽기
			//out.println("원래있던 값 : "+Integer.parseInt(line) + "<br>");
     		//buyCount+=Integer.parseInt(line)+1;
     		cnt=Integer.parseInt(line);%>
     		
     		<script>
     			var couponCnt=<%=cnt%>;
     			window.onload=function couponShow(){
     				var cId="cp";
     				var couponId = new Array(couponCnt.length);
     				for(var i=1;i<=parseInt(couponCnt);i++){
     					//cId+=i;
     					//document.write(cId);
         				couponId[i]=document.getElementById("cp"+i);
         				//document.write(couponId);
         					//couponId[i].style.backgroundColor="red";
         					couponId[i].style.backgroundImage='url(image/coupon.jpg)';
         					couponId[i].style.backgroundSize='50px 50px';
         					
         				//CId="cp";
         				}
     			}//couponShow End
     		</script>
         <%}//while
		  //out.print(cnt);
	}catch(Exception e) { 
	    System.out.println(e.toString()); //에러 발생시 메시지 출력
	}%>
<h1 style="text-align: center;">MY COUPON</h1>
<p id="couponText"><font style="color:#66A8D4">1회</font> 방문 시 스탬프 <font style="color:#66A8D4">1개</font> 찍어 드려요.<br>
	버블을 모아 빨대를 콕! 꽂으면 모든 음료 중 <font style="color:#66A8D4">한 잔이 무료!</font><br>
	(R) 사이즈 합산은 불가능하니 꼭 챙겨 다니세요!</p>
<center>
	<table border=1 id="couponTable">
		<tr>
			<td id="cp1"></td>
			<td id="cp2"></td>
			<td id="cp3"></td>
			<td id="cp4"></td>
			<td id="cp5"></td>
		</tr>
		<tr>
			<td id="cp6"></td>
			<td id="cp7"></td>
			<td id="cp8"></td>
			<td id="cp9"></td>
			<td id="cp10"></td>
		</tr>
		
	</table>
</center>
<form method="post">
	<input type="button" value="사용하기" onclick="useCoupon()" class="button"></input>
</form>
<script>
function useCoupon(){
		if(couponCnt>=10){
			alert("쿠폰이 사용됩니다");
			couponCnt=0;
			location.replace("buyOk.jsp");
		 
		}
		else {
			alert("아직 쿠폰이 10개가 되지 않았습니다! 좀 더 모아보세요!");
		}
	} 
</script>
<%

} %>
</body>
</html>
