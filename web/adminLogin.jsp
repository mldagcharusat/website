<%-- 
    Document   : adminLogin
    Created on : 8 Sep, 2018, 12:11:46 AM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login-MLDAG Charusat</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
            ResultSet admin = st.executeQuery("select distinct username,password,name,designation,department,institute,qualification,email,researchinterest from teammembers where user='admin'");
            String button = request.getParameter("button");
            boolean isLogin = true;
            if(button!=null){
                response.setHeader("Pragma","no-cache");
                response.setHeader("Cache-Control","no-store");
                response.setHeader("Expires","120"); 
                String userName = request.getParameter("userName");
                String passWord = request.getParameter("passWord");
                while(admin.next()){
                    if(userName!=null&&passWord!=null&&userName.equals(admin.getString("username"))&&passWord.equals(admin.getString("password"))){
                        isLogin = false;
                        session.setAttribute("image",admin.getString("username"));
                        session.setAttribute("view",admin.getString("username"));
                        session.setAttribute("addNewGrant",admin.getString("username"));
                        ResultSet rs = conn.createStatement().executeQuery("select distinct image from teammembers where username = '"+admin.getString("username")+"'");
        %>
                            <jsp:include page="dropdownMenu.jsp"/>
                            <div>
                                <em><h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Welcome <%= admin.getString("name") %></h1></em>
                                <a href="<%="logOut.jsp"%>"><button class="btn btn-danger btn-lg pull-right" style="align: right;">Log Out</button></a>
                            </div>
                            <table class="table table-bordered">
                                <tr>
                                    <td rowspan="5" style="width: 15%">
                                        <img src="retrieveLoginImage.jsp" alt="Image"/>
                                    </td>
                                    <td>
                                        <p style="font-family: 'Lora';font-size: 20px;">&#8203;<%= "  "+admin.getString("designation")+" , "+admin.getString("department")+" , "+admin.getString("institute") %><p>
                                        <br>
                                        <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Interest: </b><%= "  "+admin.getString("researchinterest") %><p>
                                        <br>
                                        <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+admin.getString("qualification") %><p>
                                        <br>
                                        <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+admin.getString("email") %><p>    
                                        
                                    </td>
                                </tr>
                            </table>
                            <br><br>
                            <div style="text-align: center">
        <%
                            ResultSet grants = conn.createStatement().executeQuery("select *,gl.name,gl.value,gl.link from teammembers,grantList gl where username='"+admin.getString("username")+"' and teammembers.grants=gl.value");
                            while(grants.next()){
        %>
                                <a href="<%= grants.getString("link") %>"><button class='btn btn-primary'><%= grants.getString("gl.name") %></button></a>
        <%
                            }
                        
        %>
                                <br><br>
                                <a href="viewAllStudents.jsp"><button class="btn btn-success">View All Students</button></a>
                                <a href="viewAllPublication.jsp"><button class="btn btn-success">View All Publications</button></a>
                                <a href="viewAllDataScienceChallenge.jsp"><button class="btn btn-success">View All Data Science Challenge</button></a>
                                <a href="viewAllEvent.jsp"><button class="btn btn-success">View All Events</button></a>
                                <a href="viewAllNews.jsp"><button class="btn btn-success">View All News</button></a>
                                <a href="viewAllProject.jsp"><button class="btn btn-success">View All Projects</button></a>
                                <a href="viewAllTeamMember.jsp"><button class="btn btn-success">View All Team Members</button></a>
                                <a href="viewAllProjectOpening.jsp"><button class="btn btn-success">View All Project Opening</button></a>
                                <a href="viewAllStudentInternship.jsp"><button class="btn btn-success">View All Student Internship</button></a>
                                <a href="viewAllMLDAGMember.jsp"><button class="btn btn-success">View All MLDAG Member</button></a>
                            </div>
        <%
                    }
                }
                 if(isLogin){
                           response.sendRedirect("login.jsp");
                    }
            }else{
                   response.sendRedirect("login.jsp"); 
                 }
        %>
    </body>
</html>
