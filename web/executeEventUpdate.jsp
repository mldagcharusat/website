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
                   String oldName = request.getParameter("oldName");
                   String sd = request.getParameter("startdate");
                   String ed = request.getParameter("enddate");
                   String name = request.getParameter("name");
                   String level = request.getParameter("level");
                   String type = request.getParameter("type");
                   String audience = request.getParameter("audience");
                   String startDate = request.getParameter("startDate");
                   String endDate = request.getParameter("endDate");
                   String organizingBody = request.getParameter("organizingBody");
                   String venue = request.getParameter("venue");
                   String city = request.getParameter("city");
                   String state = request.getParameter("state");
                   String country = request.getParameter("country");
                   String sponcoringAgency = request.getParameter("sponcoringAgency");
                   String file = request.getParameter("file");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                   String query = "update events set name='"+name+"',level='"+level+"',type='"+type+"',audience='"+audience+"',startdate='"+startDate+"',enddate='"+endDate+"',organizingbody='"+organizingBody+"',venue='"+venue+"',city='"+city+"',state='"+state+"',country='"+country+"',sponcoringagency='"+sponcoringAgency+"',file='"+file+"' where name='"+oldName+"' and startdate='"+sd+"' and enddate='"+ed+"'";
                    int cnt = st.executeUpdate(query);
                    out.print(cnt);
                   response.sendRedirect("viewAllEvent.jsp");
               }
            }
        %>
    </body>
</html>
