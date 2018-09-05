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
	<title>Leave</title>
</head>

<body>
	<div class="container-fluid" style="height: 1400px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="add">Add Employee</a>
							    <a href="remove">Remove Employee</a>
							    <a href="profile">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="payroll">Payroll System</a>
							    <a href="t&a">Time and Attendance System</a>
							    <a href="leave">Leaving System</a>
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
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Employee Information</h4></Span></div>

	</div>
	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Leave ID</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
   <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Employee ID</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
	
	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">First Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
   
   <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Last Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
   <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Department Name</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
   <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Designation</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Gen"></div>
   </div>
   
  	<div class="row">
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Nature of Leave</h4></Span></div>

	</div>
  	<div class="form-group row my-3">
  
   <div class="col-1 custom-control custom-radio custom-control-inline" style="margin-left: 450px">
  	<input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
 	 <label class="custom-control-label" for="customRadioInline1">Annual</label>
	</div>
	<div class="col-1 custom-control custom-radio custom-control-inline " >
  	<input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline2">Medical</label>
	</div>
	<div class="col-1 custom-control custom-radio custom-control-inline"  >
  	<input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline3">Half Day</label>
	</div>
	<div class="col-1 custom-control custom-radio custom-control-inline" >
  	<input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline4">Other</label>
	</div>   
  	</div>
  	
 
 	<div class="row">
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Leaving Information</h4></Span></div>

	</div>
	
	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Reason</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="Only Applicable for Halfday & Other"></div>
   </div>
   
   <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">Requested Date</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="inputFname" placeholder="System Date"></div>
   </div>
	
	<div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">From</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="datetime1"></div>
 
    </div>
   
    <div class="form-group row">
	<label for="inputFname" class="col-md-3 col-form-label" style="margin-left: 350px">To</label>
    <div class="col-md-3">
      <input type="text" class="form-control" id="datetime2"></div>
	 </div>
    
 
      <div class="form-group row">
      <div class="col md-5 offset-3 mt-5 ">
      					<button type="submit" class="btn btn-primary">Submit</button>
    				</div>
    				
 	<div class="col md-5 mt-5 ">
      					<button type="reset" class="btn btn-primary">Reset</button>
    				</div>
      </div>
      
  	
  	</div>
  
  	<script type="text/javascript">
	$("#datetime1").datetimepicker();

</script>
<script type="text/javascript">
	$("#datetime2").datetimepicker();

</script>
  </div>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>
