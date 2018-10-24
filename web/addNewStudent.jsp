<%-- 
    Document   : addNewPublication
    Created on : 9 Sep, 2018, 7:18:04 PM
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
        <title>Add New Student - MLDAG Charusat</title>
    </head>
    <body>
        <%
            boolean isGrant = true;
            if(session.getAttribute("addNewGrant")!=null){
                String user = session.getAttribute("addNewGrant").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                PreparedStatement ps;
                Statement st = conn.createStatement();
                ResultSet grants = st.executeQuery("select grants from teammembers where username='"+user+"'");
                while(grants.next()){
                    if(grants.getString("grants").equals("addStudent")){
                        isGrant = false;
                        String name = request.getParameter("name");
                        String topic = request.getParameter("topic");
                        String email = request.getParameter("email");
                        String scholar = request.getParameter("scholar");
                        String qualification = request.getParameter("qualification");
                        String image = request.getParameter("image");
                        File f = new File("D:/SGP-Sem5/charusat-research-website/web/students/"+image);
                        FileInputStream fis = new FileInputStream(f);
                        if(name.trim().length()>0&&topic.trim().length()>0&&email.trim().length()>0&&qualification.trim().length()>0&&scholar.trim().length()>0&&image.trim().length()>0){
                            ps = conn.prepareStatement("insert into students(name,email,scholar,topic,qualification,image) " + "values(?,?,?,?,?,?)");
                                ps.setString(1,name);
                                ps.setString(2,email);
                                ps.setString(3,scholar);
                                ps.setString(4,topic);
                                ps.setString(5,qualification);
                                ps.setBinaryStream(6,(InputStream)fis,(int)(f.length()));
                                ps.executeUpdate();
                                session.removeAttribute("addNewGrant");
                                session.invalidate();
                                response.sendRedirect("login.jsp");
                        }else{
                            response.sendRedirect("addNewStudent.html");
                        }
                    }
                }
                    if(isGrant){
            %>
                        <h3 style="color: red">You do not have the grants to add new student.Contact Admin to provide you this grant</h3>
                        <a href="login.jsp">Click Here to go to login Page</a>
            <%
                    }                
            }else{
                    response.sendRedirect("login.jsp");
                }
        %>
    </body>
</html>
