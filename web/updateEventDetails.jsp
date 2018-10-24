<%-- 
    Document   : updateDetails.jsp
    Created on : 25 Sep, 2018, 11:45:59 PM
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
        <title>Update Student Details</title>
    </head>
    <body>
        <%
            if(session.getAttribute("view")!=null){
                String oldName = request.getParameter("name");
                String sd = request.getParameter("startdate");
                String ed = request.getParameter("enddate");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from events where name='"+oldName+"' and startdate='"+sd+"' and enddate='"+ed+"'");
                while(rs.next()){
             %>   
             <form action="executeEventUpdate.jsp" method="post">
                 <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;Update Event</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3>Update Name of the Event</h3></td>
                    <td><textarea name="name" id="name" rows="5" cols="50"><%= rs.getString("name") %></textarea></td>
                </tr>
                <tr>
                    <td><h3>Update Event Level</h3></td>
                    <td><input type="text" name="level" id="level" value="<%= rs.getString("level") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Event Type</h3></td>
                    <td><select name="type" id="type">
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                            <option value="ABC">ABC</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><h3>Update Target Audience</h3></td>
                    <td><input type="text" name="audience" id="audience" value="<%= rs.getString("audience") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Start Date</h3></td>
                    <td><input type="date" name="startDate" id="startDate" value="<%= rs.getString("startdate") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update End Date</h3></td>
                    <td><input type="date" name="endDate" id="endDate" value="<%= rs.getString("enddate") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Organizing Body</h3></td>
                    <td><input type="text" name="organizingBody" id="organizingBody" value="<%= rs.getString("organizingbody") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Venue</h3></td>
                    <td><input type="text" name="venue" id="venue" value="<%= rs.getString("venue") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update City</h3></td>
                    <td><input type="text" name="city" id="city" value="<%= rs.getString("city") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update State</h3></td>
                    <td><input type="text" name="state" id="state" value="<%= rs.getString("state") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Country</h3></td>
                    <td><input type="text" name="country" id="country" value="<%= rs.getString("country") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update Event Sponcoring Agency</h3></td>
                    <td><input type="text" name="sponcoringAgency" id="sponcoringAgency" value="<%= rs.getString("sponcoringagency") %>"></td>
                </tr>
                <tr>
                    <td><h3>Update File(Google Drive Link)</h3></td>
                    <td><input type="text" name="file" id="file" value="<%= rs.getString("file") %>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="oldName" value="<%= oldName %>"></td>
                    <td><input type="hidden" name="startdate" value="<%= sd %>"></td>
                    <td><input type="hidden" name="enddate" value="<%= ed %>"></td>
                </tr>
                <br> 
            </table>
                <input type="submit" name="button" value="Update Event" class="btn btn-success">
        </form>
        <%
                }
            }
        %>
    </body>
</html>
