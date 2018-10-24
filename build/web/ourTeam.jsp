<%-- 
    Document   : student
    Created on : 7 Sep, 2018, 10:21:22 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <style>
        tr{
            width: 10%;
        }
        <!--
.style1 {
	color: #FFFFFF;
	font-family: "Courier New", Courier, monospace;
	font-size: 50px;
}
.style2 {color: #FFFF00}
.style3 {
	color: #FFFFFF;
	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
}
.style4 {
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	font-size: 36px;
}
.style9 {
	color: #000000;
	font-family: "Courier New", Courier, monospace;
	font-size: 36px;
}
.style10 {font-family: "Courier New", Courier, monospace}
.style11 {
	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #999999;
}
.style12 {
	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
	font-weight: bold;
}
.style13 {font-family: "Times New Roman", Times, serif}
.style15 {color: #666666; font-weight: bold; }
.style16 {color: #999999; }
.style17 {color: #666666}
-->

    </style>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student-MLDAG Charusat</title>
    </head>
    <body>
                <jsp:include page="dropdownMenu.jsp"/>
        <table width="100%" border="0">
        <tr>
          <th height="362" bgcolor="#000033" scope="col"><div align="center">
            <h1><span class="style1">About<span class="style2">.</span></span></h1>
            <p align="justify"><span class="style3">We are a part of the Department of Information Technology at CHARUSAT University located at Changa, Gujarat , India.We are intersected in reasearch aspects of machine learning, Semantic Web, Linked Data, Big Data Anaytics and Deep Learning. Particular strenghts of the group are in the Xtreme Label Classification, Recommendation System, Ontology Mining, Stream Mining and Privacy in Big Data. We work in application domains like Healthcare, Social Network and Online Shopping. We actively seek to collaborate with other groups around world. </span></p>
          </div></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="100%" border="0">
        <tr>
          <th width="53%" scope="col"><div align="left">
            <p class="style4">Established in <span class="style2">2017</span></p>
            <p class="style11">Dr. Amit Thakkar has completed his PHD in 2016 and has taken the initiative to start the machine learning group and data analytics group with five research scholar under his guidance. </p>
          </div></th>
          <th width="47%" valign="top" scope="col"><div align="left">
            <p class="style9">Our <span class="style2">Goal</span></p>
            <p class="style11">We are a group of Machine Learning and Data Science enthusiasts. We meet to discuss research papers and have featured talks by experts in industry and academia. The pupose is to build a community around students, researchs, corporations in Machine Learning and Data Science.</p>
          </div></th>
        </tr>
      </table>
<br><br>
        <br><br>
        <h1 style="text-align: center;font-family: 'Montserrat'">Our Team</h1>
        <table class="table table-striped">
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
                Statement st = conn.createStatement();
                ResultSet head = st.executeQuery("select distinct name,designation,department,institute,researchinterest,qualification,email from teammembers where designation like '%Head%'");
                while(head.next()){
            %>
            <tr>
                <td>
                    <img src="retrieveTeamImage.jsp?member=<%= head.getString("name") %>" />
                </td>
                <td>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Name: </b><%= "  "+head.getString("name") %></p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<%= "  "+head.getString("designation")+" , "+head.getString("department")+" , "+head.getString("institute") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Interest: </b><%= "  "+head.getString("researchinterest") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+head.getString("qualification") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+head.getString("email") %><p>    
                                                             
                </td>
            </tr>
            <%
                }
                ResultSet rs = conn.createStatement().executeQuery("select distinct name,designation,department,institute,researchinterest,qualification,email from teammembers where designation not like '%Head%'");
                while(rs.next()){
            %>
                <tr>
                <td>
                    <img src="retrieveTeamImage.jsp?member=<%= rs.getString("name") %>" />
                </td>
                <td>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Name: </b><%= "  "+rs.getString("name") %></p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<%= "  "+rs.getString("designation")+" , "+rs.getString("department")+" , "+rs.getString("institute") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Research Interest: </b><%= "  "+rs.getString("researchinterest") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Qualification: </b><%= "  "+rs.getString("qualification") %><p>
                   <br>
                   <p style="font-family: 'Lora';font-size: 20px;">&#8203;<b>Email: </b><%= "  "+rs.getString("email") %><p>    
                                                             
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
