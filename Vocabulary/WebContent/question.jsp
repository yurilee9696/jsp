<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책과 어휘력</title>
<style>
	#indexBorder{
		border: 2px solid #4CAF50;
		width: 90%;
		margin: auto;
		position: absolute;
		top: 0;              
    	left: 0;              
    	right: 0;
    	height: auto;
    	margin-top:5%;
    	margin-bottom: 5%; 
	}
	.buttonCustom{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    transition-duration: 0.4s;
    cursor: pointer;
    border: 2px solid white;
	text-align: center !important;
	}
	.buttonCustom:hover {
	    background-color: #fff;
	    color: #4CAF50;
	    cursor: pointer;
	    border: 2px solid #4CAF50;
	}
	li{
		margin: 0px 50px 0px 20px;
		background-color: #ECECEC;
		padding: 20px;
	}
	li label:hover{
		color: #4CAF50;
		font-weight: 600;
		cursor: pointer;
	}
	li label:after{
	color: #4CAF50;
		font-weight: 600;
	}
	form{
		padding:20px 0 40px 0;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String readCnt=request.getParameter("bookRead");
%>
<div id="indexBorder">
<form action="result.jsp" method="post">
	<ol>
		<li>
		 	---어디 갔었어?<br>
		 	<label><input type="radio" name="1" value="true" required>방금</label><br>
		 	<label><input type="radio" name="1" value="false">지금</label><br>
		 	<label><input type="radio" name="1" value="false">이따가</label><br>
		 	<label><input type="radio" name="1" value="false">내일</label><br>
		</li>
		<br><br>
		<li>
		 	다음 두 낱말 사이의 관계가 보기와 다른 것은?<br>
		 	<label><input type="radio" name="2" value="false" required>여자-소녀</label><br>
		 	<label><input type="radio" name="2" value="false">계절-여름</label><br>
		 	<label><input type="radio" name="2" value="false">생물-동물</label><br>
		 	<label><input type="radio" name="2" value="true">태양-지구</label><br>
		</li>
		<br><br>
		<li>
		 	이 책의 내용은 별로 ----.<br>
		 	<label><input type="radio" name="3" value="false" required>좋다</label><br>
		 	<label><input type="radio" name="3" value="false">않 좋다</label><br>
		 	<label><input type="radio" name="3" value="true">안 좋다</label><br>
		 	<label><input type="radio" name="3" value="false">너무 좋다</label><br>
		</li>
		<br><br>
		<li>
		 	다음 두 낱말 사이의 관계가 보기와 다른 것은?<br>
		 	보기 : 장-단<br>
		 	<label><input type="radio" name="4" value="false" required>대-소</label><br>
		 	<label><input type="radio" name="4" value="false">온-냉</label><br>
		 	<label><input type="radio" name="4" value="false">명-암</label><br>
		 	<label><input type="radio" name="4" value="true">유-무</label><br>
		</li>
		<br><br>
		<li>
		 	다음에서 그 의미가 나머지 네 개와 현저히 다른 것은?<br>
		 	<label><input type="radio" name="5" value="false" required>자세하다</label><br>
		 	<label><input type="radio" name="5" value="false">상세하다</label><br>
		 	<label><input type="radio" name="5" value="false">치밀하다</label><br>
		 	<label><input type="radio" name="5" value="true">긴밀하다</label><br>
		</li>
		<br><br>
		<li>
		 	'책상물림'의 뜻으로 맞는 것은?<br>
		 	<label><input type="radio" name="6" value="false" required>공부를 중도에 그만두는 일</label><br>
		 	<label><input type="radio" name="6" value="true">글만 읽고 세상 물정에 어두운 사람</label><br>
		 	<label><input type="radio" name="6" value="false">종이, 붓, 먹, 벼루</label><br>
		 	<label><input type="radio" name="6" value="false">책 한 권의 공부를 다 마침 </label><br>
		</li>
		<br><br>
		<li>
		 	다음에서 그 의미가 나머지 세 개와 현저히 다른 것은?<br>
		 	<label><input type="radio" name="7" value="false" required>발행</label><br>
		 	<label><input type="radio" name="7" value="false">출판</label><br>
		 	<label><input type="radio" name="7" value="true">인쇄</label><br>
		 	<label><input type="radio" name="7" value="false">간행 </label><br>
		</li>
		<br><br>
		<li>
		 	다음에서 반대말로 이루어진 쌍이 아닌 것은?<br>
		 	<label><input type="radio" name="8" value="false" required>굼뜨다-재다</label><br>
		 	<label><input type="radio" name="8" value="true">굵다-얇다</label><br>
		 	<label><input type="radio" name="8" value="false">기울다-차다</label><br>
		 	<label><input type="radio" name="8" value="false">숱하다-적다</label><br>
		</li>
		<br><br>
		<li>
		 	"굵다"의 반대말은?<br>
		 	<label><input type="radio" name="9" value="false" required>옅다</label><br>
		 	<label><input type="radio" name="9" value="true">얇다</label><br>
		 	<label><input type="radio" name="9" value="false">가늘다</label><br>
		 	<label><input type="radio" name="9" value="false">짧다</label><br>
		</li>
		<br><br>
		<li>
		 	다음에서 그 의미가 나머지 세 개와 현저히 다른 것은?<br>
		 	<label><input type="radio" name="10" value="true" required>성향</label><br>
		 	<label><input type="radio" name="10" value="false">성품</label><br>
		 	<label><input type="radio" name="10" value="false">천성</label><br>
		 	<label><input type="radio" name="10" value="false">본성</label><br>
		</li>
		<br><br>
		<li>
		 	(낙지 한 코) + (마늘 두 접) + (오징어 한 축)의 총 수량은?<br>
		 	<label><input type="radio" name="11" value="false" required>130</label><br>
		 	<label><input type="radio" name="11" value="true">240</label><br>
		 	<label><input type="radio" name="11" value="false">100</label><br>
		 	<label><input type="radio" name="11" value="false">210</label><br>
		</li>
		<br><br>
		<li>
		 	(보기)에서 괄호를 대신할 수 있는 것은?<br><br>
		 	(보기) 헐떡헐떡 숨을 몰아쉬면서 고갯마루에 겨우 다다랐다. 시원한 바람이 얼굴과 옷자락 사이로 파고든다.
		 	언제 보아도 정겨운 들판이 눈앞에 펼쳐진다. 더구나 들판 언저리에 (사이가 멀지 않은) 농가들이 더욱 반갑다.<br>
		 	<label><input type="radio" name="12" value="false" required>소담스러운</label><br>
		 	<label><input type="radio" name="12" value="false">어우른</label><br>
		 	<label><input type="radio" name="12" value="false">빽빽한</label><br>
		 	<label><input type="radio" name="12" value="true">다붓한</label><br>
		</li>
		<br><br>
		<li>
		 	다음에서 그 의미가 나머지 셋과 현저히 다른 것은?<br>
		 	<label><input type="radio" name="13" value="true" required>호접지몽</label><br>
		 	<label><input type="radio" name="13" value="false">한단지몽</label><br>
		 	<label><input type="radio" name="13" value="false">노생지몽</label><br>
		 	<label><input type="radio" name="13" value="false">남가일몽</label><br>
		</li>
		<br><br>
		<li>
		 	다음은 불완전하고 부정확하게 쓰인 글이다. 괄호 부분이 문맥에 맞게 바르게 고쳐진 것은?<br><br>
		 	
		 	그 사람의 사회적 지위보다는 대인 관계가 얼마만큼 바람직 하느냐 하는 것이 (인생의 성공 척도로 잡고 있다.)
		 	이것은 그가 세상을 떠날 때 얼마나 많은 사람들이 그와의 이별을 슬퍼하는가와 관계가 있다.<br>
		 	<label><input type="radio" name="14" value="false" required>바람직한 삶으로 생각된다.</label><br>
		 	<label><input type="radio" name="14" value="false">인생의 성공 척도로 생각한다.</label><br>
		 	<label><input type="radio" name="14" value="true">인생에 있어서의 성공 척도이다.</label><br>
		 	<label><input type="radio" name="14" value="false">인생에의 성공적인 삶의 표준이다.</label><br>
		</li>
		<br><br>
		<li>
		 	다음 중 맞춤법이 바르지 않은 것은?<br>
		 	<label><input type="radio" name="15" value="false" required>어이없다</label><br>
		 	<label><input type="radio" name="15" value="false">도대체</label><br>
		 	<label><input type="radio" name="15" value="false">그래도 돼</label><br>
		 	<label><input type="radio" name="15" value="true">설겆이</label><br>
		</li>
		<br><br>
		<li>
		 	다음 중 띄어쓰기가 잘못 된 것은?<br>
		 	<label><input type="radio" name="16" value="true" required>계획인 바</label><br>
		 	<label><input type="radio" name="16" value="false">3일 자로</label><br>
		 	<label><input type="radio" name="16" value="false">전년 대비</label><br>
		 	<label><input type="radio" name="16" value="false">추진 중인</label><br>
		</li>
		<br><br>
		<li>
		 	다음 (보기)의 괄호 부분을 대체할 낱말로 가장 올바른 것은?<br><br>
		 	(보기) 청소년들의 스마트 폰 이용 목적이 놀이에 집중되어 있다면, 이는 (어떤 사물이나 사상에 빠져
		 	정상적으로 판단할  수 없게 된)상태로 보아야 한다.<br>
		 	<label><input type="radio" name="17" value="false" required>통제된</label><br>
		 	<label><input type="radio" name="17" value="true">중독된</label><br>
		 	<label><input type="radio" name="17" value="false">반복된</label><br>
		 	<label><input type="radio" name="17" value="false">절제된</label><br>
		</li>
		<br><br>
		<li>
		 	다음 (보기)의 상황을 가장 잘 드러내는 한자성어는?<br><br>
		 	(보기) 도대체 일이 안 풀려. 투자자는 줄어들고, 투자금을 회수하겠다고들 난리인데, 국세청에서는
		 	당장 세무조사를 하겠다고 하고. 해외 주문이 취소되고 말았어. 일이 갈수록 꼬이네.<br>
		 	<label><input type="radio" name="18" value="false" required>가가호호</label><br>
		 	<label><input type="radio" name="18" value="false">다다익선</label><br>
		 	<label><input type="radio" name="18" value="true">설상가상</label><br>
		 	<label><input type="radio" name="18" value="false">득의양양</label><br>
		</li>
	</ol>
		<input type="hidden" value="<%=name%>" name="name">
		<input type="hidden" value="<%=age%>" name="age">
		<input type="hidden" value="<%=readCnt%>" name="readCnt">
		<br><br>
	<input type="submit" class="buttonCustom" style="display: block; margin: 0 auto;" value="결과보기 >">
	<!--<button class="buttonCustom" onclick="location.href='result.jsp?strName=<%=name%>&&strAge=<%=age%>&&strReadCnt<%=readCnt%>'" style="display: block; margin: 0 auto;">결보기 ></button>-->
</form>
</div>
</body>
</html>
