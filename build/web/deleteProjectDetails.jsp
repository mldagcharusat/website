<%-- 
    Document   : updateDetails.jsp
    Created on : 25 Sep, 2018, 11:45:59 PM
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
        <title>  Student Details</title>
    </head>
    <body>
        <%
            if(session.getAttribute("view")!=null){
                String project = request.getParameter("project");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from projects where name='"+project+"'");
                while(rs.next()){
             %>   
             <form action="executeProjectDelete.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;  Project</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3>  Name of the Project</h3></td>
                    <td><textarea name="name" id="name" rows="5" cols="50" disabled><%= rs.getString("name") %></textarea></td>
                </tr>
                <tr>
                    <td><h3>  Name of the Students</h3></td>
                    <td><input type="text" name="students" id="students" value="<%= rs.getString("students") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Name of Faculty Co-Ordinator</h3></td>
                    <td><input type="text" name="faculty" id="faculty" value="<%= rs.getString("faculty") %>" disabled></td>
                </tr>
                 <tr>
                    <td><h3>Brief Description</h3></td>
                    <td><input type="text" name="description" id="description" value="<%= rs.getString("description") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Status of Project</h3></td>
                    <td><input type="radio" name="status" value="ongoing" checked disabled>Ongoing<br>
                    <input type="radio" name="status" value="completed" disabled>Completed</td>
                </tr>
                <tr>
                    <td><h3>  File(Google Drive Link)</h3></td>
                    <td><input type="text" name="file" id="file" value="<%= rs.getString("file") %>" disabled></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="project" value="<%= project %>"></td>
                </tr>
                <br> 
            </table>
            <input type="submit" name="button" value="Delete Project" class="btn btn-danger">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
