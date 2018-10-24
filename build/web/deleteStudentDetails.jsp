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
        <title> Student Details</title>
    </head>
    <body>
        <%
            if(session.getAttribute("view")!=null){
                String oldName = request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet student = st.executeQuery("select * from students where name='"+oldName+"'");
                while(student.next()){
             %>   
        <form action="executeStudentDelete.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Delete Details</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3> Name of the Student</h3></td>
                    <td><input type="text" name="name" id="name" value="<%= student.getString("name") %>" disabled></td>
    
                </tr>
                <tr>
                    <td><h3> Research Topic</h3></td>
                    <td><input type="text" name="topic" id="topic" value="<%= student.getString("topic") %>"  disabled></td>
                </tr>
                <tr>
                    <td><h3> Email Id</h3></td>
                    <td><input type="email" name="email" id="email" value="<%= student.getString("email") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>Enter Qualification</h3></td>
                    <td><input type="radio" name="qualification" value="B.Tech" checked disabled>B.Tech
                    <input type="radio" name="qualification" value="M.Tech" disabled>M.Tech
                    <input type="radio" name="qualification" value="PHD" disabled>PHD</td>
                </tr>
                 <tr>
                    <td><h3> Link Of Google Scholar Profile</h3></td>
                    <td><input type="text" name="scholar" id="scholar" value="<%= student.getString("scholar") %>" disabled></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="oldName" value="<%= oldName %>"></td>
                </tr> 
            </table>
            <input type="submit" name="button" value="Delete Details" class="btn btn-danger">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
