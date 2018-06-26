<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    	padding-bottom: 50px;
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
	margin-bottom: 20px;
	}
	.buttonCustom:hover {
	    background-color: #fff;
	    color: #4CAF50;
	    cursor: pointer;
	    border: 2px solid #4CAF50;
	}
	li{
		margin: 20px;
	}
	form{
		padding:20px 0 40px 0;
	}
	.summeryText{
		padding-left: 20px;
		padding-right: 20px;
		margin-left: 15px;
		margin-right: 15px;
	}
	#readGraph{
		height:400px;
		width: 600px;
		text-align: center;
		margin: 0 auto;
	}
	#readGraphDiv{
		width: 90px;
		height: 90%;
		display: inline-block;
	}
	#readGraphContent{
		width: 50px;
		height:100%;
		text-align: center;
		background-color: yellow;
		margin: 0 auto;
	}
	#readGraphContent p{
		margin-top: 50%;
		bottom: 0px;
	}
	.progressDiv{
		background-color: #4CAF50;
		display: inline-block;

		height: 30px;
		color: white;
		text-align: center;
	}
	.progressParent{
		background-color: #E4E4E4;
		width: 100%;
		height: 30px;
	}
	details{
		width:80%;
		margin: 0 auto;
	}
	#box{
		margin: 0 auto;
	}




/* Pie Chart */
.progress-pie-chart {
width:200px;
height: 200px;
border-radius: 50%;
background-color: #E5E5E5;
position: relative;
}
.progress-pie-chart.gt-50 {
background-color: #4CAF50;
}

.ppc-progress {
content: "";
position: absolute;
border-radius: 50%;
left: calc(50% - 100px);
top: calc(50% - 100px);
width: 200px;
height: 200px;
clip: rect(0, 200px, 200px, 100px);
}
.ppc-progress .ppc-progress-fill {
content: "";
position: absolute;
border-radius: 50%;
left: calc(50% - 100px);
top: calc(50% - 100px);
width: 200px;
height: 200px;
clip: rect(0, 100px, 200px, 0);
background: #81CE97;
transform: rotate(60deg);
}
.gt-50 .ppc-progress {
clip: rect(0, 100px, 200px, 0);
}
.gt-50 .ppc-progress .ppc-progress-fill {
clip: rect(0, 200px, 200px, 100px);
background: #E5E5E5;
}

.ppc-percents {
content: "";
position: absolute;
border-radius: 50%;
left: calc(50% - 173.91304px/2);
top: calc(50% - 173.91304px/2);
width: 173.91304px;
height: 173.91304px;
background: #fff;
text-align: center;
display: table;
}
.ppc-percents span {
display: block;
font-size: 2.6em;
font-weight: bold;
color: #81CE97;
}

.pcc-percents-wrapper {
display: table-cell;
vertical-align: middle;
}

.progress-pie-chart {
margin: 50px auto 0;
}

#box h1{
	padding-top: 50px;
}

summary{
	margin-bottom: 30px;
}

</style>
</head>

