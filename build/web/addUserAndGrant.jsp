<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User and Grant</title>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"></jsp:include>
        <%
            
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
             Statement st = conn.createStatement();
             ResultSet grants = st.executeQuery("select * from grantlist");
             String grant = (String)session.getAttribute("grant");
             if(grant!=null){
        %>
            <form action="addUserInDatabase.jsp" method="post">
            <h1 style="font-family: 'Montserrat';text-align: center">&#8203;Add User and Grant Page</h1>
            <table class="table table-bordered table-striped" style="font-family: 'Lora';width:1500px;height: 100%">
                <tr>
                    <td><h3>Enter Username:</h3></td>
                    <td><input type="text" name="userName" id="userName"></td>
                </tr>
                <tr>
                    <td><h3>Enter Password:</h3></td>
                    <td><input type="password" name="passWord" id="passWord"></td>
                </tr>
                <tr>
                    <td><h3>Enter Name</h3></td>
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td><h3>Enter Designation</h3></td>
                    <td><input type="text" name="designation" id="designation"></td>
                </tr>
                <tr>
                    <td><h3>Enter Department</h3></td>
                    <td><input type="text" name="department" id="department"></td>
                </tr>
                <tr>
                    <td><h3>Enter Institute</h3></td>
                    <td><input type="text" name="institute" id="institute"></td>
                </tr>
                <tr>
                    <td><h3>Enter Qualification</h3></td>
                    <td><input type="text" name="qualification" id="qualification"></td>
                </tr>
                <tr>
                    <td><h3>Enter Research Interests</h3></td>
                    <td><input type="text" name="rs" id="rs"></td>
                </tr>
                <tr>
                    <td><h3>Enter Email Id</h3></td>
                    <td><input type="email" name="email" id="email"></td>
                </tr>
                <tr>
                    <td><h3>Choose User Type</h3></td>
                    <td><input type="radio" name="userType" id="userType" value="admin">Admin<br>
                    <input type="radio" name="userType" id="userType" value="teamMember">Team Member</td>
                </tr>
                <tr>
                    <td><h3>Choose Image</h3></td>
                    <td><input type="file" name="image" id="image" size="100"></td>
                </tr>
                <tr>
                    <td><h3>Grant Permission</h3></td>
                    <td>
                         <%
                             while(grants.next()){
                         %>
                            <div class="checkbox">
                                <label><input type="checkbox" name="grants" value="<%= grants.getString("value") %>"><%= grants.getString("name") %></label>
                          </div>
                         <%
                             }
                         %>
                    </td>
                </tr>
                
                </table>
                    <input type="submit" class="btn btn-info" name="button" value="Submit" style="width: 15%">
        </form>
        <%
             }else{
                    response.sendRedirect("login.jsp");
                }
        %>
        
    </body>
</html>
