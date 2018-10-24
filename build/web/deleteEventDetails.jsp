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
        <title>  Student Details</title>
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
                ResultSet rs = st.executeQuery("select * from events where name='"+oldName+"'");
                while(rs.next()){
             %>   
             <form action="executeEventDelete.jsp" method="post">
                 <h1 style="font-family: 'Montserrat';text-align: center;">&#8203;  Event</h1>
            <table style="font-family: 'Lora';" class="table table-striped">
                <tr>
                    <td><h3>  Name of the Event</h3></td>
                    <td><textarea name="name" id="name" rows="5" cols="50" disabled><%= rs.getString("name") %></textarea></td>
                </tr>
                <tr>
                    <td><h3>  Event Level</h3></td>
                    <td><input type="text" name="level" id="level" value="<%= rs.getString("level") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Event Type</h3></td>
                    <td><select name="type" id="type" disabled>
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
                    <td><h3>  Target Audience</h3></td>
                    <td><input type="text" name="audience" id="audience" value="<%= rs.getString("audience") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Start Date</h3></td>
                    <td><input type="date" name="startDate" id="startDate" value="<%= rs.getString("startdate") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  End Date</h3></td>
                    <td><input type="date" name="endDate" id="endDate" value="<%= rs.getString("enddate") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Organizing Body</h3></td>
                    <td><input type="text" name="organizingBody" id="organizingBody" value="<%= rs.getString("organizingbody") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Venue</h3></td>
                    <td><input type="text" name="venue" id="venue" value="<%= rs.getString("venue") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  City</h3></td>
                    <td><input type="text" name="city" id="city" value="<%= rs.getString("city") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  State</h3></td>
                    <td><input type="text" name="state" id="state" value="<%= rs.getString("state") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Country</h3></td>
                    <td><input type="text" name="country" id="country" value="<%= rs.getString("country") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  Event Sponcoring Agency</h3></td>
                    <td><input type="text" name="sponcoringAgency" id="sponcoringAgency" value="<%= rs.getString("sponcoringagency") %>" disabled></td>
                </tr>
                <tr>
                    <td><h3>  File(Google Drive Link)</h3></td>
                    <td><input type="text" name="file" id="file" value="<%= rs.getString("file") %>" disabled></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="name" value="<%= oldName %>"></td>
                    <td><input type="hidden" name="startdate" value="<%= sd %>"></td>
                    <td><input type="hidden" name="enddate" value="<%= ed %>"></td>
                </tr>
                <br> 
            </table>
                <input type="submit" name="button" value=" Delete Event" class="btn btn-danger">
        </form>
        <%
                }
            }
        %>
    </body>
</html>
