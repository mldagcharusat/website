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
                   String paperTitle = request.getParameter("paperTitle");
                   String author = request.getParameter("author");
                   String coAuthor = request.getParameter("coAuthor");
                   String year = request.getParameter("year");
                   String journal = request.getParameter("journal");
                   String volume = request.getParameter("volume");
                   String issue = request.getParameter("issue");
                   String pageNumber = request.getParameter("pageNumber");
                   String publisher = request.getParameter("publisher");
                   String file = request.getParameter("file");
                    String pub = request.getParameter("pub");
                    out.print(pub);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                   String query = "update publications set papertitle='"+paperTitle+"',author='"+author+"',coauthor='"+coAuthor+"',year='"+year+"',journal='"+journal+"',volume='"+volume+"',issue='"+issue+"',pagenumber='"+pageNumber+"',publisher='"+publisher+"',file='"+file+"' where papertitle='"+pub+"'";
                    st.executeUpdate(query);
                    response.sendRedirect("viewAllPublication.jsp");
               }
            }
        %>
    </body>
</html>
