package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class deleteTeamMemberDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Update Student Details</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if(session.getAttribute("view")!=null){
                String oldName = request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                Statement st2 = conn.createStatement();
                Statement st3 = conn.createStatement();
                ResultSet gt = st3.executeQuery("select grants from teammembers where name='"+oldName+"'");
                ResultSet grants = st2.executeQuery("select * from grantList");
                ResultSet rs = st.executeQuery("select distinct username,password,user,name,researchinterest,email,designation,qualification,department,institute from teammembers where name='"+oldName+"'");
                while(rs.next()){
             
      out.write("   \n");
      out.write("             <form action=\"executeTeamMemberDelete.jsp\" method=\"post\">\n");
      out.write("                 <h1 style=\"font-family: 'Montserrat';text-align: center\">&#8203;Update Team Member</h1>\n");
      out.write("            <table class=\"table table-bordered table-striped\" style=\"font-family: 'Lora';width:1500px;height: 100%\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Username:</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"userName\" id=\"userName\" value=\"");
      out.print( rs.getString("username") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Password:</h3></td>\n");
      out.write("                    <td><input type=\"password\" name=\"passWord\" id=\"passWord\" value=\"");
      out.print( rs.getString("password") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Name</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" id=\"name\" value=\"");
      out.print( rs.getString("name") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Designation</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"designation\" id=\"designation\" value=\"");
      out.print( rs.getString("designation") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Department</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"department\" id=\"department\" value=\"");
      out.print( rs.getString("department") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Institute</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"institute\" id=\"institute\" value=\"");
      out.print( rs.getString("institute") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Qualification</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"qualification\" id=\"qualification\" value=\"");
      out.print( rs.getString("qualification") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Research Interests</h3></td>\n");
      out.write("                    <td><input type=\"text\" name=\"rs\" id=\"rs\" value=\"");
      out.print( rs.getString("researchinterest") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Update Email Id</h3></td>\n");
      out.write("                    <td><input type=\"email\" name=\"email\" id=\"email\" value=\"");
      out.print( rs.getString("email") );
      out.write("\" disabled></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Choose User Type</h3></td>\n");
      out.write("                    <td>\n");
      out.write("                    ");

                        if(rs.getString("user").equals("admin")){
                    
      out.write("\n");
      out.write("                        <input type=\"radio\" name=\"userType\" id=\"userType\" value=\"admin\" checked disabled>Admin<br>\n");
      out.write("                        <input type=\"radio\" name=\"userType\" id=\"userType\" value=\"teamMember\" disabled>Team Member\n");
      out.write("                    ");
    }else{
                    
      out.write("\n");
      out.write("                        <input type=\"radio\" name=\"userType\" id=\"userType\" value=\"admin\" disabled>Admin<br>\n");
      out.write("                        <input type=\"radio\" name=\"userType\" id=\"userType\" value=\"teamMember\" checked disabled>Team Member\n");
      out.write("                    ");

                          }
                    
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Grant Permission</h3></td>\n");
      out.write("                    <td>\n");
      out.write("                         ");

                            while(grants.next()){
                        
      out.write("\n");
      out.write("                            <div class=\"checkbox\">\n");
      out.write("                                <label><input type=\"checkbox\" name=\"grants\" value=\"");
      out.print( grants.getString("value") );
      out.write("\" disabled>");
      out.print( grants.getString("name") );
      out.write("</label>\n");
      out.write("                          </div>\n");
      out.write("                         ");

                             }
                         
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h3>Grants</h3></td>\n");
      out.write("                    <td>\n");
      out.write("                        ");

                            while(gt.next()){
                                out.println(gt.getString("grants")+" ,  ");
                            }
                        
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"hidden\" name=\"name\" value=\"");
      out.print( oldName );
      out.write("\"></td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("                <input type=\"submit\" name=\"button\" value=\"Delete Team Member\" class=\"btn btn-danger\">\n");
      out.write("        </form>\n");
      out.write("        ");

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
