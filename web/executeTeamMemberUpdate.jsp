<%-- 
    Document   : executeStudentUpdate
    Created on : 25 Sep, 2018, 11:58:29 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("view")!=null){
                String button = request.getParameter("button");
               if(button!=null){
                    String oldName = request.getParameter("oldName");
                    String userName = request.getParameter("userName");
                    String passWord = request.getParameter("passWord");
                    String user = request.getParameter("userType");
                    String[] grants = request.getParameterValues("grants");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String designation = request.getParameter("designation");
                    String interest = request.getParameter("rs");
                    String qualification = request.getParameter("qualification");
                    String department = request.getParameter("department");
                    String institute = request.getParameter("institute");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                    Statement st = conn.createStatement();
                    ResultSet image = conn.createStatement().executeQuery("select distinct image from teammembers where name='"+oldName+"'");
                    String query = "delete from teammembers where name='"+oldName+"'";
                    st.executeUpdate(query);
                    PreparedStatement ps;
                    ResultSet grantList = st.executeQuery("select value from grantlist");
                        while(image.next()){
                            while(grantList.next()){
                                for(int i=0;i<grants.length;i++){
                                    if(grants[i].equals(grantList.getString("value"))){
                                        ps = conn.prepareStatement("insert into teammembers(username,password,grants,user,name,researchinterest,email,designation,qualification,department,institute,image) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                                        ps.setString(1,userName);
                                        ps.setString(2,passWord);
                                        ps.setString(3,grants[i]);
                                        ps.setString(4,user);
                                        ps.setString(5,name);
                                        ps.setString(6,interest);
                                        ps.setString(7,email);
                                        ps.setString(8,designation);
                                        ps.setString(9,qualification);
                                        ps.setString(10,department);
                                        ps.setString(11,institute);
                                        ps.setBlob(12,image.getBlob("image"));
                                        ps.executeUpdate();
                             }
                          }
                        }
                      }
                            response.sendRedirect("viewAllTeamMember.jsp");
                }
            }
        %>
    </body>
</html>
