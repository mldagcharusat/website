<%-- 
    Document   : retrieveImage
    Created on : 10 Sep, 2018, 9:36:27 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
             Blob image;
            byte imgData[] = null;
            String img = session.getAttribute("image").toString();
            if(img!=null){
                ResultSet rs = conn.createStatement().executeQuery("select distinct image from teammembers where username = '"+img+"'");
                        if(rs.next()){
                            image = rs.getBlob("image");
                            imgData = image.getBytes(1,(int)image.length());
                        }
                        response.setContentType("image/jpg");
                        OutputStream o = response.getOutputStream();
                        o.write(imgData);
                        o.close();
            }
        %>
    </body>
</html>
