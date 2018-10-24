<%-- 
    Document   : executeStudentUpdate
    Created on : 25 Sep, 2018, 11:58:29 PM
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
            if(session.getAttribute("view")!=null){
                String button = request.getParameter("button");
               if(button!=null){
                   String oldTitle = request.getParameter("oldTilte");
                   String title = request.getParameter("title");
                   String desc = request.getParameter("description");
                   String form = request.getParameter("form");
                    String file = request.getParameter("file");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                    String query = "update datasciencechallenge set title='"+title+"',description='"+desc+"',form='"+form+"',file='"+file+"' where title='"+oldTitle+"'";
                    st.executeUpdate(query);
                    response.sendRedirect("viewAllDataScienceChallenge.jsp");
               }
            }
        %>
    </body>
</html>
