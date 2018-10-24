<%-- 
    Document   : login
    Created on : 11 Sep, 2018, 10:41:05 PM
    Author     : Maulin Sheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            h1{
                text-align: center;
                font-family: 'Montserrat';
            }
            h3{
                font-family: 'Montserrat';
                color: blue;
            }
            h4{
                font-family: 'Lora';
                color : red;
            }
            td{
                width: 33%;
            }
        </style>
        <title>Login Page-MLDAG Charusat</title>
    </head>
    <body> 
        <h1>Login Page</h1>
        <br><br><br>
        <table class="table table-striped table-bordered">
            <tr>
                <td><h3>For Add User And Grant Permission</h3></td>
                <td><h3>Admin Login</h3></td>
                <td><h3>Team Member Login</h3></td>
            </tr>
            <tr>
                <td>
                <form action="adminGrantLogin.jsp" method="post">
                    
                    <h4>Enter Username: </h4>
                    <input type="text" name="userName" id="userName">
                    <h4>Enter Password </h4>
                    <input type="password" name="passWord" id="passWord">
                    <br><br>
                    <input type="submit" name="button" value="Add User and Grant Permission">
                </form>
                </td>
        
                <td>
                    <form action='adminLogin.jsp' method="post">
                    
                    <h4>Enter Username: </h4>
                    <input type="text" name="userName" id="userName">
                    <h4>Enter Password </h4>
                    <input type="password" name="passWord" id="passWord">
                    <br><br>
                    <input type="submit" name ='button' value="Admin Login">
                </form>
                </td>
        
                <td>
                <form action="teamMemberLogin.jsp" method="post">
                    
                    <h4>Enter Username: </h4>
                    <input type="text" name="userName" id="userName">
                    <h4>Enter Password </h4>
                    <input type="password" name="passWord" id="passWord">
                    <br><br>
                    <input type="submit" name ='button' value="Member Login">
                </form>
                </td>
            </tr>
        </table>
    </body>
</html>
