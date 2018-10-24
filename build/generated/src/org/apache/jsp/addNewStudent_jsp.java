package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class addNewStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Add New Student - MLDAG Charusat</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            boolean isGrant = true;
            if(session.getAttribute("addNewGrant")!=null){
                String user = session.getAttribute("addNewGrant").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                PreparedStatement ps;
                Statement st = conn.createStatement();
                ResultSet grants = st.executeQuery("select grants from teammembers where username='"+user+"'");
                while(grants.next()){
                    if(grants.getString("grants").equals("addProject")){
                        isGrant = false;
                        String name = request.getParameter("name");
                        String topic = request.getParameter("topic");
                        String email = request.getParameter("email");
                        String scholar = request.getParameter("scholar");
                        String qualification = request.getParameter("qualification");
                        String image = request.getParameter("image");
                        File f = new File("D:/SGP-Sem5/charusat-research-website/web/students/"+image);
                        FileInputStream fis = new FileInputStream(f);
                        if(name.trim().length()>0&&topic.trim().length()>0&&email.trim().length()>0&&qualification.trim().length()>0&&scholar.trim().length()>0&&image.trim().length()>0){
                            ps = conn.prepareStatement("insert into students(name,email,scholar,topic,qualification,image) " + "values(?,?,?,?,?,?)");
                                ps.setString(1,name);
                                ps.setString(2,email);
                                ps.setString(3,scholar);
                                ps.setString(4,topic);
                                ps.setString(5,qualification);
                                ps.setBinaryStream(6,(InputStream)fis,(int)(f.length()));
                                ps.executeUpdate();
                                session.removeAttribute("addNewGrant");
                                session.invalidate();
                                response.sendRedirect("login.jsp");
                        }else{
                            response.sendRedirect("addNewStudent.html");
                        }
                    }
                }
                    if(isGrant){
            
      out.write("\n");
      out.write("                        <h3 style=\"color: red\">You do not have the grants to add new publication.Contact Admin to provide you this grant</h3>\n");
      out.write("                        <a href=\"login.jsp\">Click Here to go to login Page</a>\n");
      out.write("            ");

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
