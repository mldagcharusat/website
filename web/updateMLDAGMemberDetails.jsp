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
                String sid = request.getParameter("sid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from mldagmember where studentid='"+sid+"'");
                while(rs.next()){
             %>   
        <form action="executeMLDAGMemberUpdate.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Update Details</h1>
            <table class="table table-striped table-bordered">
                <tr>
                    <td><h3>Update Email Address</h3></td>
                    <td><input type="text" name="email" id="email" value="<%= rs.getString("email") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Student Id</h3></td>
                    <td><input type="text" name="studentId" id="studentId" value="<%= rs.getString("studentid") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Student Name</h3></td>
                    <td><input type="text" name="name" id="name" value="<%= rs.getString("name") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update College Name(Institution Name)</h3></td>
                    <td><input type="text" name="institutionName" id="institutionName" value="<%= rs.getString("institutename") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Gender</h3></td>
                    <td><input type="radio" name="gender" id="gender" checked value="male">Male<br>
                    <input type="radio" name="gender" id="gender" value="female">Female</td>
                </tr>
                <tr>
                    <td><h3>Update Graduation Level</h3></td>
                    <td><input type="radio" name="graduation" id="graduation" checked value="btech">B.Tech<br>
                        <input type="radio" name="graduation" id="graduation" value="mtech">M.Tech<br>
                    <input type="radio" name="graduation" id="graduation" value="phd">PHD</td>
                </tr>
                <tr>
                    <td><h3>Update Current Semester</td>
                            <td><select name="semester">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                        </select></td>
                </tr>
                 <tr>
                    <td><h3>Update Current CGPA</h3></td>
                    <td><input type="text" name="cgpa" id="cgpa" value="<%= rs.getString("cgpa") %>"></td>
                </tr>
                 <tr>
                    <td><h3>Update Area of Interest</h3></td>
                    <td><input type="text" name="aof" id="aof" value="<%= rs.getString("areaofinterest") %>"></td>
                </tr>
                 <tr>
                    <td><h3>Update Reason for Joining This Group</h3></td>
                    <td><textarea name="reason" id="reason" rows="5" cols="40"><%= rs.getString("reason") %></textarea></td>
                </tr>
            </table>
                        <input type="hidden" name="oldSid" value="<%= sid %>">
            <input type="submit" name="button" value="Update Details" class="btn btn-success">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
