<%-- 
    Document   : pubs.jsp
    Created on : 6 Sep, 2018, 12:35:26 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publication-MLDAG Charusat</title>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <h1 style="font-family: 'Montserrat';text-align: center;">Publications in Journal/Conference</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st1 = conn.createStatement();
            Statement st2 = conn.createStatement();
            String sql = "Select year from publications group by year order by year desc";
            ResultSet year = st1.executeQuery(sql);
            while (year.next()) {
                String x = year.getString("year");
         %>
         <em><u><b><h3 style="font-family: 'Montserrat';"><%= x %></h3></b></u></em>
         <table class="table table-striped table-bordered">
             <tr>
                 <th>Title</th>
                 <th>Details</th>
             </tr>
             <tr>
            <%

                   ResultSet pub = st2.executeQuery("select * from publications where year='"+x+"'");
                   while (pub.next()) {
            %>
             <tr><td><em><div style="font-family: 'Lora';">&#8203;<%=pub.getString("author")+" "+pub.getString("coauthor")+"  '"+pub.getString("papertitle")+"'  "+pub.getString("journal")+" "+pub.getString("volume")+" "+pub.getString("issue")+" "+pub.getString("year")+" "+pub.getString("publisher") %></div></em></td>
                 <td><a href='<%= "//"+pub.getString("file") %>'><button class="btn btn-success">Details</button></a></td></tr>
            <%
                   }
            %>
             </table>
            <%
               }
           %>    
    </body>
</html>
