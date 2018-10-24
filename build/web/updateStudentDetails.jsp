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
        <title>Update Student Details</title>
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
        <form action="executeStudentUpdate.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Update Details</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3>Update Name of the Student</h3></td>
                    <td><input type="text" name="name" id="name" value="<%= student.getString("name") %>"></td>
    
                </tr>
                <tr>
                    <td><h3>Update Research Topic</h3></td>
                    <td><input type="text" name="topic" id="topic" value="<%= student.getString("topic") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Email Id</h3></td>
                    <td><input type="email" name="email" id="email" value="<%= student.getString("email") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Qualification</h3></td>
                    <td><input type="radio" name="qualification" value="B.Tech" checked>B.Tech
                    <input type="radio" name="qualification" value="M.Tech">M.Tech
                    <input type="radio" name="qualification" value="PHD">PHD</td>
                </tr>
                 <tr>
                    <td><h3>Update Link Of Google Scholar Profile</h3></td>
                    <td><input type="text" name="scholar" id="scholar" value="<%= student.getString("scholar") %>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="oldName" value="<%= oldName %>"></td>
                </tr>
                <br> 
            </table>
            <input type="submit" name="button" value="Update Details" class="btn btn-success">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
