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
        <title>Add New Publication - MLDAG Charusat</title>
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
                    if(grants.getString("grants").equals("addPublication")){
                        isGrant = false;
                        String paperTitle = request.getParameter("paperTitle");
                        String author = request.getParameter("author");
                        String coAuthor = request.getParameter("coAuthor");
                        String year = request.getParameter("year");
                        String journal = request.getParameter("journal");
                        String volume = request.getParameter("volume");
                        String issue = request.getParameter("issue");
                        String pageNumber = request.getParameter("pageNumber");
                        String publisher = request.getParameter("publisher");
                        String file = request.getParameter("file");
                        if(file.trim().length()>0&&paperTitle.trim().length()>0&&author.trim().length()>0&&coAuthor.trim().length()>0&&year.trim().length()>0&&journal.trim().length()>0&&volume.trim().length()>0&&issue.trim().length()>0&&pageNumber.trim().length()>0&&publisher.trim().length()>0){
                            ps = conn.prepareStatement("insert into publications(papertitle,author,coauthor,year,journal,volume,issue,pagenumber,publisher,file) " + "values(?,?,?,?,?,?,?,?,?,?)");
                                ps.setString(1,paperTitle);
                                ps.setString(2,author);
                                ps.setString(3,coAuthor);
                                ps.setString(4,year);
                                ps.setString(5,journal);
                                ps.setString(6,volume);
                                ps.setString(7,issue);
                                ps.setString(8,pageNumber);
                                ps.setString(9,publisher);
                                ps.setString(10,file);
                                ps.executeUpdate();
                                session.removeAttribute("addNewGrant");
                                session.invalidate();
                                response.sendRedirect("login.jsp");
                        }else{
                            response.sendRedirect("addNewPublication.html");
                        }
                    }
                }
                    if(isGrant){
            %>
                        <h3 style="color: red">You do not have the grants to add new publication.Contact Admin to provide you this grant</h3>
                        <a href="login.jsp">Click Here to go to login Page</a>
            <%
                    }                
            }else{
                    response.sendRedirect("login.jsp");
                }
        %>
    </body>
</html>
