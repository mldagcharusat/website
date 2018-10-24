<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
 
    <html>
    <%
        Blob image;
        byte imgData[] = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
        Statement st = conn.createStatement();
        ResultSet rs = conn.createStatement().executeQuery("select distinct image from students where name = '"+request.getParameter("student")+"'");
                        if(rs.next()){
                            image = rs.getBlob("image");
                            imgData = image.getBytes(1,(int)image.length());
                        }
                        response.setContentType("image/jpg");
                        OutputStream o = response.getOutputStream();
                        o.write(imgData);
                        o.close();

    %>
    </html>