<%-- 
    Document   : addNewPublication
    Created on : 9 Sep, 2018, 7:18:04 PM
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
        <title>Add New Project - MLDAG Charusat</title>
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
                    if(grants.getString("grants").equals("addEvent")){
                        isGrant = false;
                        String name = request.getParameter("name");
                        String level = request.getParameter("level");
                        String audience = request.getParameter("audience");
                        String startDate = request.getParameter("startDate");
                        String type = request.getParameter("type");
                        String sponcoringAgency = request.getParameter("sponcoringAgency");
                        String endDate = request.getParameter("endDate");
                        String organizingBody = request.getParameter("organizingBody");
                        String venue = request.getParameter("venue");
                        String city = request.getParameter("city");
                        String state = request.getParameter("state");
                        String country = request.getParameter("country");
                        String file = request.getParameter("file");
                        if(file.trim().length()>0&&name.trim().length()>00&&startDate.trim().length()>0&&audience.trim().length()>0&&level.trim().length()>0&&type.trim().length()>0&&sponcoringAgency.trim().length()>0&&endDate.trim().length()>0&&organizingBody.trim().length()>0&&venue.trim().length()>0&&city.trim().length()>0&&state.trim().length()>0&&country.trim().length()>0){
                            ps = conn.prepareStatement("insert into events(name,type,level,audience,startdate,enddate,organizingbody,venue,city,state,country,sponcoringagency,file) " + "values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                                ps.setString(1,name);
                                ps.setString(2,type);
                                ps.setString(3,level);
                                ps.setString(4,audience);
                                ps.setString(5,startDate);
                                ps.setString(6,endDate);
                                ps.setString(7,organizingBody);
                                ps.setString(8,venue);
                                ps.setString(9,city);
                                ps.setString(10,state);
                                ps.setString(11,country);
                                ps.setString(12,sponcoringAgency);
                                ps.setString(13,file);
                                ps.executeUpdate();
                                session.removeAttribute("addNewGrant");
                                session.invalidate();
                                response.sendRedirect("login.jsp");
                        }else{
                            response.sendRedirect("addNewEvent.html");
                        }
                    }
                }
                    if(isGrant){
            %>
                        <h3 style="color: red">You do not have the grants to add new event.Contact Admin to provide you this grant</h3>
                        <a href="login.jsp">Click Here to go to login Page</a>
            <%
                    }                
            }else{
                    response.sendRedirect("login.jsp");
                }
        %>
    </body>
</html>
