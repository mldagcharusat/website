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
                String pub = request.getParameter("pub");
                //out.print(pub);
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from publications where papertitle='"+pub+"'");
                while(rs.next()){
             %>   
        <form action="executePublicationDelete.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203; Details</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3> Paper Title</h3></td>
                    <td><textarea name="paperTitle" id="paperTitle"  rows="5" cols="50" disabled><%= rs.getString("papertitle") %></textarea></td>
                </tr>
                <tr>
                    <td><h3> Author</h3></td>
                    <td><input type="text" name="author" id="author" value="<%= rs.getString("author") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Co-Author</h3></td>
                    <td><input type="text" name="coAuthor" id="coAuthor" value="<%= rs.getString("coauthor") %>" disabled></td>
                </tr>
                 <tr>
                    <td><h3> Published In</h3></td>
                    <td><input type="text" name="year" id="year" value="<%= rs.getString("year") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Name of the Journal/Proceeding</h3></td>
                    <td><input type="text" name="journal" id="journal" value="<%= rs.getString("journal") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Volume</h3></td>
                    <td><input type="text" name="volume" id="volume" value="<%= rs.getString("volume") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Issue</h3></td>
                    <td><input type="text" name="issue" id="issue" value="<%= rs.getString("issue") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Page Number</h3></td>
                    <td><input type="text" name="pageNumber" id="pageNumber" value="<%= rs.getString("pagenumber") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> Name of the Publisher</h3></td>
                    <td><input type="text" name="publisher" id="publisher" value="<%= rs.getString("publisher") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3> File(Google Drive Link)</h3></td>
                    <td><input type="text" name="file" id="file" value="<%= rs.getString("file") %>" disabled></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="pub" value="<%= pub %>"></td>
                </tr>
                <br> 
            </table>
            <input type="submit" name="button" value="Delete Publication" class="btn btn-danger">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
