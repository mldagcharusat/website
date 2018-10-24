<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>MLDAG CHARUSAT - Home</title>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="./css/home.css">
</head>
<body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charusat-research-website","root","");
            Statement st = conn.createStatement();
        %>
	
        <jsp:include page="dropdownMenu.jsp"/>
        <br><br><br><br>
	<div style="background-color: black;color: white">
		<div id="qr" style="display:inline-block; min-width:2.2cm; height:7cm; align: center;vertical-align: middle;" >
		  <img src="./images/ml-Logo.jpg" style="height:7cm;">
		</div>
		<div style="display:inline-block;vertical-align: middle;">
		  <h2 style="font-family:'Montserrat';font-size: 35px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i><u>Machine Learning Data Analytics Group</u></i></h2><br>
			<p style="font-family: 'Lora';font-size: 22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"There is no reason and no way that a human mind can keep up with an artificial intelligence"<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Gary Scott
		</p></div>
	</div>
	<br>
        <table><tr>
                <td><div>
			<h1 style="font-family: 'Montserrat';">Welcome To MLDAG</h1>
			<em><span style="font-family:'Lora';font-size: 16px">&#8203;Welcome to the Machine Learning and Data Analytics Group (MLDAG). We are a small group of researchers with shared interests in machine learning and Data Analytics. We work on a variety of topics spanning theoretical foundations, algorithms, and applications tools.</span></em>
                    </div></td>
                    <td style="width: 50%;height: 100%;"><div class="slideshow-container">
                            <div class="mySlides fade"><img src="./images/ss1.jpg" alt="Image" align="left"></div>
                            <div class="mySlides fade"><img src="./images/ss2.png" style="width: 100%;height: 100%;"></div>
                            <div class="mySlides fade"><img src="./images/ss3.jpg"></div>
                            <div class="mySlides fade"><img src="./images/ss4.jpg"></div>
                            <div class="mySlides fade"><img src="./images/ss5.png"></div>
			
			  <div style="text-align:center">
				  <span class="dot"></span> 
				  <span class="dot"></span> 
				  <span class="dot"></span>
				  <span class="dot"></span>
				  <span class="dot"></span> 
                          </div> 
                    </div></td>
            </tr>
            <tr>	
                <td><div>
			<h1 style="font-family: 'Montserrat';">Recent Publications</h1>
                        <ul>
                            <%
                                int publicationCnt=1;
                                ResultSet publication = st.executeQuery("select * from publications order by year desc");
                                while(publication.next()&&publicationCnt<=2){%>
                                <em><div style="text-align:justify;font-family: 'Lora';font-size: 16px">&#8203;<li><%=publication.getString("author")+" "+publication.getString("coauthor")+"  '"+publication.getString("papertitle")+"'  "+publication.getString("journal")+" "+publication.getString("volume")+" "+publication.getString("issue")+" "+publication.getString("year")+" "+publication.getString("publisher") %></li>
                             <% publicationCnt++;}
                                  
                            %>
                            <br>
                            <a href="publications.jsp">more..</a>
                                    </div></em></ul>	
                    </div></td>
                    <td><div>
			<h1 style="font-family: 'Montserrat'">Data Science Challenges</font></h1>
                        <em><div style="text-align:justify;font-family: 'Lora';font-size: 16px"><ul>
                                <%
                                    ResultSet dsc = st.executeQuery("select * from datasciencechallenge");
                                    while(dsc.next()){
                                %>
                                <li><%= dsc.getString("title") %></li>
                                <%
                                    }
                                %>
                                <a href="dataScienceChallenge.jsp">more..</a>
                                </ul></div></em>
                        </div></td>
            </tr>
            <tr>
                <td rowspan="2"><div>
                <h1 style="font-family: 'Montserrat';">Project Opening</h1>
                <ul>
                <%
                    int projectCnt=1;
                    ResultSet projects = st.executeQuery("select * from projectopening");
                    while(projects.next()&&projectCnt<=4){%>
                    <li><em><div style="text-align: justify;font-family: 'Lora';font-size: 16px;color:red;">&#8203;<%=projectCnt+". "+projects.getString("title")+". "%><a href="<%= "//"+projects.getString("file") %>">more</a></li>
                 <%   }
                %>
                <br>
                <br><br>
                <a href="applyNow.jsp"><button class="btn btn-success">Apply Now</button></a>
                                </div></em></a></ul>
                    </div></td>
                    <td><div><ul>
                    <h1 style="font-family: 'Montserrat';">Upcoming Events</h1>
                    <%
                        int eventCnt=1;
                        ResultSet events = st.executeQuery("select * from events where enddate>(select now() from dual)");
                        while(events.next()&&eventCnt<=2){%>
                        <li><em><div style="text-align: justify;font-family: 'Lora';font-size: 16px">&#8203;<%=events.getString("name")%></li>
                    <%    }
                    %>
                            <br>
                            <a href='events.jsp'>more..</a>
                            </div></em></ul>
                        </div></td>
            </tr><tr>
                <td><div><ul>
                    <h1 style="font-family: 'Montserrat';">News</h1>
                     <%
                        int newsCnt=1;
                        ResultSet news = st.executeQuery("select * from news");
                        while(news.next()&&eventCnt<=2){%>
                        <li><em><div style="text-align: justify;font-family: 'Lora';font-size: 16px">&#8203;<%=news.getString("news")%></li>
                    <%    }
                    %>
                            <br>
                            <a href='news.jsp'>more..</a><br><br>
                            <a href="becomeAMember.jsp"><button class="btn btn-primary">Become A Member</button></a>
                            </div></em></ul>
                            </div></td>
            </tr>
        </table>
	
                   
                            
	<script>
		var slideIndex = 0;
		showSlides();
                
		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
	
</body>
</html>