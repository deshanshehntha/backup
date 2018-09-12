<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="css/glyphican.css">
	<link rel="stylesheet" href="css/jquery.datetimepicker.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script src="js/jquery.datetimepicker.full.js"></script>	
	<title>Leave</title>
</head>

<body>
	<div class="container-fluid" style="height: 1600px">
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
	
	<form method="GET"  action="getLeaveEmployee" >	
	<div class=row>	
		<div class="col-md-2 offset-3 my-5">Enter Employee ID</div>
 		<div class="col-md-4 my-5">				
			<input type="text" class="form-control" id="employeeId" name="employeeId" placeholder="Enter ID"></div>
		</div>
	</form>
	
	<form:form method="POST" action="leaveEmployee" id="leaveEmp" modelAttribute="lemployee">
	<div class="form">
	
	<div class="row">
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Employee Information</h4></Span></div>

	</div>

   <div class="form-group row">
	<label for="employeeId" class="col-md-3 col-form-label" style="margin-left: 350px">Employee ID<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="employeeId" path="employeeId" name="employeeId" placeholder="System Gen" readonly="true"/></div>
   </div>
	
	<div class="form-group row">
	<label for="firstName" class="col-md-3 col-form-label" style="margin-left: 350px">First Name<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="firstName" name="firstName" path="firstName" placeholder="System Gen" readonly="true"/></div>
   </div>
   
   <div class="form-group row">
	<label for="lastName" class="col-md-3 col-form-label" style="margin-left: 350px">Last Name<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="lasttName" name="lastName" path="lastName" placeholder="System Gen" readonly="true"/></div>
   </div>
   <div class="form-group row">
	<label for="departmentName" class="col-md-3 col-form-label" style="margin-left: 350px">Department Name<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="department" name="departmentName"  path="departmentName" placeholder="System Gen" readonly="true"/></div>
   </div>
   <div class="form-group row">
	<label for="designation" class="col-md-3 col-form-label" style="margin-left: 350px">Designation<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="designation" name="designation" path="designation" placeholder="System Gen" readonly="true"/></div>
   </div>
   
  	<div class="row">
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Nature of Leave</h4></Span></div>

	</div>
  	<div class="form-group row my-3">
  	
  	<div class="col-md-6 offset-4 ">
  	<div class="input-group">
  	<div class="row"><span class="glyphicon glyphicon-star"></span>
   <div class="col-md-2 custom-control custom-radio custom-control-inline">
  	<input type="radio" id="customRadioInline1" value="Annual" name="leaveType" class="custom-control-input">
 	 <label class="custom-control-label" for="customRadioInline1">Annual</label>
	</div>
	<div class="col-md-2 custom-control custom-radio custom-control-inline ml-2" >
  	<input type="radio" id="customRadioInline2" value="Medical" name="leaveType" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline2">Medical</label>
	</div>
	<div class="col-md-3 custom-control custom-radio custom-control-inline ml-2"  >
  	<input type="radio" id="customRadioInline3" name="leaveType" value="Half Day" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline3">Half Day</label>
	</div>
	<div class="col-md-2 custom-control custom-radio custom-control-inline ml-2" >
  	<input type="radio" id="customRadioInline4" name="leaveType" value="Other" class="custom-control-input">
  	<label class="custom-control-label" for="customRadioInline4">Other</label>
	</div> </div>  
  	</div></div>
  	</div>
 
 	<div class="row">
	<div class="col text-center my-4"><Span style="text-decoration: underline;"><h4>Leaving Information</h4></Span></div>

	</div>
	
	<div class="form-group row">
	<label for="leaveReason" class="col-md-3 col-form-label" style="margin-left: 350px">Reason</label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" id="leaveReason" path="leaveReason" name="leaveReason" placeholder="Only Applicable for Halfday & Other"/></div>
   </div>
   
   <div class="form-group row">
	<label for="leaveRequestedDate" class="col-md-3 col-form-label" style="margin-left: 350px">Requested Date<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="date" class="form-control" id="leaveRequestedDate" path="leaveRequestedDate" name="leaveRequestedDate" placeholder="System Date"/></div>
   </div>
	
	<div class="form-group row">
	<label for="leaveStartDate" class="col-md-3 col-form-label" style="margin-left: 350px">From<span class="glyphicon glyphicon-star"></span></label>
    <div class="col-md-3">
      <form:input type="text" class="form-control" path="leaveStartDate" name="leaveStartDate" id="leaveStartDate"/></div>
 
    </div>
   
    <div class="form-group row">
	<label for="leaveEndDate" class="col-md-3 col-form-label" style="margin-left: 350px">To<span class="glyphicon glyphicon-star"></span></label>
	
    <div class="col-md-3">
      <form:input type="text" class="form-control" path="leaveEndDate" name="leaveEndDate" id="leaveEndDate"/></div>
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
  </form:form>
  	<script type="text/javascript">
	$("#leaveStartDate").datetimepicker();

</script>
<script type="text/javascript">
	$("#leaveEndDate").datetimepicker();

</script>

<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#leaveEmp').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
						employeeId: {
						validators: {
							
							notEmpty: {
								message: 'Employee ID is required'
							},
		
						}
					},
					
					firstName: {
						validators: {
							
							notEmpty: {
								message: 'Enter First name'
							},
		
						}
					},
					
					lastName: {
						validators: {
							
							notEmpty: {
								message: 'Enter Last name'
							},
						}
					},


					
					departmentName: {
						validators: {
							notEmpty: {
								message: 'Department Name  is required'
							}
						}
					},
					
					designation: {
						validators: {
							notEmpty: {
								message: 'Designation  is required'
							}
						}
					},
					
					leaveType: {
						validators: {
							notEmpty: {
								message: 'Leave Type  is required'
							}
						}
					},
					
					leaveRequestedDate: {
						validators: {
							notEmpty: {
								message: 'Requested Date  is required'
							}
						}
					},
					
					leaveStartDate: {
						validators: {
							notEmpty: {
								message: 'Start Date and Time  is required'
							}
						}
					},
					
					leaveEndDate: {
						validators: {
							notEmpty: {
								message: 'End Date and Time  is required'
							}
						}
					},
					
					
					},
				
				onSuccess: function(e, data) {
	                  
                    alert('Leaving form uploaded Successfully !!!');
                }
				
				
				});
			});
   			
		</script>
		


  </div>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>
