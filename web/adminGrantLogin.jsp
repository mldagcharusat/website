<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
        String value = request.getParameter("button");
        Boolean isLogin = false;
        if(value!=null){
            String userName = request.getParameter("userName");
            String passWord = request.getParameter("passWord");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
            ResultSet values = st.executeQuery("select distinct username,password from teammembers where user='admin'");
            if(userName.equals("admin")&&passWord.equals("admin")){
                isLogin = true;
                session.setAttribute("grant",userName);
                response.sendRedirect("addUserAndGrant.jsp");
            }
            while(values.next()){
               if(userName!=null&&userName.equals(values.getString("username"))&&passWord!=null&&passWord.equals(values.getString("password"))){
                     isLogin = true;
                     session.setAttribute("grant",userName);
                     response.sendRedirect("addUserAndGrant.jsp");
                }
            }
            if(!isLogin){
                response.sendRedirect("login.jsp");
            }
        }else{
                response.sendRedirect("login.jsp");
            } 
    %>
    

