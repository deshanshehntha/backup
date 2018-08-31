<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script> 	
	<title>Payroll</title>
</head>

<body>
	<div class="container-fluid" style="height: 1300px">
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
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Employee ID</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Reference No</label>
    <div class="col-md-3 ml-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen">
    </div>
    </div>
  	
	<div class="form-group row">
    <label for="inputLname" class="col-md-2 col-form-label ml-5">First Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Gen">
    </div>
     <label for="inputFname" class="col-md-2 col-form-label ml-5">Date</label>
    <div class="col-md-3 ml-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Gen">
    </div>
  	</div>
  	
  	<div class="form-group row">
    <label for="inputLname" class="col-md-2 col-form-label ml-5">Last Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="datetime" placeholder="System Gen">
    </div>
     <label for="inputFname" class="col-md-2 col-form-label ml-5">N.I.C</label>
    <div class="col-md-3 ml-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Gen">
    </div>
    </div>

  	
  		<div class="form-group row mb-5">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Address</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Bank Account</label>
    <div class="col-md-3 ml-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen">
    </div>
    </div>
  	<hr style="background-color:black">
 	<div class="form-group row mt-5">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Basic Salary</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      
    <div class="col-md-5 ml-5">
    <div class="row">
    <label for="inputFname" class="col-md-3 col-form-label">EPF 8%</label>
    <div class=col-md-4><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
	 <div class="col text-center" style="background-color: #d2d5db;"><Span style="text-decoration: underline;">Contribution</Span></div>
    </div></div>
    </div>

	<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Over Time(Hours)</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      
    <div class="col-md-5 ml-5">
    <div class="row">
    <label for="inputFname" class="col-md-3 col-form-label">Tax</label>
    <div class=col-md-4><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
       <label for="inputFname" class="col-md-2 col-form-label" style="background-color: #d2d5db">EPF 12%</label>
    <div class=col style="background-color: #d2d5db"><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
    </div></div>
    </div>


	<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Hourly Rate</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      
    <div class="col-md-5 ml-5">
    <div class="row">
    <label for="inputFname" class="col-md-3 col-form-label">Extra Leaves</label>
    <div class=col-md-4><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
       <label for="inputFname" class="col-md-2 col-form-label" style="background-color: #d2d5db">ETF 3%</label>
    <div class=col style="background-color: #d2d5db"><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
    </div></div>
    </div>

	<div class="form-group row mb-5">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Allowances</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      
    <div class="col-md-5 ml-5">
    <div class="row">
    <label for="inputFname" class="col-md-3 col-form-label">Decrements</label>
    <div class=col-md-4><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
     <label for="inputFname" class="col-md-2 col-form-label">Bonus</label>
    <div class=col><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
    </div></div>
    </div>
	
	<hr style="background-color:black">
	<div class="form-group row mt-5">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Gross Salary</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      
    <div class="col-md-5 ml-5">
    <div class="row">
    <label for="inputFname" class="col-md-3 col-form-label">Deductions</label>
    <div class=col-md-4><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
       <label for="inputFname" class="col-md-2 col-form-label">Increments</label>
    <div class=col><input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
    </div></div>
    </div>
	
	
    
  		<div class="form-group row  my-5">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Net Salary</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div></div>
      
      <div class="form-group row mt-5 text-center">
      <div class="col-md-4">
      					<button type="submit" class="btn btn-primary" style="width: 210px">Submit</button>
    				</div>
    				
 	<div class="col-md-4 ">
      					<button type="reset" class="btn btn-primary" style="width: 210px">Reset</button>
    				</div>
	<div class="col-md-4 ">
      					<button type="reset" class="btn btn-primary" style="width: 210px">Generate Pay Sheet</button>
    				</div>
      </div>
      
  	
  	</div>
  
  	
  </div>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>