<body>
<%
	
	String peopleRank=null;
	int peopleCnt=0;
	String strFilename=request.getParameter("filename");
	String resultText="";
	String wrongText="";
	int arrMin[]=new int[18];
	
	String[] arrResult=new String[22];
	BufferedReader reader=null;

	double[] bookAvg=new double[6];
	int bookCnt[]=new int[6];
	
	for(int i=0;i<bookCnt.length;i++){
		bookCnt[i]=0;
	}
	
	try{
		String dirPath=application.getRealPath("/WEB-INF/bbs");
		String filePath = application.getRealPath("/WEB-INF/bbs/"+strFilename);
		
		File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
		String filenames[]=dir.list(); //목록이 배열로 들어감
		peopleCnt=filenames.length;
		
			FileReader fr = new FileReader(filePath);      // 읽기객체생성.
    		BufferedReader br = new BufferedReader(fr);   // 버퍼객체생성.
			String sLine="";
 			String sText="";

		    // 버퍼객체에 들어간 파일을 라인단위로 읽어내기
		    while ( (sLine = br.readLine()) != null ) {  
		      //out.println("라인단위 [" + sLine + " ] <br/><br/>");
		      sText = sText + sLine + "\n";  
    		}

   // out.println("전체단위 [" + sText + " ] ");
    
		///////////
        // split()을 이용해 '/'를 기준으로 문자열을 자른다.
        // split()은 지정한 문자를 기준으로 문자열을 잘라 배열로 반환한다.
       arrResult= sText.split("/");
        
        for(int i=0 ; i<18 ; i++)
        {
            System.out.println("arrResult["+i+"] : "+arrResult[i]);
            if(arrResult[(i+4)].equals("false")){
            	BufferedReader br2 = null;
                try{
                      br2 = new BufferedReader(new FileReader(application.getRealPath("/WEB-INF/que/m"+(i+1)+".txt")));
				   	  String line = "";
					 while((line = br2.readLine()) != null){
						//out.println(line + "<br />");
						resultText=resultText+line +"<br />";
						}
						br2.close();
                } catch(Exception ee){

                       out.println(ee.getMessage());

                      

                } 
                }
            resultText=resultText+"<br />";
        }
        
	////////////
////////////
		/////빈도수별 계산하기
			for(int i=0;i<18;i++){

				BufferedReader br4 = null;
				try{
					br4 = new BufferedReader(new FileReader(application.getRealPath("/WEB-INF/question/q"+(i+1)+".txt")));
				   	String line3 = "";
					while((line3 = br4.readLine()) != null){
					 //wrongText=wrongText+line3 +"<br />";
					 	arrMin[i]=Integer.parseInt(line3);
						}
					
				}finally{

                  if(br != null) try{br4.close(); 
               }catch(Exception e){
					System.out.println("q파일을 못 읽음");
				}//catch	
	
				}
			}//for
			/////가장 작은 값 구하기
			System.out.println("가장 작은 배열 수 : "+arrMin.length);
			int max = arrMin[0];
			int min = arrMin[0];

			for(int a=1; a < arrMin.length ; a++) {

		    if( arrMin[a] > max )
		      max = arrMin[a];
		
		    if (arrMin[a] < min )
		      min = arrMin[a];

			}
			
			/////가장 작은 값 구하기
			//out.println("가장 작은 값 : "+min);
			
			
			/////가장 작은 값 구하기
			//out.println("가장 작은 값 : "+min); 
			
			//////////
			wrongText="아래 문제(들)는 "+peopleCnt+"명의 응답자 중 "+min+"명이 맞추었습니다.<br>";
			for(int i=0;i<18;i++){
				System.out.println("arrMin : "+arrMin);
				System.out.println("min : "+min);
				if(arrMin[i]==min){
					BufferedReader br3 = null;
					try{
						br3 = new BufferedReader(new FileReader(application.getRealPath("/WEB-INF/que/m"+(i+1)+".txt")));
					   	String line2 = "";
						while((line2 = br3.readLine()) != null){
						 	wrongText=wrongText+line2 +"<br />";
						 	//System.out.println("wrongText : "+wrongText);
							}
						
					}finally{

	                  if(br != null) try{br3.close(); 
	               }catch(Exception e){
						System.out.println("q파일을 못 읽음");
					}//catch	
		
					}
				}//if

				wrongText=wrongText+"<br />";
			}
			////////
			
			////////////
		}catch(Exception e){
			out.println("오류 : "+e.getMessage());
		}
	
	
	
	
	
	///////////////////////////////////////////////////////////////////////분포도 계산
	int[][] bookWrite=new int[2][peopleCnt];
	int[] people=new int[peopleCnt];
	BufferedReader reader3;
	String str;
	String dirPath=application.getRealPath("/WEB-INF/bbs/");
	System.out.println("파일 경로 : "+dirPath);
     File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
     String filenames[]=dir.list(); //영화목록이 배열로 들어감
	String str2=null;
	for(int i=0;i<peopleCnt;i++){
		//bookWrite[0][i]= Integer.parseInt(arrResult[1]); //책 읽는 횟수
		//bookWrite[1][i]= Integer.parseInt(arrResult[2]); //맞은 횟수
		
		reader3=new BufferedReader(new FileReader(dirPath+filenames[i]));
		while(true){
		      str = reader3.readLine();
		      if(str==null)break;
		        str2=str;
		    	}
		System.out.println("str2 : "+str2);
		int first= str2.indexOf('/'); //소리리/3/8/31/true/
		first=first+1;
		//System.out.println("first : "+first); //3 //4번째
		
		int first2=str2.indexOf('/',first); //소리리/3/8/31/true/
		//first2=first2+1;
		System.out.println("first2 : "+first2); //8전까지 출력//5
		String readCnt= str2.substring(first,first2); //3 //책 읽는 횟수
		System.out.println(readCnt);
		
		
		int second=str2.indexOf('/',first2+1); //소리리/3/8/31/true/
		//second=second+1;
		System.out.println("second : "+second);
		String writeCnt = str2.substring(first2+1,second); //8 //맞은 개수
		System.out.println(writeCnt);
		
		bookWrite[0][i]= Integer.parseInt(readCnt); //책 읽는 횟수
		bookWrite[1][i]= Integer.parseInt(writeCnt); //맞은 횟수
		
	}
	
	for(int i=0;i<peopleCnt;i++){
		System.out.println("bookwrite : "+bookWrite[0][i]);
		System.out.println("bookwrite : "+bookWrite[1][i]);
		
		switch(bookWrite[0][i]){
		case 0: case 1: case 2: case 3:
			bookAvg[0]+=(double)18/bookWrite[1][i];
			bookCnt[0]+=1;
			break;
		case 4: case 5: case 6:
			bookAvg[1]+=(double)18/bookWrite[1][i];
			bookCnt[1]+=1;
			break;
		case 7: case 8: case 9:
			bookAvg[2]+=(double)18/bookWrite[1][i];
			bookCnt[2]+=1;
			break;
		case 10: case 11: case 12: case 13: case 14:
			bookAvg[3]+=(double)18/bookWrite[1][i];
			bookCnt[3]+=1;
			break;
		case 16: case 17: case 18: case 19: case 20:
			bookAvg[4]+=(double)18/bookWrite[1][i];
			bookCnt[4]+=1;
			break;
		default:
			bookAvg[5]+=(double)18/bookWrite[1][i];
			bookCnt[5]+=1;
			break;
		}
	}
	int[] a=new int[6];
	a[0]=(int)((bookCnt[0]/bookAvg[0])*100);
	a[1]=(int)((bookCnt[1]/bookAvg[1])*100);
	a[2]=(int)((bookCnt[2]/bookAvg[2])*100);
	a[3]=(int)((bookCnt[3]/bookAvg[3])*100);
	a[4]=(int)((bookCnt[4]/bookAvg[4])*100);
	a[5]=(int)((bookCnt[5]/bookAvg[5])*100);
	
	System.out.println("평균1 : "+a[0]);
	System.out.println("평균2 : "+a[1]);
	System.out.println("평균3 : "+a[2]);
	System.out.println("평균4 : "+a[3]);
	System.out.println("평균5 : "+a[4]);
	System.out.println("평균6 : "+a[5]);
	
	
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
%>
<div id="indexBorder">
	<div id="box">
		<h1 style="text-align: center;">결과</h1>
	  <h2 style="text-align: center;"><%=arrResult[0]%>님은 18문제 중 <%=arrResult[2]%>문제를 맞추었습니다.</h2>
	  
	  
	  
	  
	  
	  <div class="bar_container">
