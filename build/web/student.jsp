<%-- 
    Document   : student
    Created on : 7 Sep, 2018, 10:21:22 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <style>
        tr{
            width: 10%;
        }
    </style>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student-MLDAG Charusat</title>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <br><br>
        <h1 style="text-align: center;font-family: 'Montserrat'">Meet Our Research Scholar</h1>
        
        <table class="table table-striped">
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from students where qualification='PHD'");
                while(rs.next()){
            %>
            <tr>
                <td>
                    <img src="retrieveStudentImage.jsp?student=<%= rs.getString("name") %>" />
                </td>
                <td>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Name: </b><em style="font-size: 22px"><%= rs.getString("name") %></em><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Topic: </b><%= "  "+rs.getString("topic") %><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+rs.getString("qualification")+" Research Scholar" %></p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+rs.getString("email") %><p>
                    <br>
                    <a href="<%= "//"+rs.getString("scholar")%>"><p style="font-family: 'Lora';font-size: 20px;">&#8203;Google Scholar Profile<p></a>    
                                        
                </td>
            </tr>
            <%
                }        
                ResultSet rs1 = st.executeQuery("select * from students where qualification='M.Tech'");    
                while(rs1.next()){
            %>
            <tr>
                <td>
                    <img src="retrieveStudentImage.jsp?student=<%= rs1.getString("name") %>" />
                </td>
                <td>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Name: </b><em style="font-size: 22px"><%= rs1.getString("name") %></em><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Topic: </b><%= "  "+rs1.getString("topic") %><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+rs1.getString("qualification")+" Research Scholar" %></p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+rs1.getString("email") %><p>
                    <br>
                    <a href="<%= "//"+rs1.getString("scholar")%>"><p style="font-family: 'Lora';font-size: 20px;">&#8203;Google Scholar Profile<p></a>    
                                        
                </td>
            </tr>
            <%
                }    
                ResultSet rs2 = st.executeQuery("select * from students where qualification='B.Tech'");  
                while(rs2.next()){
            %>
            <tr>
                <td>
                    <img src="retrieveStudentImage.jsp?student=<%= rs2.getString("name") %>" />
                </td>
                <td>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Name: </b><em style="font-size: 22px"><%= rs2.getString("name") %></em><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Topic: </b><%= "  "+rs2.getString("topic") %><p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+rs2.getString("qualification")+" Research Scholar" %></p>
                    <br>
                    <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+rs2.getString("email") %><p>
                    <br>
                    <a href="<%= "//"+rs2.getString("scholar")%>"><p style="font-family: 'Lora';font-size: 20px;">&#8203;Google Scholar Profile<p></a>    
                                        
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
