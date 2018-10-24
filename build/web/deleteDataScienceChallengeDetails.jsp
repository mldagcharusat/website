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
                String oldTitle = request.getParameter("title");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from datasciencechallenge where title='"+oldTitle+"'");
                while(rs.next()){
             %>   
        <form action="executeDataScienceChallengeDelete.jsp" method="post">
             <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Update Data Science Challenge</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3>Update Title of the Challenge</h3></td>
                    <td><textarea name="title" id="title" disabled rows="5" cols="50"><%= rs.getString("title") %></textarea></td>
                </tr>
                <tr>
                    <td><h3>Update Brief Description</h3></td>
                    <td><textarea name="description" id="description" disabled rows="5" cols="50"><%= rs.getString("description") %></textarea></td>
                </tr>
                <tr>
                    <td><h3>Update Link for Google Form</h3></td>
                    <td><input type="text" name="form" id="form" value="<%= rs.getString("form") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>Update File(Google Drive Link)</h3></td>
                    <td><input type="text" name="file" id="file" value="<%= rs.getString("file") %>" disabled></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="oldTitle" value="<%= oldTitle %>"></td>
                </tr>
                <br> 
            </table>
            <input type="submit" name="button" value="Delete Details" class="btn btn-danger">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
