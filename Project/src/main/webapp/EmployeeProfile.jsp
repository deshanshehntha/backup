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
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	 	
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
	
	
	<form method="GET"  action="getEmployee" >
	<div class="row">	
		<div class="col-md-2 offset-3 my-5">Enter Employee ID</div>
		<div class="col-md-4 my-5">				
			<input type="text" class="form-control" name="employeeId" id="inputid" placeholder="Enter ID"/>
		</div>
	</div>
	</form>
	
	<form:form method="POST" action="update" modelAttribute="employee" id="validateEditForm">
		<div class="row">
			<div class="col-md-5 offset-1">

				<div class="row">
					<div class="col" style=" margin-top: 120px">
						<!-- <img src="data:image/png;base64,${employee.profilePhoto}/>" -->
						<img src="data:image/png;base64,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" name="profilePhoto" class="img-thumbnail rounded mx-auto d-block" width="240px" height="300px" />
					
					</div>
				</div>
				
				<div class="row" style=" margin-top: 68px">
					<div class="col my-5 text-center"><Span style="text-decoration: underline;"><h4>Contact Information</h4></Span></div>
				</div>

				<div class="form-group row">
					<label for="currentAddress" class="col-md-5 col-form-label ml-4">Current Address</label>
    				<div class="col-md-6">
      					<form:input type="text" path="currentAddress" class="form-control" name="currentAddress"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="homeAddress" class="col-md-5 col-form-label ml-4" >Home Address</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="homeAddress" name="homeAddress" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="city" class="col-md-5 col-form-label ml-4" >City</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="city" name="city" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="postalCode" class="col-md-5 col-form-label ml-4" >Postal Code</label>
    				<div class="col-md-6">
      					<form:input type="number" class="form-control" path="postalCode" name="postalCode" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="contactNo1" class="col-md-5 col-form-label ml-4" >Contact No1</label>
    				<div class="col-md-6">
      					<form:input type="number" class="form-control" path="contactNo1" name="contactNo1" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="contactNo2" class="col-md-5 col-form-label ml-4" >Contact No2</label>
    				<div class="col-md-6">
      					<form:input type="number" class="form-control" path="contactNo2" name="contactNo2" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="email" class="col-md-5 col-form-label ml-4" >Email</label>
    				<div class="col-md-6">
      					<form:input type="email" class="form-control" name="email" path="email" placeholder="System Gen"/>
      				</div>
      			</div>
      			
				<div class="row">
					<div class="col my-5 text-center"><Span style="text-decoration: underline;"><h4>Other Information</h4></Span></div>
				</div>

				<div class="form-group row">
					<label for="bikeNo" class="col-md-5 col-form-label ml-4" >Assigned Bike No</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" name="bikeNo" path="bikeNo" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="VehicleNo" class="col-md-5 col-form-label ml-4" >Vehicle No</label>
   					 <div class="col-md-6">
      					<form:input type="text" class="form-control" path="VehicleNo"  name="VehicleNo" placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="form-group row">
					<label for="drivingLicense" class="col-md-5 col-form-label ml-4">Driving License</label>
       				<div class="col-md-6">
    					<div class="input-group">
  							<div class="custom-file">
    							<form:input type="file" class="custom-file-input" path="drivingLicense" name="drivingLicense" aria-describedby="inputGroupFileAddon04"/>
    							<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  							</div>
						</div>
 					</div>
  				</div>

			</div>
			
			<div class="col-md-5">
			
				<div class="row">
					<div class="col my-5 text-center"><Span style="text-decoration: underline;"><h4>Personal Information</h4></Span></div>
				</div>

				<div class="form-group row">
					<label for="firstName" class="col-md-5 col-form-label ml-4">First Name</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="firstName" name="firstName" placeholder="System Gen"/>
      				</div>
      			</div>
      			
				<div class="form-group row">
					<label for="lastName" class="col-md-5 col-form-label ml-4">Last Name</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="lastName" name="lastName" placeholder="System Gen"/>
      				</div>
      			</div>
      			
    			<div class="form-group row">
					<label for="NIC" class="col-md-5 col-form-label ml-4">N.I.C NO</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="NIC" name="NIC" placeholder="System Gen"/>
      				</div>
      			</div>
    
        		<div class="form-group row">
					<label for="maritalStatus" class="col-md-5 col-form-label ml-4">Marital Status</label>
    				<div class="col-md-6">
      					<div class="input-group">
  							<form:select class="custom-select" path="maritalStatus" name="maritalStatus">
    							<option value="${employee.maritalStatus}" selected>${employee.maritalStatus}</option>
    							<option value="Married" >Married</option>
								<option value="Single">Single</option>
								<option value="Divorced">Divorced</option>
								<option value="Widowed">Widowed</option>
							</form:select>
    					</div>
    				</div>
    			</div>
    
				<div class="form-group row">
					<label for="bankAccountNo" class="col-md-5 col-form-label ml-4">Bank Account Number</label>
    				<div class="col-md-6">
      					<form:input type="number" class="form-control" path="bankAccountNo" name="bankAccountNo"  placeholder="System Gen"/>
      				</div>
      			</div>

				<div class="row" style="margin-top: 44px">
					<div class="col my-5  text-center"><Span style="text-decoration: underline;"><h4>Company Information</h4></Span></div>
				</div>
				
				<div class="form-group row">
	 				<label for="employeeId" class="col-md-5 col-form-label ml-4">Employee ID</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="employeeId" name="employeeId" readonly="true"/>
    				</div>
    			</div>
    
				<div class="form-group row">
					<label for="basicSalary" class="col-md-5 col-form-label ml-4">Basic Salary</label>
    				<div class="col-md-6">
      					<form:input type="number" class="form-control" path="basicSalary" name="basicSalary"/>
    				</div>
    			</div>
    
    			<div class="form-group row">
    				<label for="profilePhoto" class="col-md-5 col-form-label ml-4">Profile Photo</label>
    				<div class="col-md-6">
    					<div class="input-group">
  							<div class="custom-file">
    							<form:input type="file" class="custom-file-input" path="profilePhoto" name="profilePhoto" aria-describedby="inputGroupFileAddon04"/>
    							<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  							</div>
  						</div>
					</div>
  				</div>
  				
   			 	<div class="form-group row">
     				<label for="joinedDate" class="col-md-5 col-form-label ml-4">Joined Date</label>
    				<div class="col-md-6">
    					<form:input type="text" class="form-control" path="joinedDate" name="joinedDate" readonly="true"/>
    				</div>
    			</div>
		
				
				
				<div class="row" style="margin-top: 176px">
					<div class="col my-5 text-center"><Span style="text-decoration: underline;"><h4>System Login Information</h4></Span></div>
				</div>

				<div class="form-group row">
					<label for="userName" class="col-md-5 col-form-label ml-4">User Name</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="userName" name="userName"/>
    				</div>
    			</div>
    
				<div class="form-group row">
	 				<label for="password" class="col-md-5 col-form-label ml-4">Password</label>
    				<div class="col-md-6">
      					<form:input type="text" class="form-control" path="password" name="password"/>
    				</div>
    			</div>
			</div>
		</div>
	
		<div class="form-group row">
			
			
			<div class="col md-5 offset-4 mt-5">
      			<button type="submit" class="btn btn-primary">Update</button>
    		</div>
    				
    		
      	</div>
      	
      	<div class="form-group row">
      		<div class="col md-5 offset-4 mt-5">
      			<button type="submit" class="btn btn-primary">Generate Profile PDF </button>
     		</div>
    	</div>
  	</form:form>	
  	<noscript>Enable JavaScript in your browser</noscript>
  	<script>
            $('#profilePhoto').on('change',function(){
       
                var fileName = $(this).val();
   
                $(this).next('.custom-file-label').html(fileName);
            })
        </script>
        
        
        <script type="text/javascript">
 
   			$(document).ready(function() {
			$('#validateEditForm').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					
					firstName: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter First Name with minimum 5 letters length'
							},
							notEmpty: {
								message: 'Enter First name'
							}
						}
					},
					
					lastName: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter Last Name with minimum 5 letters length'
							},
							notEmpty: {
								message: 'Enter Last name'
							}
						}
					},
		
					
					joinedDate: {
						validators: {
							notEmpty: {
								message: 'Joined Date is required'
							}
						}
					},
		
					
					NIC: {
						validators: {
							notEmpty: {
								message: 'N.I.C field is required'
							}
						}
					},
					
					maritalStatus: {
						validators: {
							notEmpty: {
								message: 'Marital Status field is required'
							}
						}
					},
					
					bankAccountNo: {
						validators: {
							notEmpty: {
								message: 'Bank Account Number  is required'
							}
						}
					},
					
					currentAddress: {
						validators: {
							notEmpty: {
								message: 'Current Address is required'
							}
						}
					},
					
					homeAddress: {
						validators: {
							notEmpty: {
								message: 'Home Address  is required'
							}
						}
					},
					
					city: {
						validators: {
							notEmpty: {
								message: 'City field  is required'
							}
						}
					},
					
					
					contactNo1: {
						validators: {
							notEmpty: {
								message: 'Contact No 1 field  is required'
							}
						}
					},
					
					contactNo2: {
						validators: {
							notEmpty: {
								message: 'Contact No 2  is required'
							}
						}
					},
					
					email: {
						validators: {
							notEmpty: {
								message: 'Email field  is required'
							}
						}
					},
					
					
					
					basicSalary: {
						validators: {
							notEmpty: {
								message: 'Basic Salary  is required'
							}
						}
					},
					
					
					postalCode: {
						validators: {
							notEmpty: {
								message: 'Postal Code  is required'
							}
						}
					},
					
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