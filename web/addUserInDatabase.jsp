<%-- 
    Document   : addUser
    Created on : 7 Sep, 2018, 11:25:54 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<%
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
       Statement st = conn.createStatement();
    String grant = (String)session.getAttribute("grant");
    String button = request.getParameter("button");
    if(button!=null&&grant!=null){
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
        String image = request.getParameter("image");
        File f = new File("D:/SGP-Sem5/charusat-research-website/web/faculty-images/"+image);
        FileInputStream fis = new FileInputStream(f);
        PreparedStatement ps;
        ResultSet grantList = st.executeQuery("select value from grantlist");
        
        if(userName!=null&&passWord!=null&&grants!=null&&user!=null&&name!=null&&email!=null&&designation!=null&&interest!=null&&image!=null&&qualification!=null&&department!=null&&institute!=null){
            
            while(grantList.next()){
                for(int i=0;i<grants.length;i++){
                    if(grants[i].equals(grantList.getString("value"))){
                        ps = conn.prepareStatement("insert into teammembers(username,password,grants,user,name,researchinterest,email,designation,image,qualification,department,institute) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                        ps.setString(1,userName);
                        ps.setString(2,passWord);
                        ps.setString(3,grants[i]);
                        ps.setString(4,user);
                        ps.setString(5,name);
                        ps.setString(6,interest);
                        ps.setString(7,email);
                        ps.setString(8,designation);
                        ps.setBinaryStream(9,(InputStream)fis,(int)(f.length()));
                        ps.setString(10,qualification);
                        ps.setString(11,department);
                        ps.setString(12,institute);
                        ps.executeUpdate();
                    }
                }
            }
            
            response.sendRedirect("login.jsp");
            session.invalidate();
            
        }else{
            response.sendRedirect("addUserAndGrant.jsp");
        }
        
    }else{
        response.sendRedirect("login.jsp");
    }
        
%>