/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.5
 * Generated at: 2018-05-03 23:54:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.File;

public final class buyProc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.BufferedWriter");
    _jspx_imports_classes.add("java.io.FileWriter");
    _jspx_imports_classes.add("java.io.FileReader");
    _jspx_imports_classes.add("java.io.BufferedReader");
    _jspx_imports_classes.add("java.io.File");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!-- get방식으로 선택한 값을 받아옴 -->\r\n");

	
	String filename=request.getParameter("filename");
	
      out.write("\r\n");
      out.write("<h4>파일 이름 : ");
      out.print(filename );
      out.write("</h4>\r\n");

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
                
  			  if(Integer.parseInt(line)>=9){
      out.write("\r\n");
      out.write("  \t\t\t\t  <script>\r\n");
      out.write("  \t\t\t\t  \talert(\"도장이 10개임으로 쿠폰함으로 이동합니다. 쿠폰을 사용해주세요\");\r\n");
      out.write("  \t\t\t\t  location.href=\"photo.jsp\";\r\n");
      out.write("  \t\t\t\t  \t</script>\r\n");
      out.write("  \t\t\t  ");
}
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

      out.write("\r\n");
      out.write("<br><br>\r\n");
      out.write("<a href=\"choice.jsp\">[글 목록]</a>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
