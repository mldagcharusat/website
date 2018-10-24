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
        <h1 style="text-align: center;font-family: 'Montserrat'">&#8203;All Students</h1>
        <%
            if(session.getAttribute("view")!=null){
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet student = st.executeQuery("select * from students");
        %>
        <table class="table table-striped" border="1px solid black">
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Email Id</th>
                <th>Research Topic</th>
                <th>Email</th>
                <th>Qualification</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        <%
            while(student.next()){
        %>
                    
                        <tr>
                            <td style="width:20%"><img  style="width:30%;height:30%" src="http://localhost:8080/charusat-research-website/retrieveStudentImage.jsp?student=<%= student.getString("name") %>" /></td>
                            <td><%= student.getString("name") %></td>
                            <td><%= student.getString("email") %></td>
                            <td><%= student.getString("qualification") %></td>
                            <td><%= student.getString("topic") %></td>
                            <td><%= student.getString("scholar") %></td>
                            <td><a href="updateStudentDetails.jsp?name=<%= student.getString("name") %>"><button class="btn btn-info">Update</button></a></td>
                            <td><a href="deleteStudentDetails.jsp?name=<%= student.getString("name") %>"><button class="btn btn-danger">Delete</button></a></td>
                            
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
