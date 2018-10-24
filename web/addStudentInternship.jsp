<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String email = request.getParameter("email");
    String sid = request.getParameter("sid");
    String name = request.getParameter("name");
    String organization = request.getParameter("organization");
    String semester = request.getParameter("semester");
    String project = request.getParameter("project");
    String sop = request.getParameter("sop");
    String aof = request.getParameter("aof");
    if(email.trim().length()>0&&sop.trim().length()>0&&sid.trim().length()>0&&name.trim().length()>0&&organization.trim().length()>0&&semester.trim().length()>0&&aof.trim().length()>0&&project.trim().length()>0){
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
        PreparedStatement ps = conn.prepareStatement("insert into studentinternship(email,studentid,name,organization,semester,project,areaofinterest,sop) values(?,?,?,?,?,?,?,?)");
        ps.setString(1, email);
        ps.setString(2, sid);
        ps.setString(3, name);
        ps.setString(4, organization);
        ps.setString(5, semester);
        ps.setString(6, project);
        ps.setString(7,aof);
        ps.setString(8,sop);
        ps.executeUpdate();
%>
<html><body><h4>You Have Successfully Applied.</h4><br><p>To Return to Home Page click <a href="home.jsp"   >here</a></p></body></html>
<%
    response.sendRedirect("home.jsp");
    }else{
        response.sendRedirect("applyNow.jsp");
    }
%>