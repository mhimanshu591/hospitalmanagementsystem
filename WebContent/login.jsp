<%-- 
    Document   : login
    Created on : Jun 29, 2020, 7:00:42 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <head>
        <title>Login Page</title>
        <script>
            function validateform()  
            {      
                var password=document.myform.password.value;        
                if(password.length<8)
                {  
                    alert("Password must be at least 8 characters long."); 
                }              
            }              
        </script>
        <style>
            body{
            background-color: #1589FF; /*dodger blue*/
            }
            #rd-box { 
            width:28%; 
            height:230px; 
            background-color:transparent; 
            border:solid black; 
            margin-right:15px;
            margin-top: 150px;
            } 
            input[type=submit]{
            background-color: #050505;
            border: none;
            border-radius: 12px;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div style="border: solid #000000; height: 150px; background-color: #92C7C7;">
            <center>
                <h1>ABC Hospital Management System</h1>
            </center>
        </div>
        <div>
            <center>
                <div id="rd-box">
                    <h2>&nbsp;&nbsp;Login</h2>
                    <form name="myform"  method="post" action="loginServlet" onsubmit="return validateform();">
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;<label for="user"><b>User</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="username" value="username" required><br/><br/>
                        &nbsp;&nbsp;<label for="psw"><b>Password</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="password" name="password"  value="password" required><br/><br/>
                        <div class="clearfix">
                            <center><input type="submit" value="Submit"></center>
                        </div>
                    </form>
                </div>
            </center>
        </div>
    </body>
</html>
