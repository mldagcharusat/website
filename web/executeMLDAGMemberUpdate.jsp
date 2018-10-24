<%-- 
    Document   : executeStudentUpdate
    Created on : 25 Sep, 2018, 11:58:29 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("view")!=null){
                String button = request.getParameter("button");
               if(button!=null){
                   String email = request.getParameter("email");
                   String studentId = request.getParameter("studentId");
                   String name = request.getParameter("name");
                   String institutionName = request.getParameter("institutionName");
                   String semester = request.getParameter("semester");
                   String gender = request.getParameter("gender");
                   String graduation = request.getParameter("graduation");
                   String cgpa = request.getParameter("cgpa");
                   String reason = request.getParameter("reason");
                   String aof = request.getParameter("aof");
                   String oldSid = request.getParameter("oldSid");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                   String query = "update mldagmember set areaofinterest='"+aof+"',name='"+name+"',email='"+email+"',studentid='"+studentId+"',institutename='"+institutionName+"',semester='"+semester+"',gender='"+gender+"',graduation='"+graduation+"',cgpa='"+cgpa+"',reason='"+reason+"' where studentid='"+oldSid+"'";
                    st.executeUpdate(query);
                    response.sendRedirect("viewAllMLDAGMember.jsp");
               }
            }
        %>
    </body>
</html>
