package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class viewAllTeamMember_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <style>\n");
      out.write("            tr{\n");
      out.write("                height: 20%;\n");
      out.write("            }\n");
      out.write("            image{\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("        <br><br>\n");
      out.write("        <h1 style=\"text-align: center;font-family: 'Montserrat'\">&#8203;All Students</h1>\n");
      out.write("        ");

            if(session.getAttribute("view")!=null){
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from teammembers");
        
      out.write("\n");
      out.write("        <table class=\"table table-striped\" border=\"1px solid black\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Image</th>\n");
      out.write("                <th>Name</th>\n");
      out.write("                <th>Email Id</th>\n");
      out.write("                <th>Research Interest</th>\n");
      out.write("                <th>Department</th>\n");
      out.write("                <th>Update</th>\n");
      out.write("                <th>Delete</th>\n");
      out.write("            </tr>\n");
      out.write("        ");

            while(rs.next()){
        
      out.write("\n");
      out.write("                    \n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"width:20%\"><img  style=\"width:30%;height:30%\" src=\"http://localhost:8080/charusat-research-website/retrieveTeamImage.jsp?member=");
      out.print( rs.getString("name") );
      out.write("\" /></td>\n");
      out.write("                            <td>");
      out.print( rs.getString("name") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("email") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("researchinterest") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("scholar") );
      out.write("</td>\n");
      out.write("                            <td><a href=\"updateTeamMemberDetails.jsp?name=");
      out.print( rs.getString("name") );
      out.write("\"><button class=\"btn btn-info\">Update</button></a></td>\n");
      out.write("                            <td><a href=\"deleteTeamMemberDetails.jsp?name=");
      out.print( rs.getString("name") );
      out.write("\"><button class=\"btn btn-danger\">Delete</button></a></td>\n");
      out.write("                            \n");
      out.write("                        </tr>\n");
      out.write("        ");

                }
        
      out.write("\n");
      out.write("        </table>\n");
      out.write("        ");

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
