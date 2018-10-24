<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body{
        background-color: white;
    }
#navbar {
  background-color: white;
  position: fixed;
  top: 0px;
  width: 100%;
  display: block;
  transition: top 0.3s;
  z-index: 99999;
}

#navbar a {
  float: left;
  display: block;
  color: black;
  font-family: 'Montserrat';
  text-align: center;
  padding: 15px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}
</style>
</head>
<body>
    <div id="navbar" style="width:100%;height:11%;text-align: center;">
                            <a href="home.jsp">
                                <img src="./images/charusat-mldagLogo.png" style="width:55%"/>
                            </a>
  <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
       Statement st = conn.createStatement();
       ResultSet menu = st.executeQuery("select * from dropdownmenu");
       while(menu.next()){
    %>
    <a href="<%= menu.getString("link") %>"><%= menu.getString("name") %></a>
    <%
       }
  %>
                </div>
                <br><br><br>

<script>
// When the user scrolls down 20px from the top of the document, slide down the navbar
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 0 || document.documentElement.scrollTop > 0) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "0px";
  }
}
</script>

</body>
</html>
