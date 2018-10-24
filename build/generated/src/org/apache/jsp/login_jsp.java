package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("            h1{\n");
      out.write("                text-align: center;\n");
      out.write("                font-family: 'Montserrat';\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                font-family: 'Montserrat';\n");
      out.write("                color: blue;\n");
      out.write("            }\n");
      out.write("            h4{\n");
      out.write("                font-family: 'Lora';\n");
      out.write("                color : red;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                width: 33%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <title>Login Page-MLDAG Charusat</title>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <h1>Login Page</h1>\n");
      out.write("        <br><br><br>\n");
      out.write("        <table class=\"table table-striped table-bordered\">\n");
      out.write("            <tr>\n");
      out.write("                <td><h3>For Add User And Grant Permission</h3></td>\n");
      out.write("                <td><h3>Admin Login</h3></td>\n");
      out.write("                <td><h3>Team Member Login</h3></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                <form action=\"adminGrantLogin.jsp\" method=\"post\">\n");
      out.write("                    \n");
      out.write("                    <h4>Enter Username: </h4>\n");
      out.write("                    <input type=\"text\" name=\"userName\" id=\"userName\">\n");
      out.write("                    <h4>Enter Password </h4>\n");
      out.write("                    <input type=\"password\" name=\"passWord\" id=\"passWord\">\n");
      out.write("                    <br><br>\n");
      out.write("                    <input type=\"submit\" name=\"button\" value=\"Add User and Grant Permission\">\n");
      out.write("                </form>\n");
      out.write("                </td>\n");
      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <form action='adminLogin.jsp' method=\"post\">\n");
      out.write("                    \n");
      out.write("                    <h4>Enter Username: </h4>\n");
      out.write("                    <input type=\"text\" name=\"userName\" id=\"userName\">\n");
      out.write("                    <h4>Enter Password </h4>\n");
      out.write("                    <input type=\"password\" name=\"passWord\" id=\"passWord\">\n");
      out.write("                    <br><br>\n");
      out.write("                    <input type=\"submit\" name ='button' value=\"Admin Login\">\n");
      out.write("                </form>\n");
      out.write("                </td>\n");
      out.write("        \n");
      out.write("                <td>\n");
      out.write("                <form action=\"teamMemberLogin.jsp\" method=\"post\">\n");
      out.write("                    \n");
      out.write("                    <h4>Enter Username: </h4>\n");
      out.write("                    <input type=\"text\" name=\"userName\" id=\"userName\">\n");
      out.write("                    <h4>Enter Password </h4>\n");
      out.write("                    <input type=\"password\" name=\"passWord\" id=\"passWord\">\n");
      out.write("                    <br><br>\n");
      out.write("                    <input type=\"submit\" name ='button' value=\"Member Login\">\n");
      out.write("                </form>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
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
