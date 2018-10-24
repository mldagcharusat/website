package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class adminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Admin Login-MLDAG Charusat</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
            ResultSet admin = st.executeQuery("select distinct username,password,name,designation,department,institute,qualification,email,researchinterest from teammembers where user='admin'");
            String button = request.getParameter("button");
            boolean isLogin = true;
            if(button!=null){
                response.setHeader("Pragma","no-cache");
                response.setHeader("Cache-Control","no-store");
                response.setHeader("Expires","120"); 
                String userName = request.getParameter("userName");
                String passWord = request.getParameter("passWord");
                while(admin.next()){
                    if(userName!=null&&passWord!=null&&userName.equals(admin.getString("username"))&&passWord.equals(admin.getString("password"))){
                        isLogin = false;
                        session.setAttribute("image",admin.getString("username"));
                        session.setAttribute("view",admin.getString("username"));
                        session.setAttribute("addNewGrant",admin.getString("username"));
                        ResultSet rs = conn.createStatement().executeQuery("select distinct image from teammembers where username = '"+admin.getString("username")+"'");
        
      out.write("\n");
      out.write("                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("                            <div>\n");
      out.write("                                <em><h1 style=\"font-family: 'Montserrat';text-align: center;\">&#8203;Welcome ");
      out.print( admin.getString("name") );
      out.write("</h1></em>\n");
      out.write("                                <a href=\"");
      out.print("logOut.jsp");
      out.write("\"><button class=\"btn btn-danger btn-lg pull-right\" style=\"align: right;\">Log Out</button></a>\n");
      out.write("                            </div>\n");
      out.write("                            <table class=\"table table-bordered\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td rowspan=\"5\" style=\"width: 15%\">\n");
      out.write("                                        <img src=\"retrieveLoginImage.jsp\" alt=\"Image\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;");
      out.print( "  "+admin.getString("designation")+" , "+admin.getString("department")+" , "+admin.getString("institute") );
      out.write("<p>\n");
      out.write("                                        <br>\n");
      out.write("                                        <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Research Interest: </b>");
      out.print( "  "+admin.getString("researchinterest") );
      out.write("<p>\n");
      out.write("                                        <br>\n");
      out.write("                                        <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Qualification: </b>");
      out.print( "  "+admin.getString("qualification") );
      out.write("<p>\n");
      out.write("                                        <br>\n");
      out.write("                                        <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Email: </b>");
      out.print( "  "+admin.getString("email") );
      out.write("<p>    \n");
      out.write("                                        \n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                            <br><br>\n");
      out.write("                            <div style=\"text-align: center\">\n");
      out.write("        ");

                            ResultSet grants = conn.createStatement().executeQuery("select *,gl.name,gl.value,gl.link from teammembers,grantList gl where username='"+admin.getString("username")+"' and teammembers.grants=gl.value");
                            while(grants.next()){
        
      out.write("\n");
      out.write("                                <a href=\"");
      out.print( grants.getString("link") );
      out.write("\"><button class='btn btn-primary'>");
      out.print( grants.getString("gl.name") );
      out.write("</button></a>\n");
      out.write("        ");

                            }
                        
        
      out.write("\n");
      out.write("                                <br><br>\n");
      out.write("                                <a href=\"viewAllStudents.jsp\"><button class=\"btn btn-success\">View All Students</button></a>\n");
      out.write("                                <a href=\"viewAllPublication.jsp\"><button class=\"btn btn-success\">View All Publications</button></a>\n");
      out.write("                                <a href=\"viewAllDataScienceChallenge.jsp\"><button class=\"btn btn-success\">View All Data Science Challenge</button></a>\n");
      out.write("                                <a href=\"viewAllEvent.jsp\"><button class=\"btn btn-success\">View All Events</button></a>\n");
      out.write("                                <a href=\"viewAllNews.jsp\"><button class=\"btn btn-success\">View All News</button></a>\n");
      out.write("                                <a href=\"viewAllProject.jsp\"><button class=\"btn btn-success\">View All Projects</button></a>\n");
      out.write("                                <a href=\"viewAllTeamMember.jsp\"><button class=\"btn btn-success\">View All Team Members</button></a>\n");
      out.write("                                <a href=\"viewAllProjectOpening.jsp\"><button class=\"btn btn-success\">View All Project Opening</button></a>\n");
      out.write("                                <a href=\"viewAllStudentInternship.jsp\"><button class=\"btn btn-success\">View All Student Internship</button></a>\n");
      out.write("                            </div>\n");
      out.write("        ");

                    }
                }
                 if(isLogin){
                           response.sendRedirect("login.jsp");
                    }
            }else{
                   response.sendRedirect("login.jsp"); 
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
