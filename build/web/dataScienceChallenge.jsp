<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Science Challenges</title>
        <style>
            td{
                font-family: 'Lora';
            }
        </style>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <h1 style="text-align: center;font-family: 'Montserrat'">Data Science Challenges</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
        %>
        <br>
        <table class="table table-striped table-bordered">
            <tr>
                <th>Challenge</th>
                <th>Brief Description</th>
                <th>Details</th>
                <th>Apply</th>
            </tr>
            <tr>
                <%
                    ResultSet dsc = st.executeQuery("select * from datasciencechallenge");
                    while(dsc.next()){
                %>
                <td><%= dsc.getString("title") %></td>
                <td><%= dsc.getString("description") %></td>
                <td><a href="<%="//"+dsc.getString("file") %>"><button class='btn btn-success'>Show All Details</button></a></td>
                <td><a href="<%="//"+dsc.getString("form") %>"><button class='btn btn-info'>Join Now</button></a></td>
                <%
                    }
                %>
            </tr>
        </table>
    </body>
</html>
