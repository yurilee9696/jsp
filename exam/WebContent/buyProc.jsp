<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#receiptDiv{
		display: block;
		margin: 0 auto ;
		width: 32em;
	}
	.front, .end{
		display:inline-block;
		padding: 1em;
		background-color: #fff;
		
	}
	.front{
		width:22.9em;
	}
	.end{
		width: 5em;
		border-left:1px solid #BFBFBF;
	}
</style>
</head>
<body>
<!-- get방식으로 선택한 값을 받아옴 -->
<%
	
	String filename=request.getParameter("filename");
	%>
<h1 style="text-align: center; color: #595959">Receipt</h1>	
<%
	BufferedReader reader=null;
	try{
		String dirPath=application.getRealPath("/WEB-INF/type/"+filename+"/");
	
		int money=0;
		String[] buyMenu;
		int buyCountCheck=0;
		int buyCount=0;
		buyMenu=request.getParameterValues("menu");
	     
	     File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
         String filenames[]=dir.list(); //영화목록이 배열로 들어감
		String str2=null;
		out.print("<div id='receiptDiv'>");
	     for(int i=0;i<buyMenu.length;i++){
	          reader=new BufferedReader(new FileReader(dirPath+filenames[i]));
	          while(true){
	            String str = reader.readLine();
	            if(str==null)break;
	              str2=str;
	          	}
	          
	          if(!(buyMenu[i].equals(""))){
	        	  String fileName2 = filenames[i];
				  int Idx = fileName2 .lastIndexOf(".");//를 이용해서 .뒤에 있는 인덱스 값을 지정 합니다. 

				  String _fileName = fileName2.substring(0, Idx );
				  
				  out.print("<div class='front' style='border-bottom: 1px solid #BFBFBF;'>");
				  out.print(_fileName+" ");
	        	  out.print(str2+"&#8361 ");
	        	  out.print("</div>");
	        	  //buyCount+=Integer.parseInt(buyMenu[i]);
	        	  buyCountCheck=1;
	        	  out.print("<div class='end' style='border-bottom: 1px solid #BFBFBF;'>");
	        	  out.print(buyMenu[i]+"개"+"<br>");
	        	  out.print("</div>");
	        	  money+=Integer.parseInt(buyMenu[i])*Integer.parseInt(str2);  
	         }
	     }

	     out.print("<div class='front' style='color:#66A8D4'>");
         out.print("총 금액 ");
         out.print("</div>");
         out.print("<div class='end' style='color:#66A8D4'>");
         out.print(money+"&#8361 ");
         out.print("</div>");
         out.print("</div>");
         //out.println("구매한 개수 : "+buyCountCheck);
		 try{
			 String couponPath=application.getRealPath("/WEB-INF/couponCount.txt");
			
			  FileReader fr = new FileReader(couponPath); //파일읽기객체생성
                BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성
                String line = null;
                while((line=br.readLine())!=null){ //라인단위 읽기
                
  			  if(Integer.parseInt(line)>=9){%>
  				  <script>
  				  	alert("도장이 10개임으로 쿠폰함으로 이동합니다. 쿠폰을 사용해주세요");
  				  location.href="photo.jsp";
  				  	</script>
  			  <%}
  				//out.println("원래있던 값 : "+Integer.parseInt(line) + "<br>");
            	if(buyCountCheck==1) {
            		buyCount+=Integer.parseInt(line)+1;
            	}else{
            		buyCount+=Integer.parseInt(line);
            	}
            
                }
			  //out.print(couponPath);
			  BufferedWriter out2 = new BufferedWriter(new FileWriter(couponPath));
			  
				  String s=Integer.toString(buyCount);
		      //out.println("저장되는 값 : "+s);
		      	out2.write(s);
		      	out2.newLine();
			  	out2.flush();
		      	out2.close();
			  
			  
		      
		      
		 }catch(Exception e) { 
			    System.out.println(e.toString()); //에러 발생시 메시지 출력
		  }
		
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다");
	}
%>
<br><br>
<div style="text-align: center; margin-bottom: 20px;">
	<a href="choice.jsp">[메뉴 목록] </a>
	<a href="photo.jsp"> [쿠폰함]</a>
</div>

</body>
</html>
