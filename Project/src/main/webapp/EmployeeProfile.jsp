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
	 	
	<title>EmployeeProfile</title>
</head>

<body>
	<div class="container-fluid" style="height: 1850px">
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
	
	
	<div class="row">
	<div class="col-md-5 ml-5">
	<img src="Images/propic.png" class="img-thumbnail rounded mx-auto d-block" style="width:60%;height: 80%">
	</div>
	<div class="col-md-6  my-3 ">
	 <div class="row"><div class="col offset-4 mt-2 mb-5"><Span style="text-decoration: underline;"><h4>Personal Information</h4></Span></div></div>
	<div class="form-group row">
	<label for="inputFname" class="col-md-4 col-form-label ml-5">First Name</label>
    <div class="col-md-6">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div></div>
    
	<div class="form-group row">
	<label for="inputFname" class="col-md-4 col-form-label ml-5">Last Name</label>
    <div class="col-md-6">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div></div>
    <div class="form-group row">
	<label for="inputFname" class="col-md-4 col-form-label ml-5">N.I.C NO</label>
    <div class="col-md-6">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div></div>
    
        <div class="form-group row">
	<label for="inputFname" class="col-md-4 col-form-label ml-5">Marital Status</label>
    <div class="col-md-6">
      <div class="input-group">
  		<select class="custom-select" id="inputGroupSelect04">
    	<option selected>Married</option>
	    <option value="1">Single</option>
	    <option value="2">Divorced</option>
	    <option value="2">Widowed</option>
  		</select>
    </div></div></div>
    
    
    <div class="form-group row">
	<label for="inputFname" class="col-md-4 col-form-label ml-5">Bank Account Number</label>
    <div class="col-md-6">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div></div>
    
    </div>
    
    
    
    
    </div>
    	
	
	<div class="row">
	<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Contact Information</h4></Span></div>
	<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Company Information</h4></Span></div>
  
	</div>
	
	<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5" >Current Address</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Employee ID</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen & Cannot Change">
    </div>
    </div>
  	
	<div class="form-group row">
    <label for="inputLname" class="col-md-2 col-form-label ml-5">Home Address</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Gen">
    </div>
     <label for="inputFname" class="col-md-2 col-form-label ml-5">Department</label>
    <div class="col-md-3">
    <div class="input-group">
  		<select class="custom-select" id="inputGroupSelect04">
    	<option selected>IT</option>
    	<option disabled>SE</option>
    	<option disabled>Transport</option>
  		</select>
    </div>
  	</div>
   </div>
  	
  	<div class="form-group row">
    <label for="inputLname" class="col-md-2 col-form-label ml-5">City</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputLname" placeholder="System Gen">
    </div>
     <label for="inputFname" class="col-md-2 col-form-label ml-5">Designation</label>
    <div class="col-md-3">
      <div class="input-group">
  		<select class="custom-select" id="inputGroupSelect04">
    	<option selected>D.E.O</option>
    	<option disabled>Technician</option>
    	<option disabled>Driver</option>
  		</select></div>
    </div>
  	</div>
  	
  	
  		<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Postal Code</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Basic Salary</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname">
    </div>
    </div>
  	<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Contact No 1</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
    <label for="inputFname" class="col-md-2 col-form-label ml-5">Profile Photo</label>
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
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Contact No 2</label>
      <div class="col-md-3">
     <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Joined Date</label>
    <div class="col-md-3">
    <input type="text" class="form-control" id="inputFname" placeholder="System Gen & Cannot Change"></div>
  </div>


 
    


    <div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Email</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen" ></div>
   		<label for="inputLname" class="col-md-1 col-form-label ml-5">Availability</label>
   <div class="custom-control custom-radio custom-control-inline mt-2" style="margin-left: 130px">
  	<input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
 	 <label class="custom-control-label" for="customRadioInline1">In</label>
	</div>
	<div class="custom-control custom-radio custom-control-inline  mt-2" style="margin-left: 87px" >
  	<input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline2">Out</label>
	</div>
   
    </div>
 
   
    <div class="row">
  	<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Other Information</h4></Span></div>
	<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>System Login Information</h4></Span></div>
    </div>
    
    <div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Assigned Bike No</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">User Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname">
    </div>
    </div>
    
    <div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Vehicle No</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen" ></div>
      <label for="inputFname" class="col-md-2 col-form-label ml-5">Password</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname">
    </div>
    </div>
 
  	
  	<div class="form-group row">
	<label for="inputFname" class="col-md-2 col-form-label ml-5">Driving License</label>
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
      <div class="col md-5 offset-3 mt-5 ">
      					<button type="submit" class="btn btn-primary">Update</button>
    				</div>
    				
 	<div class="col md-5 mt-5 ">
      					<button type="reset" class="btn btn-primary">Reset</button>
    				</div>
      </div>
      <div class="form-group row">
      <div class="col md-4  mt-5" style="margin-left: 520px">
      					<button type="submit" class="btn btn-primary">Generate Profile PDF </button>
     </div>
    			
      </div>
  	
  	</div>
  
  	
  </div>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>