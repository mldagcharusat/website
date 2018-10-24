<%-- 
    Document   : applyNow
    Created on : 14 Oct, 2018, 5:18:30 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            td{
                font-family: 'Lora';
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
        <h1 style="text-align: center;font-family: 'Montserrat'">Student Internship Form</h1>
        <form action='addStudentInternship.jsp' method="post">
            <br>
            <p>
                Event Timing: 6 months<br>
                Event Address: CSPIT, Changa<br>
                Contact us at mldag.charusat@gmail.com
            </p>
            <table class="table table-striped table-bordered">
                <tr>
                    <td><h3><h3>Enter Email Id</td>
                    <td><input type="text" name='email' id="email" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Student Id</td>
                    <td><input type="text" name='sid' id="sid" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Name</td>
                    <td><input type="text" name='name' id="name" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Organization</td>
                    <td><input type="text" name='organization' id="organization" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Current Semester</td>
                            <td><select name="semester" required>
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
                    <td><h3>What Project Will You Select</td>
                            <td><select name='project' required>
                                    <%
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                                        Statement st = conn.createStatement();
                                        ResultSet rs = st.executeQuery("select * from projectopening");
                                        while(rs.next()){
                                    %>
                                    <option value="<%= rs.getString("title") %>"><%= rs.getString("title") %></option>
                                    <%        
                                        }
                                    %>
                        </select></td>
                </tr>
                 <tr>
                    <td><h3>Enter Area of Interest</h3></td>
                    <td><input type="text" name="aof" id="aof" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Google Drive Link For Statement of Purpose</h3></td>
                    <td><input type="text" name="sop" id="sop" required></td>
                </tr>
            </table>
                        <input type="submit" class="btn btn-info" name='button' value="Apply Now">
        </form>
    </body>
</html>
