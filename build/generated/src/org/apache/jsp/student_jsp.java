package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class student_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <style>\n");
      out.write("        tr{\n");
      out.write("            width: 10%;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <head>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Student-MLDAG Charusat</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("        <br><br>\n");
      out.write("        <h1 style=\"text-align: center;font-family: 'Montserrat'\">Meet Our Research Scholar</h1>\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from students where qualification='PHD'");
                while(rs.next()){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <img src=\"retrieveStudentImage.jsp?student=");
      out.print( rs.getString("name") );
      out.write("\" />\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Name: </b><em style=\"font-size: 22px\">");
      out.print( rs.getString("name") );
      out.write("</em><p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Research Topic: </b>");
      out.print( "  "+rs.getString("topic") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Qualification: </b>");
      out.print( "  "+rs.getString("qualification") );
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Email: </b>");
      out.print( "  "+rs.getString("email") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <a href=\"");
      out.print( "//"+rs.getString("scholar"));
      out.write("\"><p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;Google Scholar Profile<p></a>    \n");
      out.write("                                        \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
                ResultSet rs1 = st.executeQuery("select * from students where qualification='M.Tech'");
                while(rs1.next()){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <img src=\"retrieveStudentImage.jsp?student=");
      out.print( rs1.getString("name") );
      out.write("\" />\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Name: </b><em style=\"font-size: 22px\">");
      out.print( rs1.getString("name") );
      out.write("</em><p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Research Topic: </b>");
      out.print( "  "+rs1.getString("topic") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Qualification: </b>");
      out.print( "  "+rs1.getString("qualification") );
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Email: </b>");
      out.print( "  "+rs1.getString("email") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <a href=\"");
      out.print( "//"+rs1.getString("scholar"));
      out.write("\"><p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;Google Scholar Profile<p></a>    \n");
      out.write("                                        \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
                ResultSet rs2 = st.executeQuery("select * from students where qualification='B.Tech'");
                while(rs2.next()){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <img src=\"retrieveStudentImage.jsp?student=");
      out.print( rs2.getString("name") );
      out.write("\" />\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Name: </b><em style=\"font-size: 22px\">");
      out.print( rs2.getString("name") );
      out.write("</em><p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Research Topic: </b>");
      out.print( "  "+rs2.getString("topic") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Qualification: </b>");
      out.print( "  "+rs2.getString("qualification") );
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;<b>Email: </b>");
      out.print( "  "+rs2.getString("email") );
      out.write("<p>\n");
      out.write("                    <br>\n");
      out.write("                    <a href=\"");
      out.print( "//"+rs2.getString("scholar"));
      out.write("\"><p style=\"font-family: 'Lora';font-size: 20px;\">&#8203;Google Scholar Profile<p></a>    \n");
      out.write("                                        \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </table>\n");
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
