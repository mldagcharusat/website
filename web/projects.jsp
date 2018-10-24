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
        <h1 style="text-align: center;font-family: 'Montserrat'">Projects</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
        %>
        <br>
        <div style="width: 100%">
            <div style="width: 50%;float: left">
                <h3 style="font-family: 'Montserrat'"><u>Ongoing</u></h3>
                 <table class="table table-striped table-bordered">
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Students</th>
                        <th>Faculty</th>
                        <th>Details</th>
                    </tr>
                    <tr>
                        <%
                            ResultSet projects = st.executeQuery("select * from projects where status='ongoing'");
                            while(projects.next()){
                        %>
                        <td><%= projects.getString("name") %></td>
                        <td><%= projects.getString("description") %></td>
                        <td><%= projects.getString("students") %></td>
                        <td><%= projects.getString("faculty") %></td>
                        <td><a href="<%="//"+projects.getString("file") %>"><button class='btn btn-success'>Show All Details</button></a></td>
                        <%
                            }
                        %>
                    </tr>
                </table>
            </div>
            <div style="width: 50%;float: right">
                <h3 style="font-family: 'Montserrat'"><u>Completed</u></h3>
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Students</th>
                        <th>Faculty</th>
                        <th>Details</th>
                    </tr>
                    <tr>
                        <%
                            ResultSet completed = st.executeQuery("select * from projects where status='completed'");
                            while(completed.next()){
                        %>
                        <td><%= completed.getString("name") %></td>
                        <td><%= completed.getString("description") %></td>
                        <td><%= completed.getString("students") %></td>
                        <td><%= completed.getString("faculty") %></td>
                        <td><a href="<%="//"+completed.getString("file") %>"><button class='btn btn-success'>Show All Details</button></a></td>
                        <%
                            }
                        %>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
