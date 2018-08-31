<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="css/jquery.datetimepicker.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.datetimepicker.full.js"></script> 	
	<title>Remove Employee</title>
</head>

<body>
	<div class="container-fluid" style="height: 1150px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="AddEmployee.jsp">Add Employee</a>
							    <a href="RemoveEmployee.jsp">Remove Employee</a>
							    <a href="EmployeeProfile.jsp">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="Payroll.jsp">Payroll System</a>
							    <a href="Time&Attend.jsp">Time and Attendance System</a>
							    <a href="Leave.jsp">Leaving System</a>
  							</div> 
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Client Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
 							</div>
 						</div>
					 	<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Sales Management</a></button>
 							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Order Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Inventory Management</a></button>
							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
							</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Payment Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
						      	<div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
  				 			<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Visitor Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
<div class=row>	
<div class="col-md-2 offset-3 my-5">Enter Employee ID</div>
 <div class="col-md-4 my-5">				
	<input type="text" class="form-control" id="inputFname" placeholder="Enter ID"></div>
	</div>


	<div class="form">
	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label offset-3">Employee ID</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Generated"></div>
	 </div>
  	
  	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label offset-3">First Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Generated"></div>
	 </div>
  	
  	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label offset-3">Contact No</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Generated"></div>
	 </div>
  	
  	
	<div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Registered Date</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Generated">
    </div>
	 </div>
	 <div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Designation</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Generated">
    </div>
	 </div>
	 <div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Department</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Generated">
    </div>
	 </div>
	 
	 <div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Leaving Date</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="datetime" placeholder="System Date">
    </div>
	 </div>
	 
	 <div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Leaving Reason</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname">
    </div>
	 </div>
	 
	 <div class="form-group row">
	 <label for="inputLname" class="col-md-3 col-form-label  offset-3">Resignation Letter</label>
	  <div class="col-md-3">
      <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04">
    <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  </div>

</div>
    </div>
    </div>
    
    
     <div class="form-group row">
    <label for="inputLname" class="col-md-3 col-form-label  offset-3">Special Notes</label>
    <div class="col-md-3">
      <textarea class="form-control" id="inputLname" rows=5></textarea>
    </div>
	 </div>
    
     <div class="form-group row">
      <div class="col mt-5 offset-3" >
      					<button type="submit" class="btn btn-primary">Submit</button>
    				</div>
    				
 	<div class="col mt-5 mr-5" >
      					<button type="reset" class="btn btn-primary">Reset</button>
    				</div>
      </div>
      
  	</div>
  	
  	<script type="text/javascript">
	$("#datetime").datetimepicker();

</script>
  	
  	</div>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>

</body>
</html>