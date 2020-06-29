<%-- 
    Document   : deletePatient
    Created on : Jun 29, 2020, 7:06:36 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <head>
        <title>Delete Patient</title>
        <script>
            function validateform()  
            {      
                           
            }              
        </script>
        <style>
            #statename, #cityname, #typeofbed{
            width: 205px;
            }
            #patient, #pharmacy, #diagnostics{
            width: 130px;
            background-color: #1589FF;
            }
            body{
            background-color: #1589FF; /*dodger blue*/
            }
            #rd-box { 
            width:100%; 
            height:600px; 
            background-color:transparent; 
            border:transparent; 
            margin-right:15px;
            margin-top: 10px;
            align-content: left;
            } 
            input[type=button]{
            background-color: #050505;
            border: none;
            border-radius: 12px;
            color: white;
            padding: 2px 4px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            width: 80px;
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
            width: 100px;
            }
            input[type=text], textarea, select{
            border: solid black 1.5px;
            border-radius: 2px;
            }
        </style>
    </head>
    <body>
        <div style="border: solid #000000; height: 110px; background-color: #92C7C7;">
            <center>
                <h1>ABC Hospital Management System</h1>
                <select id="patient" name="catpatient">
                    <option value="">Patient</option>
                    <option value="generalward">General Ward</option>
                    <option value="semisharing">Semi Sharing</option>
                    <option value="singleroom">Single Room</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <select id="pharmacy" name="catpharmacy">
                    <option value="">Pharmacy</option>
                    <option value="generalward">General Ward</option>
                    <option value="semisharing">Semi Sharing</option>
                    <option value="singleroom">Single Room</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <select id="diagnostics" name="catdiagnostics">
                    <option value="">Diagnostics</option>
                    <option value="generalward">General Ward</option>
                    <option value="semisharing">Semi Sharing</option>
                    <option value="singleroom">Single Room</option>
                </select>
            </center>
        </div>
        <div>
            <center>
                <div id="rd-box">
                    <h2>&nbsp;&nbsp;<b>Delete Patient</b></h2>
                    <form name="myform"  method="post" action="#" onsubmit="return validateform();">
                        <label for="pssnid"><b>Patient SSN ID *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="pssnid" >
                        <br/><input type="button" value="Get"><br/>
                        <label for="pname"><b>Patient Name  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="pname" ><br/><br/>
                        <label for="page"><b>Patient Age  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="page" ><br/><br/>
                        <label for="doa"><b>Date of Admission  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="doa" ><br/><br/>
                        <label for="tob"><b>Type of Bed  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select id="typeofbed" name="tob" >
                            <option value="">Select</option>
                            <option value="generalward">General Ward</option>
                            <option value="semisharing">Semi Sharing</option>
                            <option value="singleroom">Single Room</option>
                        </select>
                        <br/><br/>
                        <label for="address"><b>Address  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <textarea name="address" rows="4" cols="21" ></textarea>
                        <br/><br/>
                        <label for="state"><b>State  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select id="statename" name="state" >
                            <option value="">Select</option>
                            <option value="maharashtra">Maharashtra</option>
                            <option value="andhrapradesh">Andhra Pradesh</option>
                            <option value="madhyapradesh">Madhya Pradesh</option>
                        </select>
                        <br/><br/>
                        <label for="city"><b>City  </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select id="cityname" name="city" >
                            <option value="">Select</option>
                            <option value="mumbai">Mumbai</option>
                            <option value="pune">Pune</option>
                            <option value="aurangabad">Aurangabad</option>
                        </select>
                        <br/> *Mandatory <br/><br/>
                        <div class="clearfix">
                            <center>
                                <input type="submit" value="Delete">
                            </center>
                        </div>
                    </form>
                </div>
            </center>
        </div>
    </body>
</html>
