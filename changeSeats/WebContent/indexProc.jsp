<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
		table, tr, td{
			text-align: center;
		}
		#table-div{
			background: #FFFFFF;
			  width: 40rem;
			  margin: 0 auto 100px;
			  padding: 4rem;
			  text-align: center;
			  box-shadow: 0px 3px 11px #00000016;
		}
		
		#seat-table{
			margin: 0 auto;
			  
		}
		#seat-table td div{
			width: 20px;
			padding: 1rem;
			border: 1px solid #008156;
		}
		.cellMargin{
			padding-left: 400px;	
		}
		#login-btn{
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
    margin-bottom: 1rem;
}
	</style>
</head>
<body>

<button  onclick="location.reload()" id="login-btn">자리바꾸기</button>


<%@ page import="java.io.*" %>

 

<%
  String sLine     = "";
  String sText     = "";

  try { 
    // 파일읽기
    String filePath=application.getRealPath("/WEB-INF/seatInfo.txt");
	FileReader fr = new FileReader(filePath); //파일읽기객체생성
    BufferedReader br = new BufferedReader(fr);   // 버퍼객체생성.


    // 버퍼객체에 들어간 파일을 라인단위로 읽어내기
    while ( (sLine = br.readLine()) != null ) {  
      sText = sText + sLine;  
    }

    System.out.println("전체단위 [" + sText + " ] ");
}catch(Exception e){
  e.printStackTrace();
}
%>
<script>
var beforeStr="<%=sText%>"; 

var afterStr = beforeStr.split('@');
var no=afterStr[2];
var realCount;
if(no==""){
	realCount=afterStr[0];
	//alert("비었음"); //결원이 없는 경우
	
	var a = [realCount];
	var number=1; //학생들의 학번
	arrNum=0; //배열의 순서
	
	while(arrNum<realCount){
			a[arrNum]=number; //결원이 아닌 경우
			arrNum++;
			number++;
				
	}
	//alert(a);
	a = shuffle(a);
	//alert(a);
	
}
else{
	
	
	var noBeforeStr=afterStr[2]; 
	var noAfterStr = noBeforeStr.split(',');
	//alert(noAfterStr.length);
	var noCount=noAfterStr.length; //결원 학생 수
	
	realCount=afterStr[0]-noCount;
	var a = [realCount];
	//alert(afterStr[0]);
	var k=0;
	var number=1; //학생들의 학번
	arrNum=0; //배열의 순서
	
	while(arrNum<realCount){
		if( parseInt(noAfterStr[k])!=number){
			a[arrNum]=number; //결원이 아닌 경우
			arrNum++;
			number++;
		}
		else{
			//alert("결원 :"+number);
			k++;
			number++;
		}
				
	}
	//alert(a);
	a = shuffle(a);
	//alert(a);
	
}
		//alert(a);
		var x=(realCount)/(afterStr[1]*2) //전체 학생 수-결원 / 모둠 수;
		var y=afterStr[1]*2; //모둠 수
		var num=0;
		var studentCnt=0;
		document.write("<div id='table-div'><table id='seat-table'>");
		for(i=0;i<x;i++)
		{
			
			document.write("<tr>");
			for(j=0;j<y;j++)
			{
				if(num<realCount){
					if(j==0)
						document.write("<td>"+"<div>"+a[studentCnt]+"</div>"+"</td>");
					else if(j%2==0)
						document.write("<td style='padding-left:4rem'>"+"<div>"+a[studentCnt]+"</div>"+"</td>");
					else
						document.write("<td>"+"<div>"+a[studentCnt]+"</div>"+"</td>");
					num++;
					studentCnt++;
				}
				else{
					if(j==0)
						document.write("<td>"+"<div>"+a[studentCnt]+"</div>"+"</td>");
					else if(j%2==0)
						document.write("<td style='padding-left:4rem'>"+"</td>");
					else
						document.write("<td></td>");
					num++;
					studentCnt++;
				}
				
			}
			document.write("</tr>");
		}
document.write("</table></div>");
		
		
		
//번호를 랜덤하게 섞기
function shuffle(arr){
 if(arr instanceof Array)
 {
  var len = arr.length;
  if(len == 1) return arr;
  var i = len * 2;
  while(i > 0)
  {
   var idx1 = Math.floor(Math.random()* len);
   var idx2 = Math.floor(Math.random()* len);
   if(idx1 == idx2) continue;
   var temp = arr[idx1];
   arr[idx1] = arr[idx2];
   arr[idx2] = temp;
   i--;
  }
 }
 else
 {
  alert("No Array Object");
 }
 return arr;
}
		

		
		
		
		

	</script>
	
	
</body>
</html>