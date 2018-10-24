<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            td{
                font-family: 'Lora';
            }
        </style>
         <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MLDAG-Member</title>
    </head>
    <body>
        <jsp:include page="dropdownMenu.jsp"/>
        <h1 style="font-family: 'Montserrat';text-align: center">Become MLDAG Member</h1>
        <form action="addMLDAGMember.jsp" method='post'>
            <table class="table table-striped table-bordered">
                <tr>
                    <td><h3>Enter Email Address</h3></td>
                    <td><input type="text" name="email" id="email" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Student Id</h3></td>
                    <td><input type="text" name="studentId" id="studentId" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Student Name</h3></td>
                    <td><input type="text" name="name" id="name" required></td>
                </tr>
                <tr>
                    <td><h3>Enter College Name(Institution Name)</h3></td>
                    <td><input type="text" name="institutionName" id="institutionName" required></td>
                </tr>
                <tr>
                    <td><h3>Enter Gender</h3></td>
                    <td><input type="radio" name="gender" id="gender" checked value="male">Male<br>
                    <input type="radio" name="gender" id="gender" value="female">Female</td>
                </tr>
                <tr>
                    <td><h3>Enter Graduation Level</h3></td>
                    <td><input type="radio" name="graduation" id="graduation" checked value="btech">B.Tech<br>
                        <input type="radio" name="graduation" id="graduation" value="mtech">M.Tech<br>
                    <input type="radio" name="graduation" id="graduation" value="phd">PHD</td>
                </tr>
                <tr>
                    <td><h3>Enter Current Semester</td>
                            <td><select name="semester" required>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                        </select></td>
                </tr>
                 <tr>
                    <td><h3>Enter Current CGPA</h3></td>
                    <td><input type="text" name="cgpa" id="cgpa" required></td>
                </tr>
                 <tr>
                    <td><h3>Enter Area of Interest</h3></td>
                    <td><input type="text" name="aof" id="aof" required></td>
                </tr>
                 <tr>
                    <td><h3>Enter Reason for Joining This Group</h3></td>
                    <td><textarea name="reason" id="reason" required rows="5" cols="40"></textarea></td>
                </tr>
            </table>
            <input type="submit" name="button" value="Become A Member" class="btn btn-success">
        </form>
    </body>
</html>
