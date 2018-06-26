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
</head>
<body>
<!-- get방식으로 선택한 값을 받아옴 -->
<%
	
	String filename=request.getParameter("filename");
	%>
<h4>파일 이름 : <%=filename %></h4>
<%
	BufferedReader reader=null;
	try{
		String dirPath=application.getRealPath("/WEB-INF/type/"+filename+"/");
	
		int money=0;
		String[] buyMenu;
		int buyCount=0;
		buyMenu=request.getParameterValues("menu");
	     
	     File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
         String filenames[]=dir.list(); //영화목록이 배열로 들어감
		String str2=null;
         
	     for(int i=0;i<buyMenu.length;i++){
	          reader=new BufferedReader(new FileReader(dirPath+filenames[i]));
	          while(true){
	            String str = reader.readLine();
	            if(str==null)break;
	              str2=str;
	          	}
	          if(!(buyMenu[i].equals(""))){
	        	  out.print(filenames[i]+" ");
	        	  out.print(str2+"원 ");
	        	  //buyCount+=Integer.parseInt(buyMenu[i]);
	        	  out.println(buyMenu[i]+"개"+"<br>");
	        	  money+=Integer.parseInt(buyMenu[i])*Integer.parseInt(str2);  
	         }
	     }

         out.println("총 금액 : "+money);
         //out.println("구매한 개수 : "+buyCount);
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
  				out.println("원래있던 값 : "+Integer.parseInt(line) + "<br>");
            	buyCount+=Integer.parseInt(line)+1;
            
                }
			  out.print(couponPath);
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
<a href="choice.jsp">[글 목록]</a>

</body>
</html>
