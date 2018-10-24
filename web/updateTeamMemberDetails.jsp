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
                Statement st2 = conn.createStatement();
                Statement st3 = conn.createStatement();
                ResultSet gt = st3.executeQuery("select grants from teammembers where name='"+oldName+"'");
                ResultSet grants = st2.executeQuery("select * from grantList");
                ResultSet rs = st.executeQuery("select distinct username,password,user,name,researchinterest,email,designation,qualification,department,institute from teammembers where name='"+oldName+"'");
                while(rs.next()){
             %>   
             <form action="executeTeamMemberUpdate.jsp" method="post">
                 <h1 style="font-family: 'Montserrat';text-align: center">&#8203;Update Team Member</h1>
            <table class="table table-bordered table-striped" style="font-family: 'Lora';width:1500px;height: 100%">
                <tr>
                    <td><h3>Update Username:</h3></td>
                    <td><input type="text" name="userName" id="userName" value="<%= rs.getString("username") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Password:</h3></td>
                    <td><input type="password" name="passWord" id="passWord" value="<%= rs.getString("password") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Name</h3></td>
                    <td><input type="text" name="name" id="name" value="<%= rs.getString("name") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Designation</h3></td>
                    <td><input type="text" name="designation" id="designation" value="<%= rs.getString("designation") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Department</h3></td>
                    <td><input type="text" name="department" id="department" value="<%= rs.getString("department") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Institute</h3></td>
                    <td><input type="text" name="institute" id="institute" value="<%= rs.getString("institute") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Qualification</h3></td>
                    <td><input type="text" name="qualification" id="qualification" value="<%= rs.getString("qualification") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Research Interests</h3></td>
                    <td><input type="text" name="rs" id="rs" value="<%= rs.getString("researchinterest") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Email Id</h3></td>
                    <td><input type="email" name="email" id="email" value="<%= rs.getString("email") %>"></td>
                </tr>
                <tr>
                    <td><h3>Choose User Type</h3></td>
                    <td>
                    <%
                        if(rs.getString("user").equals("admin")){
                    %>
                        <input type="radio" name="userType" id="userType" value="admin" checked>Admin<br>
                        <input type="radio" name="userType" id="userType" value="teamMember">Team Member
                    <%    }else{
                    %>
                        <input type="radio" name="userType" id="userType" value="admin">Admin<br>
                        <input type="radio" name="userType" id="userType" value="teamMember" checked>Team Member
                    <%
                          }
                    %>
                    </td>
                </tr>
                <tr>
                    <td><h3>Grant Permission</h3></td>
                    <td>
                         <%
                            while(grants.next()){
                        %>
                            <div class="checkbox">
                                <label><input type="checkbox" name="grants" value="<%= grants.getString("value") %>" checked><%= grants.getString("name") %></label>
                          </div>
                         <%
                             }
                         %>
                    </td>
                </tr>
                <tr>
                    <td><h3>Grants</h3></td>
                    <td>
                        <%
                            while(gt.next()){
                                out.println(gt.getString("grants")+" ,  ");
                            }
                        %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="oldName" value="<%= oldName %>">
                    </td>
                </tr>
                </table>
                <input type="submit" name="button" value="Update Team Member" class="btn btn-success">
        </form>
        <%
                }
            }
        %>
    </body>
</html>
