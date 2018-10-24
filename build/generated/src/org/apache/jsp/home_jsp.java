package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>MLDAG CHARUSAT - Home</title>\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"./css/home.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
        
      out.write("\n");
      out.write("\t\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dropdownMenu.jsp", out, false);
      out.write("\n");
      out.write("        <br><br><br><br>\n");
      out.write("\t<div style=\"background-color: black;color: white\">\n");
      out.write("\t\t<div id=\"qr\" style=\"display:inline-block; min-width:2.2cm; height:7cm; align: center;vertical-align: middle;\" >\n");
      out.write("\t\t  <img src=\"./images/ml-Logo.jpg\" style=\"height:7cm;\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div style=\"display:inline-block;vertical-align: middle;\">\n");
      out.write("\t\t  <h2 style=\"font-family:'Montserrat';font-size: 35px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i><u>Machine Learning Data Analytics Group</u></i></h2><br>\n");
      out.write("\t\t\t<p style=\"font-family: 'Lora';font-size: 22px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\"There is no reason and no way that a human mind can keep up with an artificial intelligence\"<br>\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Gary Scott\n");
      out.write("\t\t</p></div>\n");
      out.write("\t</div>\n");
      out.write("\t<br>\n");
      out.write("        <table><tr>\n");
      out.write("                <td><div>\n");
      out.write("\t\t\t<h1 style=\"font-family: 'Montserrat';\">Welcome To MLDAG</h1>\n");
      out.write("\t\t\t<em><span style=\"font-family:'Lora';font-size: 16px\">&#8203;Welcome to the Machine Learning and Data Analytics Group (MLDAG). We are a small group of researchers with shared interests in machine learning and Data Analytics. We work on a variety of topics spanning theoretical foundations, algorithms, and applications tools.</span></em>\n");
      out.write("                    </div></td>\n");
      out.write("                    <td><div class=\"slideshow-container\">\n");
      out.write("                            <div class=\"mySlides fade\"><img src=\"./images/ss1.jpg\" alt=\"Image\" align=\"left\"></div>\n");
      out.write("                            <div class=\"mySlides fade\"><img src=\"./images/ss2.png\" style=\"width: 100%;height: 100%;\"></div>\n");
      out.write("                            <div class=\"mySlides fade\"><img src=\"./images/ss3.jpg\"></div>\n");
      out.write("                            <div class=\"mySlides fade\"><img src=\"./images/ss4.jpg\"></div>\n");
      out.write("                            <div class=\"mySlides fade\"><img src=\"./images/ss5.png\"></div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t  <div style=\"text-align:center\">\n");
      out.write("\t\t\t\t  <span class=\"dot\"></span> \n");
      out.write("\t\t\t\t  <span class=\"dot\"></span> \n");
      out.write("\t\t\t\t  <span class=\"dot\"></span>\n");
      out.write("\t\t\t\t  <span class=\"dot\"></span>\n");
      out.write("\t\t\t\t  <span class=\"dot\"></span> \n");
      out.write("                          </div> \n");
      out.write("                    </div></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\t\n");
      out.write("                <td><div>\n");
      out.write("\t\t\t<h1 style=\"font-family: 'Montserrat';\">Recent Publications</h1>\n");
      out.write("                        <ul>\n");
      out.write("                            ");

                                int publicationCnt=1;
                                ResultSet publication = st.executeQuery("select * from publications order by year desc");
                                while(publication.next()&&publicationCnt<=2){
      out.write("\n");
      out.write("                                <em><div style=\"text-align:justify;font-family: 'Lora';font-size: 16px\">&#8203;<li>");
      out.print(publication.getString("author")+" "+publication.getString("coauthor")+"  '"+publication.getString("papertitle")+"'  "+publication.getString("journal")+" "+publication.getString("volume")+" "+publication.getString("issue")+" "+publication.getString("year")+" "+publication.getString("publisher") );
      out.write("</li>\n");
      out.write("                             ");
 publicationCnt++;}
                                  
                            
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"publications.jsp\">more..</a>\n");
      out.write("                                    </div></em></ul>\t\n");
      out.write("                    </div></td>\n");
      out.write("                    <td><div>\n");
      out.write("\t\t\t<h1 style=\"font-family: 'Montserrat'\">Data Science Challenges</font></h1>\n");
      out.write("                        <em><div style=\"text-align:justify;font-family: 'Lora';font-size: 16px\"><ul>\n");
      out.write("                                ");

                                    ResultSet dsc = st.executeQuery("select * from datasciencechallenge");
                                    while(dsc.next()){
                                
      out.write("\n");
      out.write("                                <li>");
      out.print( dsc.getString("title") );
      out.write("</li>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                                <a href=\"dataScienceChallenge.jsp\">more..</a>\n");
      out.write("                                </ul></div></em>\n");
      out.write("                        </div></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td rowspan=\"2\"><div>\n");
      out.write("                <h1 style=\"font-family: 'Montserrat';\">Project Opening</h1>\n");
      out.write("                <ul>\n");
      out.write("                ");

                    int projectCnt=1;
                    ResultSet projects = st.executeQuery("select * from projectopening");
                    while(projects.next()&&projectCnt<=4){
      out.write("\n");
      out.write("                    <li><em><div style=\"text-align: justify;font-family: 'Lora';font-size: 16px;color:red;\">&#8203;");
      out.print(projectCnt+". "+projects.getString("title"));
      out.write("</li>\n");
      out.write("                 ");
   }
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <br><br>\n");
      out.write("                <a href=\"applyNow.jsp\"><button class=\"btn btn-success\">Apply Now</button></a>\n");
      out.write("                                </div></em></a></ul>\n");
      out.write("                    </div></td>\n");
      out.write("                    <td><div><ul>\n");
      out.write("                    <h1 style=\"font-family: 'Montserrat';\">Upcoming Events</h1>\n");
      out.write("                    ");

                        int eventCnt=1;
                        ResultSet events = st.executeQuery("select * from events");
                        while(events.next()&&eventCnt<=2){
      out.write("\n");
      out.write("                        <li><em><div style=\"text-align: justify;font-family: 'Lora';font-size: 16px\">&#8203;");
      out.print(events.getString("name"));
      out.write("</li>\n");
      out.write("                    ");
    }
                    
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <a href='events.jsp'>more..</a>\n");
      out.write("                            </div></em></ul>\n");
      out.write("                        </div></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <td><div><ul>\n");
      out.write("                    <h1 style=\"font-family: 'Montserrat';\">News</h1>\n");
      out.write("                     ");

                        int newsCnt=1;
                        ResultSet news = st.executeQuery("select * from news");
                        while(news.next()&&eventCnt<=2){
      out.write("\n");
      out.write("                        <li><em><div style=\"text-align: justify;font-family: 'Lora';font-size: 16px\">&#8203;");
      out.print(news.getString("news"));
      out.write("</li>\n");
      out.write("                    ");
    }
                    
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <a href='news.jsp'>more..</a><br><br>\n");
      out.write("                            <a href=\"becomeAMember.jsp\"><button class=\"btn btn-primary\">Become A Member</button></a>\n");
      out.write("                            </div></em></ul>\n");
      out.write("                            </div></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("\t\n");
      out.write("                   \n");
      out.write("                            \n");
      out.write("\t<script>\n");
      out.write("\t\tvar slideIndex = 0;\n");
      out.write("\t\tshowSlides();\n");
      out.write("                \n");
      out.write("\t\tfunction showSlides() {\n");
      out.write("\t\t    var i;\n");
      out.write("\t\t    var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("\t\t    var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("\t\t    for (i = 0; i < slides.length; i++) {\n");
      out.write("\t\t       slides[i].style.display = \"none\";  \n");
      out.write("\t\t    }\n");
      out.write("\t\t    slideIndex++;\n");
      out.write("\t\t    if (slideIndex > slides.length) {slideIndex = 1}    \n");
      out.write("\t\t    for (i = 0; i < dots.length; i++) {\n");
      out.write("\t\t        dots[i].className = dots[i].className.replace(\" active\", \"\");\n");
      out.write("\t\t    }\n");
      out.write("\t\t    slides[slideIndex-1].style.display = \"block\";  \n");
      out.write("\t\t    dots[slideIndex-1].className += \" active\";\n");
      out.write("\t\t    setTimeout(showSlides, 2000); // Change image every 2 seconds\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("</body>\n");
      out.write("</html>");
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
