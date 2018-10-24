package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class events_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("    <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("    <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Events</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("    td{\n");
      out.write("        font-family: 'Lora';\n");
      out.write("    }\n");
      out.write("<!--\n");
      out.write(".style1 {\n");
      out.write("\tcolor: #FFFFFF;\n");
      out.write("\tfont-size: 50px;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("        text-align: center;\n");
      out.write("\tfont-family: \"Courier New\", Courier, monospace;\n");
      out.write("}\n");
      out.write(".style2 {color: #FFFF00}\n");
      out.write(".style3 {\n");
      out.write("\tcolor: #666666;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("\tfont-family: \"Courier New\", Courier, monospace;\n");
      out.write("\tfont-size: 40px;\n");
      out.write("}\n");
      out.write(".style4 {\n");
      out.write("\tcolor: #666666;\n");
      out.write("\tfont-family: \"Courier New\", Courier, monospace;\n");
      out.write("\tfont-size: 40px;\n");
      out.write("}\n");
      out.write("-->\n");
      out.write("</style></head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("    ");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
        Statement st = conn.createStatement();
    
      out.write("\n");
      out.write("    <h1 style=\"font-family: 'Montserrat';text-align: center\">Events</h1>\n");
      out.write("    <br><br>\n");
      out.write("    <div style=\"width: 100%\">\n");
      out.write("        <div style=\"width: 50%;float: left\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                   <th valign=\"top\" scope=\"col\"><span class=\"style3\" >Ongoing Events </span></th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <ul>\n");
      out.write("                        ");

                            ResultSet ongoing = st.executeQuery("select * from events where enddate>(select now() from dual)");
                            while(ongoing.next()){
                        
      out.write("\n");
      out.write("                        <td><li>");
      out.print( ongoing.getString("name") );
      out.write("</li></td>\n");
      out.write("                        ");
        
                            }
                        
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"width: 50%;float: right\">\n");
      out.write("           <table>\n");
      out.write("                <tr>\n");
      out.write("                   <th valign=\"top\" scope=\"col\"><span class=\"style3\">Completed Events </span></th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    <ul><td>\n");
      out.write("                        ");

                            ResultSet completed = st.executeQuery("select * from events where enddate<(select now() from dual)");
                            while(completed.next()){
                        
      out.write("\n");
      out.write("                        <li>");
      out.print( completed.getString("name") );
      out.write("</li>\n");
      out.write("                        ");
        
                            }
                        
      out.write("\n");
      out.write("                    </td></ul>\n");
      out.write("                </tr>\n");
      out.write("            </table> \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
