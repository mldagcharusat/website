<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Events</title>
<style type="text/css">
    td{
        font-family: 'Lora';
    }
<!--
.style1 {
	color: #FFFFFF;
	font-size: 50px;
	font-weight: bold;
        text-align: center;
	font-family: "Courier New", Courier, monospace;
}
.style2 {color: #FFFF00}
.style3 {
	color: #666666;
	font-weight: bold;
	font-family: "Courier New", Courier, monospace;
	font-size: 40px;
}
.style4 {
	color: #666666;
	font-family: "Courier New", Courier, monospace;
	font-size: 40px;
}
-->
</style></head>

<body>
    <jsp:include page="dropdownMenu.jsp"/>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
        Statement st = conn.createStatement();
    %>
    <h1 style="font-family: 'Montserrat';text-align: center">Events</h1>
    <br><br>
    <div style="width: 100%">
        <div style="width: 50%;float: left">
            <table>
                <tr>
                   <th valign="top" scope="col"><span class="style3" >Ongoing Events </span></th>
                </tr>
                <tr>
                    <ul>
                        <%
                            ResultSet ongoing = st.executeQuery("select * from events where enddate>(select now() from dual)");
                            while(ongoing.next()){
                        %>
                        <td><li><%= ongoing.getString("name") %></li></td>
                        <%        
                            }
                        %>
                    </ul>
                </tr>
            </table>
        </div>
        <div style="width: 50%;float: right">
           <table>
                <tr>
                   <th valign="top" scope="col"><span class="style3">Completed Events </span></th>
                </tr>
                <tr>
                    
                    <ul><td>
                        <%
                            ResultSet completed = st.executeQuery("select * from events where enddate<(select now() from dual)");
                            while(completed.next()){
                        %>
                        <li><%= completed.getString("name") %></li>
                        <%        
                            }
                        %>
                    </td></ul>
                </tr>
            </table> 
        </div>
    </div>
</body>
</html>
