package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class applyNow_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            td{\n");
      out.write("                font-family: 'Lora';\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("        <h1 style=\"text-align: center;font-family: 'Montserrat'\">Student Internship Form</h1>\n");
      out.write("        <form action='addStudentInternship.jsp' method=\"post\">\n");
      out.write("            <br>\n");
      out.write("            <p>\n");
      out.write("                Event Timing: 6 months<br>\n");
      out.write("                Event Address: CSPIT, Changa<br>\n");
      out.write("                Contact us at mldag.charusat@gmail.com\n");
      out.write("            </p>\n");
      out.write("            <table class=\"table table-striped table-bordered\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3><h3>Enter Email Id</td>\n");
      out.write("                    <td><input type=\"text\" name='email' id=\"email\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Enter Student Id</td>\n");
      out.write("                    <td><input type=\"text\" name='sid' id=\"sid\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Enter Name</td>\n");
      out.write("                    <td><input type=\"text\" name='name' id=\"name\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Enter Organization</td>\n");
      out.write("                    <td><input type=\"text\" name='organization' id=\"organization\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Enter Current Semester</td>\n");
      out.write("                            <td><select name=\"semester\" required>\n");
      out.write("                                    <option value=\"1\">1</option>\n");
      out.write("                                    <option value=\"2\">2</option>\n");
      out.write("                                    <option value=\"3\">3</option>\n");
      out.write("                                    <option value=\"4\">4</option>\n");
      out.write("                                    <option value=\"5\">5</option>\n");
      out.write("                                    <option value=\"6\">6</option>\n");
      out.write("                                    <option value=\"7\">7</option>\n");
      out.write("                                    <option value=\"8\">8</option>\n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>What Project Will You Select</td>\n");
      out.write("                            <td><select name='project' required>\n");
      out.write("                                    ");

                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                                        Statement st = conn.createStatement();
                                        ResultSet rs = st.executeQuery("select * from projectopening");
                                        while(rs.next()){
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print( rs.getString("title") );
      out.write('"');
      out.write('>');
      out.print( rs.getString("title") );
      out.write("</option>\n");
      out.write("                                    ");
        
                                        }
                                    
      out.write("\n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td><h3>Enter Area of Interest</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"aof\" id=\"aof\" required></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-info\" name='button' value=\"Apply Now\">\n");
      out.write("        </form>\n");
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