<div id="main_container">
<div id="pbar" class="progress-pie-chart" data-percent="0">
<div class="ppc-progress">
<div class="ppc-progress-fill"></div>
</div>
<div class="ppc-percents">
<div class="pcc-percents-wrapper">
<span><%=(int)((Double.parseDouble(arrResult[2])/18)*100) %>%</span>
</div>
</div>
</div>

<progress style="display: none" id="progress_bar" value="0" max="100"></progress>
</div>
</div>



		<br><br>
	 <p style="text-align: center;">다음 항목을 눌러 추가적인 결과를 확인하세요! (현재  총 응답자는 <%=peopleCnt %>명 입니다.)<br></p><br><br>
	 <details>
	 	<summary  onclick="move()">책 읽는 빈도수 별 응답자들의 정답 비율</summary>
	 		<div style="width: 100%; padding-bottom: 20px;">0 ~ 3회 ( <%=bookCnt[0] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar1" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>
	 		<div style="width: 100%; padding-bottom: 20px;">4 ~ 6회 ( <%=bookCnt[1] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar2" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>
	 		<div style="width: 100%; padding-bottom: 20px;">7 ~ 10회 ( <%=bookCnt[2] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar3" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>
	 		<div style="width: 100%; padding-bottom: 20px;">11 ~ 15회 ( <%=bookCnt[3] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar4" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>
	 		<div style="width: 100%; padding-bottom: 20px;">15 ~ 20회 ( <%=bookCnt[4] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar5" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>
	 		<div style="width: 100%; padding-bottom: 20px;">20회 이상 ( <%=bookCnt[5] %>명 )
	 			<div class="progressParent">
	 				<div id="myBar6" class="progressDiv" style="width:0%"></div>
	 			</div>
	 		</div>	
	 
	 </details>
	 <details>
	 	<summary>내가 틀린 문제 정답</summary>
	 	<p class="summeryText"><%= resultText%></p>
	 </details>
	 <details>
	 	<summary>응답자가 가장 많이 틀린 문제</summary>
	 	
	 	<p class="summeryText"><%= wrongText%></p>
	 </details>
	</div>
	<button class="buttonCustom" style="display: block; margin: 0 auto;" onclick="location.href='main.jsp'">처음으로 ></button>
</div>


<script>
$(document).ready(function() {
var progressbar = $('#progress_bar');
max = <%=(int)((Double.parseDouble(arrResult[2])/18)*100)%>
time = (1000 / max) * 1;
value = progressbar.val();

var loading = function() {
value += 1;
addValue = progressbar.val(value);

$('.progress-value').html(value + '%');
var $ppc = $('.progress-pie-chart'),
deg = 360 * value / 100;
if (value > 50) {
$ppc.addClass('gt-50');
}

$('.ppc-progress-fill').css('transform', 'rotate(' + deg + 'deg)');
$('.ppc-percents span').html(value + '%');

if (value == max) {
clearInterval(animate);
}
};

var animate = setInterval(function() {
loading();
}, time);
});


function move() {
  var elem1 = document.getElementById("myBar1");
  var elem2 = document.getElementById("myBar2");   
  var elem3 = document.getElementById("myBar3");   
  var elem4 = document.getElementById("myBar4");   
  var elem5 = document.getElementById("myBar5");   
  var elem6 = document.getElementById("myBar6");   
  
  var width1 = 0;
  var width2 = 0;
  var width3 = 0;
  var width4 = 0;
  var width5 = 0;
  var width6 = 0;
  
  var id1 = setInterval(frame1, 10);
  var id2 = setInterval(frame2, 10);
  var id3 = setInterval(frame3, 10);
  var id4 = setInterval(frame4, 10);
  var id5 = setInterval(frame5, 10);
  var id6 = setInterval(frame6, 10);
  
  var lastwidth1=<%=a[0]%>;
  var lastwidth2=<%=a[1]%>;
  var lastwidth3=<%=a[2]%>;
  var lastwidth4=<%=a[3]%>;
  var lastwidth5=<%=a[4]%>;
  var lastwidth6=<%=a[5]%>;
  
  function frame1() {
    if (width1 >= lastwidth1) {
      clearInterval(id1);
    } else {
      width1++; 
      elem1.style.width = width1 + '%'; 
      elem1.innerHTML = width1 * 1  + '%';
    }
  }
  
  function frame2() {
	    if (width2 >= lastwidth2) {
	      clearInterval(id2);
	    } else {
	      width2++; 
	      elem2.style.width = width2 + '%'; 
	      elem2.innerHTML = width2 * 1  + '%';
	    }
	  }
  
  function frame3() {
	    if (width3 >= lastwidth3) {
	      clearInterval(id3);
	    } else {
	      width3++; 
	      elem3.style.width = width3 + '%'; 
	      elem3.innerHTML = width3 * 1  + '%';
	    }
	  }
  
  function frame4() {
	    if (width4 >= lastwidth4) {
	      clearInterval(id4);
	    } else {
	      width4++; 
	      elem4.style.width = width4+ '%'; 
	      elem4.innerHTML = width4 * 1  + '%';
	    }
	  }
  
  function frame5() {
	    if (width5 >= lastwidth5) {
	      clearInterval(id5);
	    } else {
	      width5++; 
	      elem5.style.width = width5 + '%'; 
	      elem5.innerHTML = width5 * 1  + '%';
	    }
	  }
  
  function frame6() {
	    if (width6 >= lastwidth6) {
	      clearInterval(id6);
	    } else {
	      width6++; 
	      elem6.style.width = width6 + '%'; 
	      elem6.innerHTML = width6 * 1  + '%';
	    }
	  }
}
</script>


</body>
</html>
