<%-- 
    Document   : createPatient
    Created on : Jun 29, 2020, 7:04:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<title>Create Patient</title>
<script>
	function validateform() {

	}
</script>
<style>
#statename, #cityname, #typeofbed {
	width: 205px;
}

#patient, #pharmacy, #diagnostics {
	width: 130px;
	background-color: #1589FF;
}

body {
	background-color: #1589FF; /*dodger blue*/
}

#rd-box {
	width: 60%;
	height: 600px;
	background-color: transparent;
	border: transparent;
	margin-right: 15px;
	margin-top: 20px;
	align-content: left;
}

input[type=submit], input[type=reset] {
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

input[type=text], textarea, select {
	border: solid black 1.5px;
	border-radius: 2px;
}
</style>
<style>
.dropbtn {
	background-color: #3498DB;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
	background-color: #2980B9;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
</style>
</head>
<body>
	<div class="dropdown">
		<button onclick="myFunction()" class="dropbtn">Patients</button>
		<div id="myDropdown" class="dropdown-content">
			<a href="createPatient.jsp">Create Patient</a> <a
				href="updatePatient.jsp">Update Patientt</a> <a
				href="deletePatient.jsp">Delete Patient</a> <a
				href="viewAllPatients.jsp">View All Patients</a> <a
				href="searchPatient.jsp">Search Patient </a>



		</div>
	</div>


	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>



	<div>
		<center>
			<div id="rd-box">
				<h2>
					&nbsp;&nbsp;<b>Patient Registration</b>
				</h2>
				<form name="myform" method="post" action="createPatientServlet"
					onsubmit="return validateform();">
					<label for="pssnid"><b>Patient SSN ID *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="pssnid" required><br /> <br /> <label
						for="pname"><b>Patient Name *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="pname" required><br /> <br /> <label
						for="page"><b>Patient Age *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="page" required><br /> <br /> <label
						for="doj"><b>Date of Admission *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="date" name="doj"  > <br /> <label
						for="tob"><b>Type of Bed *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<select id="typeofbed" name="tob" required>
						<option value="">Select</option>
						<option value="generalward">General Ward</option>
						<option value="semisharing">Semi Sharing</option>
						<option value="singleroom">Single Room</option>
					</select> <br /> <br /> <label for="address"><b>Address *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<textarea name="address" rows="4" cols="21" required></textarea>
					<br /> <br /> <label for="state"><b>State *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<select id="statename" name="state" required>
						<option value="">Select</option>
						<option value="maharashtra">Maharashtra</option>
						<option value="andhrapradesh">Andhra Pradesh</option>
						<option value="madhyapradesh">Madhya Pradesh</option>
					</select> <br /> <br /> <label for="city"><b>City *</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<select id="cityname" name="city" required>
						<option value="">Select</option>
						<option value="mumbai">Mumbai</option>
						<option value="pune">Pune</option>
						<option value="aurangabad">Aurangabad</option>
					</select> <br /> *Mandatory <br /> <br />
					<div class="clearfix">
						<center>
							<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="Reset">
						</center>
					</div>
				</form>
			</div>
		</center>
	</div>


</body>
</html>
