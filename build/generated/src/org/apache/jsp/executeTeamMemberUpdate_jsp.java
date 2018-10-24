package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class executeTeamMemberUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if(session.getAttribute("view")!=null){
                String button = request.getParameter("button");
               if(button!=null){
                    String oldName = request.getParameter("oldName");
                    String userName = request.getParameter("userName");
                    String passWord = request.getParameter("passWord");
                    String user = request.getParameter("userType");
                    String[] grants = request.getParameterValues("grants");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String designation = request.getParameter("designation");
                    String interest = request.getParameter("rs");
                    String qualification = request.getParameter("qualification");
                    String department = request.getParameter("department");
                    String institute = request.getParameter("institute");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                   String query = "delete from teammembers where name='"+oldName+"'";
                    st.executeUpdate(query);
                    PreparedStatement ps;
                    ResultSet grantList = st.executeQuery("select value from grantlist");
            
            while(grantList.next()){
                for(int i=0;i<grants.length;i++){
                    if(grants[i].equals(grantList.getString("value"))){
                        ps = conn.prepareStatement("insert into teammembers(username,password,grants,user,name,researchinterest,email,designation,qualification,department,institute) " + "values(?,?,?,?,?,?,?,?,?,?,?)");
                        ps.setString(1,userName);
                        ps.setString(2,passWord);
                        ps.setString(3,grants[i]);
                        ps.setString(4,user);
                        ps.setString(5,name);
                        ps.setString(6,interest);
                        ps.setString(7,email);
                        ps.setString(8,designation);
                        ps.setString(9,qualification);
                        ps.setString(10,department);
                        ps.setString(11,institute);
                        ps.executeUpdate();
                    }
                }
            }
                    response.sendRedirect("viewAllTeamMember.jsp");
               }
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
