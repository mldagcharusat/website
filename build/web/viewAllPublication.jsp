<%-- 
    Document   : viewAllStudents
    Created on : 25 Sep, 2018, 9:09:53 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            tr{
                height: 20%;
            }
            image{
                
            }
        </style>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <br><br>
        <h1 style="text-align: center;font-family: 'Montserrat'">&#8203;All Publications</h1>
        <%
            if(session.getAttribute("view")!=null){
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet publication = st.executeQuery("select * from publications");
        %>
        <table class="table table-striped" border="1px solid black">
            <tr>
                <th>Paper Title</th>
                <th>Author</th>
                <th>Co-Author</th>
                <th>Year</th>
                <th>Publisher</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        <%
            while(publication.next()){
        %>
                    
                        <tr>
                            <td><%= publication.getString("papertitle") %></td>
                            <td><%= publication.getString("author") %></td>
                            <td><%= publication.getString("coauthor") %></td>
                            <td><%= publication.getString("year") %></td>
                            <td><%= publication.getString("publisher") %></td>
                            <td><a href="updatePublicationDetails.jsp?pub=<%= publication.getString("papertitle") %>"><button class="btn btn-info">Update</button></a></td>
                            <td><a href="deletePublicationDetails.jsp?pub=<%= publication.getString("papertitle") %>"><button class="btn btn-danger">Delete</button></a></td>
                            
                        </tr>
        <%
                }
        %>
        </table>
        <%
            }else{
                 response.sendRedirect("login.jsp");
                }
        %>
    </body>
</html>
