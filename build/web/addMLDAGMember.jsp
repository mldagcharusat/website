<%-- 
    Document   : addMLDAGMember
    Created on : 14 Oct, 2018, 10:03:47 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            PreparedStatement ps;
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String studentId = request.getParameter("studentId");
            String institutionName = request.getParameter("institutionName");
            String gender = request.getParameter("gender");
            String graduation = request.getParameter("graduation");
            String semester = request.getParameter("semester");
            String cgpa = request.getParameter("cgpa");
            String aof = request.getParameter("aof");
            String reason = request.getParameter("reason");
            if(name.trim().length()>0&&email.trim().length()>0&&studentId.trim().length()>0&&institutionName.trim().length()>0&&gender.trim().length()>0&&graduation.trim().length()>0&&semester.trim().length()>0&&cgpa.trim().length()>0&&aof.trim().length()>0&&reason.trim().length()>0){
                ps = conn.prepareStatement("insert into mldagmember(name,email,studentid,institutename,gender,graduation,semester,cgpa,areaofinterest,reason) values(?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,name);
                ps.setString(2,email);
                ps.setString(3,studentId);
                ps.setString(4,institutionName);
                ps.setString(5,gender);
                ps.setString(6,graduation);
                ps.setString(7,semester);
                ps.setString(8,cgpa);
                ps.setString(9,aof);
                ps.setString(10,reason);
                ps.executeUpdate();
                response.sendRedirect("home.jsp");
            }else{
                response.sendRedirect("becomeAMember.jsp");
            }
        %>
    </body>
</html>
