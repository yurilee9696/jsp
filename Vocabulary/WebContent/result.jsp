<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
     request.setCharacterEncoding("UTF-8");
     String strName=request.getParameter("name");
     String strAge=request.getParameter("age");
     String strReadCnt=request.getParameter("readCnt");
     
     int intWriteCnt=0;
     String[] question=new String[18];
     String[] questionFilePath=new String[18];
     String[] questionWrite=new String[18];
     
     //PrintWriter writer=null;
     
     
     for(int i=0;i<18;i++){
          String getName=Integer.toString(i+1);
          question[i]=request.getParameter(getName); //문제 1부터 18까지
          if(question[i].equals("true")){//정답을 고른 경우
              intWriteCnt++;
          }
     }
     
     
     Date date=new Date();
     Long time = date.getTime(); //시간은 중복이 되지 않기 때문에 파일 이름을 시간을 이용해 저장
     String filename=time+".txt";
     //out.println(filename);
     
     String result;
     
     PrintWriter writer=null;
     FileWriter writer2=null;
     try{
          String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
          //System.out.println("저장되는 경로: "+filePath);
          writer = new PrintWriter(filePath);
          writer.print(strName+"/");
          writer.print(strReadCnt+"/");
          writer.print(intWriteCnt+"/");
          writer.print(strAge+"/");
          
          for(int i=0;i<18;i++){
              writer.print(question[i]+"/");
              
          }


          writer.flush();
          /////////////////여기까지는 ㄱㅊㄱㅊ
          ///////////////////////////////////////////////////////////////////////
          
      	try{
      		FileReader fr;
      		BufferedReader reader;
      		String sLine;
      		String sText;
      		
      		String dirPath=application.getRealPath("/WEB-INF/question/");
			//System.out.println(dirPath); 0
			
			File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
			//String filenames[]=dir.list(); //목록이 배열로 들어감
			System.out.println("aaaa");
			//System.out.println("숫자 : "+filenames.length);
			
			for(int i=0;i<18;i++){

	      		System.out.println("aaaa");
				reader=new BufferedReader(new FileReader(dirPath+"q"+(i+1)+".txt"));
				System.out.println(dirPath+"q"+(i+1)+".txt");
				//while(true){
					//String str = reader.readLine();
					//if(str==null)System.out.println(i+"비었어");
					//System.out.print(str+"&#8361 ");
				//}
				String str = reader.readLine();
				//System.out.println(str);
				if(question[i].equals("true")){
					int int_val = Integer.parseInt(str);
					int_val++;

					System.out.println(i+"번 째 : "+int_val);
					writer2 = new FileWriter(dirPath+"q"+(i+1)+".txt");
			        writer2.write(Integer.toString(int_val));
			        writer2.close();
				}
				else{
					System.out.println(i+"번 째 : "+str);
				}
				
			}
      	
      		}catch(Exception e){
      		out.println("파일을 읽을 수 없습니다");
      		}
          
          
          //////////////////////////////////////////////////////////////////
          
          
          
          result="ok";
          
     }catch(Exception e){
          out.println("오류 발생");
          result="fail";
     }
     
     
%>
<div id="indexBorder">
<form method="get" name="sendForm">
     <input type="hidden" value="<%=filename%>" name="filename">
</form>
<script type="text/javascript">
document.sendForm.action="resultProc.jsp"; // 받을 페이지
document.sendForm.submit();
</script>
</div>
</body>
</html>