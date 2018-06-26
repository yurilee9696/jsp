<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#formDiv{
		display: block;
		margin: 0 auto ;
		width: 32em;
	}
 	.menuList{
 		padding:15px;
 		list-style-type: none;
 		font-size: 1em;
 		border-bottom: 1px solid #BFBFBF;
 	}
 	.menuList:hover{
 		color: #66A8D4;
 	}
 	.menuNumber{
 		width: 40px;
 		margin-left: 10px;
 		border-color: #66A8D4;
 		border-style: solid;
 		border-radius: 7px;
 		border-width: 1px;
 		color: #66A8D4;
 		padding: 3px;
 		padding-left: 10px;
 	}
 	#menuForm{
 		display: inline;
 	}
 	
 	
 	.button{
 		width:8em;
 		background: #66A8D4;
 		border: none;
    	color: white;
    	padding: 15px;
    	font-size: 1em;
    	cursor: pointer;
    	margin-top: 20px;
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
 	
 	@media screen and (max-width: 700px) {
 	 	#formDiv{
			width: 100%;
			padding: 14px;
		}
 	 }
</style>
</head>
<body>
<%
	String filename=request.getParameter("FILE_NAME");
%>
<h1 style="text-align: center;"><%=filename %></h1>	

<% 
	String idSession=(String) session.getAttribute("id"); //세션 가져오기
	String pwSession=(String) session.getAttribute("pw");

	if(idSession==null||pwSession==null){ //회원이 아님
		BufferedReader reader=null;
		try{
			String dirPath=application.getRealPath("/WEB-INF/type/"+filename+"/");
			//out.println(filePath);
			
			File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
			String filenames[]=dir.list(); //영화목록이 배열로 들어감
				
			out.print("<div id='formDiv'>");
			out.print("<form action='buy.jsp' method='post' id='menuForm'>");
			for(int i=0;i<filenames.length;i++){
				out.print("<li class='menuList'>");
			
				String fileName2 = filenames[i];
				int Idx = fileName2 .lastIndexOf(".");//를 이용해서 .뒤에 있는 인덱스 값을 지정 합니다. 

				String _fileName = fileName2.substring(0, Idx );
					
					
				out.println(_fileName+" ");
				reader=new BufferedReader(new FileReader(dirPath+filenames[i]));
				while(true){
					String str = reader.readLine();
					if(str==null)break;
					out.print(str+"&#8361 ");
				}
				out.print("</li>");
			}
		
			}catch(Exception e){
			out.println("파일을 읽을 수 없습니다");
			}

		out.print("</form>");
		out.print("</div>");
	}else{
	BufferedReader reader=null;
	try{
		String dirPath=application.getRealPath("/WEB-INF/type/"+filename+"/");
		//out.println(filePath);
		
		File dir=new File(dirPath);//실제 경로에 있는 파일을 가져옴
		String filenames[]=dir.list(); //영화목록이 배열로 들어감
			
		out.print("<div id='formDiv'>");
		out.print("<form action='buy.jsp' method='post' id='menuForm'>");
		for(int i=0;i<filenames.length;i++){
			out.print("<li class='menuList'>");
		
			String fileName2 = filenames[i];
			int Idx = fileName2 .lastIndexOf(".");//를 이용해서 .뒤에 있는 인덱스 값을 지정 합니다. 

			String _fileName = fileName2.substring(0, Idx );
				
				
			out.println(_fileName+" ");
			reader=new BufferedReader(new FileReader(dirPath+filenames[i]));
			while(true){
				String str = reader.readLine();
				if(str==null)break;
				out.print(str+"&#8361 ");
			}
			out.print("<input type='number' name='menu' min='0' method='post' class='menuNumber'>");
			out.print("</li>");
		}
	
		}catch(Exception e){
		out.println("파일을 읽을 수 없습니다");
	}
%>
	<input type="submit" value="구매하기" onclick="buy(filename)" class="button">
	<input type="hidden" name="filename" value="<%=filename%>">
</form>
</div>
<%} %>
<br><br>
<a href="choice.jsp" style="color: #66A8D4">[메뉴 목록]</a>
<script>
	function buy(filename) {
		 alert("구매완료 되었습니다.");
		 location.replace("buy.jsp?FILE_NAME=filename");
	}
</script>

</body>
</html>
