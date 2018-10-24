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
                String sid = request.getParameter("sid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from studentinternship where studentid='"+sid+"'");
                while(rs.next()){
             %>   
        <form action="executeStudentInternshipDelete.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center;">&#8203; Delete Details</h1>
            <table class="table table-striped table-bordered">
                <tr>
                    <td><h3><h3>  Email Id</td>
                                <td><input type="text" name='email' id="email" value="<%= rs.getString("email") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Student Id</td>
                    <td><input type="text" name='sid' id="sid" value="<%= rs.getString("studentid") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Name</td>
                    <td><input type="text" name='name' id="name" value="<%= rs.getString("name") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Organization</td>
                    <td><input type="text" name='organization' id="organization" value="<%= rs.getString("organization") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>Update Area of Interest</td>
                    <td><input type="text" name='aof' id="aof" value="<%= rs.getString("areaofinterest") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Current Semester</td>
                            <td><select name="semester" disabled>
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
                            <td><select name='project' disabled>
                                    <%
                                        Class.forName("com.mysql.jdbc.Driver");
                                        ResultSet title = conn.createStatement().executeQuery("select * from projectopening");
                                        while(title.next()){
                                    %>
                                    <option value="<%= title.getString("title") %>"><%= title.getString("title") %></option>
                                    <%        
                                        }
                                    %>
                        </select></td>
                </tr>
            </table>
                        <input type="hidden" name="oldSid" value="<%= sid %>">
            <input type="submit" name="button" value=" Delete Details" class="btn btn-danger">
        </form>
        <%
            }
                    }
        %>
    </body>
</html>
