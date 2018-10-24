<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News</title>
        <style>
            td{
                font-family: 'Lora';
            }
        </style>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <h1 style="text-align: center;font-family: 'Montserrat'">News</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
        %>
        <br>
        <table class="table table-striped table-bordered">
            <tr>
                <th>News</th>
                <th>Details</th>
            </tr>
            <tr>
                <%
                    ResultSet news = st.executeQuery("select * from news");
                    while(news.next()){
                %>
                <td><%= news.getString("news") %></td>
                <td><a href="<%="//"+news.getString("file") %>"><button class='btn btn-success'>Show All Details</button></a></td>
                <%
                    }
                %>
            </tr>
        </table>
    </body>
</html>
