<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="Content-Type"  name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/glyphican.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="css/jquery.datetimepicker.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script src="js/jquery.datetimepicker.full.js"></script>	
		
	<title>AddEmployee</title>
</head>

<body>
	<div class="container-fluid" style="height: 2000px">
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
			<div class="col-md-2 offset-3 my-5">Select Employee Type</div>
			<div class="col-md-4 my-5">
					<select class="custom-select" id="genContent">
					<option value="1" selected>D.E.O</option>
					<option value="2">Driver</option>
					<option value="3">Technician</option>
				</select>
			</div>
		</div>
		<noscript>Enable JavaScript in your browser</noscript>
		<script>
			$(function() {
				$('.form').hide();
				$('.f1').show();

				$('#genContent').on("change", function() {
					$('.form').hide();
					$('.f' + $(this).val()).show();
				}).val("1");
			});
		</script>

		<div class="form f1">
		<div class="form-container">
		<form:form method="POST"  action="register"  modelAttribute="employee"  id="validateForm1">
			<div class="row">
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Personal Information</h4></Span></div>
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Company Information</h4></Span></div>
			</div>
	
			<div class="row">
				<div class="col-md-5 offset-1">
				
						<div class="form-group row">
							<label for="firstName" class="col-md-5 col-form-label ml-3">First Name</label>
							<div class="col-md-6 ml-4">
								<form:input type="text" name="firstName" path="firstName" class="form-control" id="firstName" placeholder="First Name" />
								<div class="has-error">
									<font color="red"><form:errors path="firstName" class="help-inline"/></font>
								</div>	
							</div>
						</div>

						<div class="form-group row">
    						<label for="lastName" class="col-md-5 col-form-label ml-3">Last Name</label>
    						<div class="col-md-6 ml-4">
      							<form:input type="text"  name="lastName" path="lastName" class="form-control" id="lastName" placeholder="Last Name"/>
								<div class="has-error">
									<font color="red"><form:errors path="lastName" class="help-inline"/></font>
								</div>	
							
							</div>
						</div>
   
   						<div class="form-group row">
    						<label for="datetime1" class="col-md-5 col-form-label ml-3">Birth Date</label>
    						<div class="col-md-6 ml-4">
      							<form:input type="date" name="birthDate" path="birthDate" class="form-control" placeholder="Date Of Birth"/>
    					 	</div>
    					</div>
    					
   						<div class="form-group row">
							<label for="gender" class="col-md-5 col-form-label ml-3">Gender</label>
  							<div class="col-md-6 ml-4">
  								<div class="input-group">
	   								<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline1" value="male" name="gender" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline1">Male</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline2" value="female" name="gender" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline2">Female</label>
									</div>
    							</div>
    						</div>
    					</div>
    					
   						<div class="form-group row">
							<label for="NIC" class="col-md-5 col-form-label ml-3">N.I.C NO</label>
    						<div class="col-md-6 ml-4">
      							<input type="text" name="NIC" class="form-control" id="NIC" placeholder="960662770V"/>
				 			</div>
				 		</div>
      
      					<div class="form-group row">
							<label for="status" class="col-md-5 col-form-label ml-3">Marital Status</label>
      						<div class="col-md-6 ml-4">
      							<div class="input-group">
  									<select class="custom-select" id="status" name="maritalStatus" >
								    	<option value="Married" selected>Married</option>
									    <option value="Single">Single</option>
									    <option value="Divorced">Divorced</option>
									    <option value="Widowed">Widowed</option>
								  	</select>
    							</div>
    						</div>
    					</div>
    
						 <div class="form-group row">
							<label for="bankAccountNo" class="col-md-5 col-form-label ml-3">Bank Account Number</label>
  							<div class="col-md-6 ml-4">
      							<input type="number" name="bankAccountNo" class="form-control" id="bankAccountNo" />
							</div>
						</div>
				</div>
  	
  				<div class="col-md-5">
  				
    
  					<div class="form-group row">
  						<label for="departmentId" class="col-md-5 col-form-label ml-3">Department</label>
    					<div class="col-md-6 ml-4">
    						<div class="input-group">
						  		<select class="custom-select" id="departmentId" name="departmentId" >
							    	<option value="1" selected>IT</option>
							    	<option disabled>SE</option>
							    	<option disabled>Transport</option>
						  		</select>
    						</div>
    					</div>
					</div>

					<div class="form-group row">
     					<label for="designation" class="col-md-5 col-form-label ml-3">Designation</label>
   						<div class="col-md-6 ml-4">
      						<div class="input-group">
						  		<select class="custom-select form-control" name="designation" id="designation">
							    	<option selected>D.E.O</option>
							    	<option disabled>Technician</option>
							    	<option disabled>Driver</option>
						  		</select>
						  	</div>
    					</div>
  					</div>
  					
					<div class="form-group row">
     					<label for="exlevel" class="col-md-5 col-form-label ml-3">Experienced Level</label>
    					<div class="col-md-6 ml-4">
      						<div class="input-group">
						  		<select class="custom-select" name="experiencedLevel" id="exlevel">
							    	<option selected>1</option>
								    <option value="1">2</option>
								    <option value="2">3</option>
						  		</select>
    						</div>
    					</div>
  					</div>

					<div class="form-group row">
      					<label for="basicSalary" class="col-md-5 col-form-label ml-3">Basic Salary</label>
    					<div class="col-md-6 ml-4">
      						<input type="number" name="basicSalary" class="form-control" id="basicSalary"/>
						</div>
    				</div>
    
    				<div class="form-group row">
      					<label for="certificate" class="col-md-5 col-form-label ml-3">Certificates</label>
    					<div class="col-md-6 ml-4">
    						<div class="input-group">
  								<div class="custom-file">
    								<input type="file" name="certificates" class="custom-file-input" id="certificate" aria-describedby="inputGroupFileAddon04"/>
    								<label class="custom-file-label" for="certificate">Choose file</label>
  								</div>
							</div>
						</div>
    				</div>
    
					<div class="form-group row">
      					<label for="cv" class="col-md-5 col-form-label ml-3">Curriculum Vitae</label>
    					<div class="col-md-6 ml-4">
      						<div class="input-group">
  								<div class="custom-file">
    								<input type="file" name="cv" class="custom-file-input" id="cv" aria-describedby="inputGroupFileAddon04"/>
									<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
    					</div>
    				</div>
    
					<div class="form-group row">
    					<label for="photo" class="col-md-5 col-form-label ml-3">Profile Photo</label>
    					<div class="col-md-6 ml-4">
        					<div class="input-group">
  								<div class="custom-file">
    								<input type="file" name="profilePhoto" class="custom-file-input" id="photo" aria-describedby="inputGroupFileAddon04"/>
    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
    					</div>
   	 				</div>
   	 			    
					<div class="form-group row">
    					<label for="datetime2" class="col-md-5 col-form-label ml-3">Joined Date</label>
    					<div class="col-md-6 ml-4">
      						<input type="date" class="form-control" name="joinedDate" />
    					</div>
    				</div>
    			</div>
    		</div>
  
			<div class="row">
  				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Contact Information</h4></Span></div>
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>System Login Information</h4></Span></div>
    		</div>
    
   		 	<div class="row">
				<div class="col-md-5 offset-1"> 

					<div class="form-group row">
						<label for="cAddress" class="col-md-5 col-form-label ml-3">Current Address</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="currentAddress" class="form-control" id="caAddress" />
	      				</div>
	      			</div>
	      			
					<div class="form-group row">
						<label for="hAddress" class="col-md-5 col-form-label ml-3">Home Address</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="homeAddress" class="form-control" id="hAddress"/>
	      				</div>
	      			</div>
		
					<div class="form-group row">
						<label for="city" class="col-md-5 col-form-label ml-3">City</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="city" class="form-control" id="city" />
	      				</div>
					</div>
	  	
	  				<div class="form-group row">
						<label for="pcode" class="col-md-5 col-form-label ml-3">Postal Code</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="number" name="postalCode" class="form-control" id="pcode" />
	      				</div>
					</div>
	  	
	  				<div class="form-group row">
						<label for="cn1" class="col-md-5 col-form-label ml-3">Contact No 1</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="number" name="contactNo1" class="form-control" id="cn1" />
	      				</div>
	  				</div>
	  
	  				<div class="form-group row">
						<label for="cn2" class="col-md-5 col-form-label ml-3">Contact No 2</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="number" name="contactNo2" class="form-control" id="cn2" />
	      				</div>
					</div>
					
	  				<div class="form-group row">
						<label for="email" class="col-md-5 col-form-label ml-3">Email</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="email" name="email" class="form-control" id="email" />
	      				</div>
	      			</div>
		 		</div>
	
				<div class="col-md-5">
				
					<div class="form-group row">
      					<label for="uName" class="col-md-5 col-form-label ml-3">User Name</label>
    					<div class="col-md-6 ml-4">
      						<input type="text"  name="userName" class="form-control" id="uName"/>
    					</div>
    				</div>
    
    				<div class="form-group row">
      					<label for="pass" class="col-md-5 col-form-label ml-3">Password</label>
    					<div class="col-md-6 ml-4">
      						<input type="text" name="password" class="form-control" id="pass"/>
    					</div>
    				</div>
				</div>
			</div>

  			<div class="row">
      			<div class="col md-5 offset-3 mt-5 ">
      				<div class="form-actions ">
      					<Input type="submit"  value="Submit" class="btn btn-primary">
    				</div>
    			</div>

				<div class="col md-5 mt-5 ">
      					<button type="reset" class="btn btn-primary">Reset</button>
    			</div>
      		</div>

	
  		</form:form>
  	
  		<script>
            $('#certificate,#cv,#photo').on('change',function(){
       
                var fileName = $(this).val();
   
                $(this).next('.custom-file-label').html(fileName);
            })
        </script>
  		
  		
  		<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#validateForm1').bootstrapValidator({
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
		
					birthDate: {
						validators: {
							notEmpty: {
								message: 'Birth Date is required'
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
		
					gender: {
						validators: {
							notEmpty: {
								message: 'The gender option is required'
							}
						}
					},
					
					NIC: {
						validators: {
							stringLength: {
								max: 10,
								message: 'Enter N.I.C Number with 10 letters in length'
							},
							notEmpty: {
								message: 'N.I.C field is required'
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
							
							stringLength: {
								min: 8,
								message: 'Enter Current address with minimum 8 letters in length'
							},
							notEmpty: {
								message: 'Current Address is required'
							}
						}
					},
					
					homeAddress: {
						validators: {
							stringLength: {
								min: 8,
								message: 'Enter home address with minimum 8 letters of length '
							},
							
							
						}
					},
					
					city: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter city field with minimum 5 letters of length '
							},
						}
					},
					
					
					contactNo1: {
						validators: {
							
							stringLength: {
								min: 10,
								message: 'Enter contact number with maximum 10 letters in length '
							},
							
							notEmpty: {
								message: 'Contact No 1 field  is required'
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
					
					experiencedLevel: {
						validators: {
							notEmpty: {
								message: 'Experienced Level  is required'
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
										
					cv: {
						validators: {
							notEmpty: {
								message: 'CV  is required'
							}
						}
					},
					
					profilePhoto: {
						validators: {
							notEmpty: {
								message: 'Profile Photo  is required'
							}
						}
					},
					
					
					
					userName: {
						validators: {
							notEmpty: {
								message: 'Username  is required'
							}
						}
					},
					
					password: {
						validators: {
							notEmpty: {
								message: 'Password  is required'
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
					
					departmentID: {
						validators: {
							notEmpty: {
								message: 'Department  is required'
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
					
					
					}
				});
			});
   			
		</script></div>
  		</div>
  		
  		<div class="form f2">
		<form method="POST"  action="#" method="post" id="validateForm2">
			<div class="row">
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Personal Information</h4></Span></div>
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Company Information</h4></Span></div>
			</div>
	
			<div class="row">
				<div class="col-md-5 offset-1">
				
						<div class="form-group row">
							<label for="firstName" class="col-md-5 col-form-label ml-3">First Name</label>
							<div class="col-md-6 ml-4">
								<input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name" />
							</div>
						</div>

						<div class="form-group row">
    						<label for="lastName" class="col-md-5 col-form-label ml-3">Last Name</label>
    						<div class="col-md-6 ml-4">
      							<input type="text"  name="lastName" class="form-control" id="lastName" placeholder="Last Name"/>
							</div>
						</div>
   
   						<div class="form-group row">
    						<label for="datetime3" class="col-md-5 col-form-label ml-3">Birth Date</label>
    						<div class="col-md-6 ml-4">
      							<input type="text" name="bDate" class="form-control" id="datetime3" placeholder="Date Of Birth"/>
    					 	</div>
    					</div>
    					
   						<div class="form-group row">
							<label for="gender" class="col-md-5 col-form-label ml-3">Gender</label>
  							<div class="col-md-6 ml-4">
  								<div class="input-group">
	   								<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline3" name="gender" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline3">Male</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline4" name="gender" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline4">Female</label>
									</div>
    							</div>
    						</div>
    					</div>
    					
   						<div class="form-group row">
							<label for="NIC" class="col-md-5 col-form-label ml-3">N.I.C NO</label>
    						<div class="col-md-6 ml-4">
      							<input type="text"  class="form-control" name="nic" id="NIC" placeholder="960662770V"/>
				 			</div>
				 		</div>
      
      					<div class="form-group row">
							<label for="status" class="col-md-5 col-form-label ml-3">Marital Status</label>
      						<div class="col-md-6 ml-4">
      							<div class="input-group">
  									<select class="custom-select" name="mStatus" id="status">
								    	<option selected>Married</option>
									    <option value="1">Single</option>
									    <option value="2">Divorced</option>
									    <option value="2">Widowed</option>
								  	</select>
    							</div>
    						</div>
    					</div>
    
						 <div class="form-group row">
							<label for="bankAccountNo" class="col-md-5 col-form-label ml-3">Bank Account Number</label>
  							<div class="col-md-6 ml-4">
      							<input type="text"  name="baNo" class="form-control" id="bankAccountNo" />
							</div>
						</div>
				</div>
  	
  				<div class="col-md-5">
  				
  					<div class="form-group row">
  	 					<label for="employeeId" class="col-md-5 col-form-label ml-3">Employee ID</label>
    					<div class="col-md-6 ml-4">
     			 			<input type="text"  name="eId" class="form-control" id="employeeId" placeholder="Employee ID"/>
 						</div>
    				</div>
    
  					<div class="form-group row">
  						<label for="departmentID" class="col-md-5 col-form-label ml-3">Department</label>
    					<div class="col-md-6 ml-4">
    						<div class="input-group">
						  		<select class="custom-select" name="dept" id="departmentID" >
							    	<option selected>Transport</option>
							    	<option disabled>SE</option>
							    	<option disabled>IT</option>
						  		</select>
    						</div>
    					</div>
					</div>

					<div class="form-group row">
     					<label for="designation" class="col-md-5 col-form-label ml-3">Designation</label>
   						<div class="col-md-6 ml-4">
      						<div class="input-group">
						  		<select class="custom-select form-control" name="designation" id="designation">
							    	<option selected>Driver</option>
							    	<option disabled>Technician</option>
							    	<option disabled>D.E.O</option>
						  		</select>
						  	</div>
    					</div>
  					</div>
  					
					<div class="form-group row">
     					<label for="exlevel" class="col-md-5 col-form-label ml-3">Experienced Level</label>
    					<div class="col-md-6 ml-4">
      						<div class="input-group">
						  		<select class="custom-select" name="exLevel" id="exlevel">
							    	<option selected>1</option>
								    <option value="1">2</option>
								    <option value="2">3</option>
						  		</select>
    						</div>
    					</div>
  					</div>

					<div class="form-group row">
      					<label for="basicSalary" class="col-md-5 col-form-label ml-3">Basic Salary</label>
    					<div class="col-md-6 ml-4">
      						<input type="text" class="form-control" name="bSal" id="basicSalary"/>
						</div>
    				</div>
    
    				<div class="form-group row">
      					<label for="certificate" class="col-md-5 col-form-label ml-3">Certificates</label>
    					<div class="col-md-6 ml-4">
    						<div class="input-group">
  								<div class="custom-file">
    								<input type="file" class="custom-file-input" name="certi" id="certificate" aria-describedby="inputGroupFileAddon04"/>
    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
						</div>
    				</div>
    
					<div class="form-group row">
      					<label for="cv" class="col-md-5 col-form-label ml-3">Curriculum Vitae</label>
    					<div class="col-md-6 ml-4">
      						<div class="input-group">
  								<div class="custom-file">
    								<input type="file" class="custom-file-input" name="cv" id="cv" aria-describedby="inputGroupFileAddon04"/>
									<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
    					</div>
    				</div>
    
					<div class="form-group row">
    					<label for="photo" class="col-md-5 col-form-label ml-3">Profile Photo</label>
    					<div class="col-md-6 ml-4">
        					<div class="input-group">
  								<div class="custom-file">
    								<input type="file" class="custom-file-input" name="pPhoto" id="photo" aria-describedby="inputGroupFileAddon04"/>
    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
    					</div>
   	 				</div>
    
					<div class="form-group row">
    					<label for="datetime4" class="col-md-5 col-form-label ml-3">Joined Date</label>
    					<div class="col-md-6 ml-4">
      						<input type="text" class="form-control" name="jDate" id="datetime4"/>
    					</div>
    				</div>
    			</div>
    		</div>
  
			<div class="row">
  				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Contact Information</h4></Span></div>
				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Other Information</h4></Span></div>
    		</div>
    
   		 	<div class="row">
				<div class="col-md-5 offset-1"> 

					<div class="form-group row">
						<label for="cAddress" class="col-md-5 col-form-label ml-3">Current Address</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="cAddress" class="form-control" id="cAddress" />
	      				</div>
	      			</div>
	      			
					<div class="form-group row">
						<label for="hAddress" class="col-md-5 col-form-label ml-3">Home Address</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="hAddress" class="form-control" id="hAddress"/>
	      				</div>
	      			</div>
		
					<div class="form-group row">
						<label for="city" class="col-md-5 col-form-label ml-3">City</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="city" class="form-control" id="city" />
	      				</div>
					</div>
	  	
	  				<div class="form-group row">
						<label for="pcode" class="col-md-5 col-form-label ml-3">Postal Code</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="pCode" class="form-control" id="pcode" />
	      				</div>
					</div>
	  	
	  				<div class="form-group row">
						<label for="cn1" class="col-md-5 col-form-label ml-3">Contact No 1</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" class="form-control" name="cn1" id="cn1" />
	      				</div>
	  				</div>
	  
	  				<div class="form-group row">
						<label for="cn2" class="col-md-5 col-form-label ml-3">Contact No 2</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="cn2" class="form-control" id="cn2" />
	      				</div>
					</div>
					
	  				<div class="form-group row">
						<label for="email" class="col-md-5 col-form-label ml-3">Email</label>
	    				<div class="col-md-6 ml-4">
	      					<input type="text" name="email" class="form-control" id="email" />
	      				</div>
	      			</div>
		 		</div>
	
				<div class="col-md-5">
				
					<div class="form-group row">
    					<label for="license" class="col-md-5 col-form-label ml-3">Driving License</label>
    					<div class="col-md-6 ml-4">
        					<div class="input-group">
  								<div class="custom-file">
    								<input type="file" class="custom-file-input" name="license" id="license" aria-describedby="inputGroupFileAddon04"/>
    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  								</div>
							</div>
    					</div>
   	 				</div>
    
    				<div class="form-group row">
      					<label for="reg" class="col-md-5 col-form-label ml-3">Vehicle Reg No</label>
    					<div class="col-md-6 ml-4">
      						<input type="text" class="form-control" name="reg" id="reg"/>
    					</div>
    				</div>
    				
    				<div class="form-group row">
							<label for="availability" class="col-md-5 col-form-label ml-3">Availability</label>
  							<div class="col-md-6 ml-4">
  								<div class="input-group">
	   								<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline5" name="availability" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline5">In</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline6" name="availability" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline6">Out</label>
									</div>
    							</div>
    						</div>
    				</div>
    			</div>
			</div>
			
  			<div class="row">
      			<div class="col md-5 offset-3 mt-5 ">
      				<div class="form-actions ">
      					<button type="submit" class="btn btn-primary">Submit</button>
    				</div>
    			</div>

				<div class="col md-5 mt-5 ">
      					<button type="reset" class="btn btn-primary">Reset</button>
    			</div>
      		</div>

			<script type="text/javascript">
				$('#datetime3,#datetime4').datetimepicker({
					timepicker : false,
					format : 'd-m-y',
					maxDate : 0
				});
			</script>

	
  		</form>
  		
  		<script>
            $('#certificate,#cv,#photo,#license').on('change',function(){
       
                var fileName = $(this).val();
   
                $(this).next('.custom-file-label').html(fileName);
            })
        </script>
  		
  		
  		<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#validateForm2').bootstrapValidator({
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
		
					bDate: {
						validators: {
							notEmpty: {
								message: 'Select Birth Date'
							}
						}
					},
		
					gender: {
						validators: {
							notEmpty: {
								message: 'The gender option is required'
							}
						}
					},
					
					nic: {
						validators: {
							notEmpty: {
								message: 'N.I.C field is required'
							}
						}
					},
					
					mStatus: {
						validators: {
							notEmpty: {
								message: 'Marital Status field is required'
							}
						}
					},
					
					baNo: {
						validators: {
							notEmpty: {
								message: 'Bank Account Number  is required'
							}
						}
					},
					
					cAddress: {
						validators: {
							notEmpty: {
								message: 'Current Address is required'
							}
						}
					},
					
					hAddress: {
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
					
					
					cn1: {
						validators: {
							notEmpty: {
								message: 'Contact No 1 field  is required'
							}
						}
					},
					
					cn2: {
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
					
					exLevel: {
						validators: {
							notEmpty: {
								message: 'Experienced Level  is required'
							}
						}
					},
					
					bSal: {
						validators: {
							notEmpty: {
								message: 'Basic Salary  is required'
							}
						}
					},
					
					certi: {
						validators: {
							notEmpty: {
								message: 'Certificate  is required'
							}
						}
					},
					
					cv: {
						validators: {
							notEmpty: {
								message: 'CV  is required'
							}
						}
					},
					
					pPhoto: {
						validators: {
							notEmpty: {
								message: 'Profile Photo  is required'
							}
						}
					},
					
					jDate: {
						validators: {
							notEmpty: {
								message: 'Joined Date  is required'
							}
						}
					},
					
					license: {
						validators: {
							notEmpty: {
								message: 'License  is required'
							}
						}
					},
					
					reg: {
						validators: {
							notEmpty: {
								message: 'Registration No  is required'
							}
						}
					},
					
					availability: {
						validators: {
							notEmpty: {
								message: 'Availability  is required'
							}
						}
					},
					
					pCode: {
						validators: {
							notEmpty: {
								message: 'Postal Code  is required'
							}
						}
					},
					
					dept: {
						validators: {
							notEmpty: {
								message: 'Department  is required'
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
					
					
					}
				});
			});
   			
		</script>
  		</div>
 
  
	  	<div class="form f3">
			<form method="POST"  action="#" method="post" id="validateForm3">
				<div class="row">
					<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Personal Information</h4></Span></div>
					<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Company Information</h4></Span></div>
				</div>
		
				<div class="row">
					<div class="col-md-5 offset-1">
					
							<div class="form-group row">
								<label for="firstName" class="col-md-5 col-form-label ml-3">First Name</label>
								<div class="col-md-6 ml-4">
									<input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name" />
								</div>
							</div>
	
							<div class="form-group row">
	    						<label for="lastName" class="col-md-5 col-form-label ml-3">Last Name</label>
	    						<div class="col-md-6 ml-4">
	      							<input type="text"  name="lastName" class="form-control" id="lastName" placeholder="Last Name"/>
								</div>
							</div>
	   
	   						<div class="form-group row">
	    						<label for="datetime5" class="col-md-5 col-form-label ml-3">Birth Date</label>
	    						<div class="col-md-6 ml-4">
	      							<input type="text" name="bDate" class="form-control" id="datetime5" placeholder="Date Of Birth"/>
	    					 	</div>
	    					</div>
	    					
	   						<div class="form-group row">
								<label for="gender" class="col-md-5 col-form-label ml-3">Gender</label>
	  							<div class="col-md-6 ml-4">
	  								<div class="input-group">
		   								<div class="custom-control custom-radio custom-control-inline mt-2">
											<input type="radio" id="customRadioInline7" name="gender" class="custom-control-input"/>
		  									<label class="custom-control-label " for="customRadioInline7">Male</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline mt-2">
											<input type="radio" id="customRadioInline8" name="gender" class="custom-control-input"/>
		  									<label class="custom-control-label " for="customRadioInline8">Female</label>
										</div>
	    							</div>
	    						</div>
	    					</div>
	    					
	   						<div class="form-group row">
								<label for="NIC" class="col-md-5 col-form-label ml-3">N.I.C NO</label>
	    						<div class="col-md-6 ml-4">
	      							<input type="text"  class="form-control" name="nic" id="NIC" placeholder="960662770V"/>
					 			</div>
					 		</div>
	      
	      					<div class="form-group row">
								<label for="status" class="col-md-5 col-form-label ml-3">Marital Status</label>
	      						<div class="col-md-6 ml-4">
	      							<div class="input-group">
	  									<select class="custom-select" name="mStatus" id="status">
									    	<option selected>Married</option>
										    <option value="1">Single</option>
										    <option value="2">Divorced</option>
										    <option value="2">Widowed</option>
									  	</select>
	    							</div>
	    						</div>
	    					</div>
	    
							 <div class="form-group row">
								<label for="bankAccountNo" class="col-md-5 col-form-label ml-3">Bank Account Number</label>
	  							<div class="col-md-6 ml-4">
	      							<input type="text"  name="baNo" class="form-control" id="bankAccountNo" />
								</div>
							</div>
					</div>
	  	
	  				<div class="col-md-5">
	  				
	  					<div class="form-group row">
	  	 					<label for="employeeId" class="col-md-5 col-form-label ml-3">Employee ID</label>
	    					<div class="col-md-6 ml-4">
	     			 			<input type="text"  name="employeeId" name="eId" class="form-control" id="employeeId" placeholder="Employee ID"/>
	 						</div>
	    				</div>
	    
	  					<div class="form-group row">
	  						<label for="departmentID" class="col-md-5 col-form-label ml-3">Department</label>
	    					<div class="col-md-6 ml-4">
	    						<div class="input-group">
							  		<select class="custom-select" name="dept" id="departmentID" >
								    	<option selected>IT</option>
								    	<option disabled>SE</option>
								    	<option disabled>Transport</option>
							  		</select>
	    						</div>
	    					</div>
						</div>
	
						<div class="form-group row">
	     					<label for="designation" class="col-md-5 col-form-label ml-3">Designation</label>
	   						<div class="col-md-6 ml-4">
	      						<div class="input-group">
							  		<select class="custom-select form-control" name="designation" id="designation">
								    	<option selected>Technician</option>
								    	<option disabled>D.E.O</option>
								    	<option disabled>Driver</option>
							  		</select>
							  	</div>
	    					</div>
	  					</div>
	  					
						<div class="form-group row">
	     					<label for="exlevel" class="col-md-5 col-form-label ml-3">Experienced Level</label>
	    					<div class="col-md-6 ml-4">
	      						<div class="input-group">
							  		<select class="custom-select" name="exLevel" id="exlevel">
								    	<option selected>1</option>
									    <option value="1">2</option>
									    <option value="2">3</option>
							  		</select>
	    						</div>
	    					</div>
	  					</div>
	
						<div class="form-group row">
	      					<label for="basicSalary" class="col-md-5 col-form-label ml-3">Basic Salary</label>
	    					<div class="col-md-6 ml-4">
	      						<input type="text" class="form-control" name="bSal" id="basicSalary"/>
							</div>
	    				</div>
	    
	    				<div class="form-group row">
	      					<label for="certificate" class="col-md-5 col-form-label ml-3">Certificates</label>
	    					<div class="col-md-6 ml-4">
	    						<div class="input-group">
	  								<div class="custom-file">
	    								<input type="file" class="custom-file-input" name="certi" id="certificate" aria-describedby="inputGroupFileAddon04"/>
	    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
	  								</div>
								</div>
							</div>
	    				</div>
	    
						<div class="form-group row">
	      					<label for="cv" class="col-md-5 col-form-label ml-3">Curriculum Vitae</label>
	    					<div class="col-md-6 ml-4">
	      						<div class="input-group">
	  								<div class="custom-file">
	    								<input type="file" class="custom-file-input" name="cv" id="cv" aria-describedby="inputGroupFileAddon04"/>
										<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
	  								</div>
								</div>
	    					</div>
	    				</div>
	    
						<div class="form-group row">
	    					<label for="photo" class="col-md-5 col-form-label ml-3">Profile Photo</label>
	    					<div class="col-md-6 ml-4">
	        					<div class="input-group">
	  								<div class="custom-file">
	    								<input type="file" class="custom-file-input" name="pPhoto" id="photo" aria-describedby="inputGroupFileAddon04"/>
	    								<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
	  								</div>
								</div>
	    					</div>
	   	 				</div>
	    
						<div class="form-group row">
	    					<label for="datetime6" class="col-md-5 col-form-label ml-3">Joined Date</label>
	    					<div class="col-md-6 ml-4">
	      						<input type="text" class="form-control" name="jDate" id="datetime6"/>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	  
				<div class="row">
	  				<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>Contact Information</h4></Span></div>
					<div class="col-md-6  my-5 text-center"><Span style="text-decoration: underline;"><h4>System Login Information</h4></Span></div>
	    		</div>
	    
	   		 	<div class="row">
					<div class="col-md-5 offset-1"> 
	
						<div class="form-group row">
							<label for="cAddress" class="col-md-5 col-form-label ml-3">Current Address</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="cAddress" id="cAddress" />
		      				</div>
		      			</div>
		      			
						<div class="form-group row">
							<label for="hAddress" class="col-md-5 col-form-label ml-3">Home Address</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="hAddress" id="hAddress"/>
		      				</div>
		      			</div>
			
						<div class="form-group row">
							<label for="city" class="col-md-5 col-form-label ml-3">City</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="city" id="city" />
		      				</div>
						</div>
		  	
		  				<div class="form-group row">
							<label for="pcode" class="col-md-5 col-form-label ml-3">Postal Code</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="pCode" id="pcode" />
		      				</div>
						</div>
		  	
		  				<div class="form-group row">
							<label for="cn1" class="col-md-5 col-form-label ml-3">Contact No 1</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="cn1" id="cn1" />
		      				</div>
		  				</div>
		  
		  				<div class="form-group row">
							<label for="cn2" class="col-md-5 col-form-label ml-3">Contact No 2</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="cn2" id="cn2" />
		      				</div>
						</div>
						
		  				<div class="form-group row">
							<label for="email" class="col-md-5 col-form-label ml-3">Email</label>
		    				<div class="col-md-6 ml-4">
		      					<input type="text" class="form-control" name="email" id="email" />
		      				</div>
		      			</div>
			 		</div>
		
					<div class="col-md-5">
					
						<div class="form-group row">
    						<label for="license" class="col-md-5 col-form-label ml-3">Driving License</label>
    						<div class="col-md-6 ml-4">
        						<div class="input-group">
  									<div class="custom-file">
    									<input type="file" class="custom-file-input" name="license" id="license" aria-describedby="inputGroupFileAddon04"/>
    									<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
  									</div>
								</div>
    						</div>
   	 					</div>
    
    					<div class="form-group row">
      						<label for="bikeNo" class="col-md-5 col-form-label ml-3">Assigned Bike No</label>
    						<div class="col-md-6 ml-4">
      							<input type="text" class="form-control" name="bikeNo" id="bikeNo"/>
    						</div>
    					</div>
    				
    					<div class="form-group row">
							<label for="availability" class="col-md-5 col-form-label ml-3">Availability</label>
  							<div class="col-md-6 ml-4">
  								<div class="input-group">
	   								<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline9" name="availability" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline9">In</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline mt-2">
										<input type="radio" id="customRadioInline10" name="availability" class="custom-control-input"/>
	  									<label class="custom-control-label " for="customRadioInline10">Out</label>
									</div>
    							</div>
    						</div>
    					</div>
					</div>
				</div>
				
	  			<div class="row">
	      			<div class="col md-5 offset-3 mt-5 ">
	      				<div class="form-actions ">
	      					<button type="submit" class="btn btn-primary">Submit</button>
	    				</div>
	    			</div>
	
					<div class="col md-5 mt-5 ">
	      					<button type="reset" class="btn btn-primary">Reset</button>
	    			</div>
	      		</div>
	
				<script type="text/javascript">
					$('#datetime5,#datetime6').datetimepicker({
						timepicker : false,
						format : 'd-m-y',
						maxDate : 0
					});
				</script>
	
		
	  		</form>
	  		
		  	<script>
	            $('#certificate,#cv,#photo,#license').on('change',function(){
	       
	                var fileName = $(this).val();
	   
	                $(this).next('.custom-file-label').html(fileName);
	            })
	        </script>
  		
  		
	  		<script type="text/javascript">
	 
	   			$(document).ready(function() {
				$('#validateForm3').bootstrapValidator({
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
			
						bDate: {
							validators: {
								notEmpty: {
									message: 'Select Birth Date'
								}
							}
						},
			
						gender: {
							validators: {
								notEmpty: {
									message: 'The gender option is required'
								}
							}
						},
						
						nic: {
							validators: {
								notEmpty: {
									message: 'N.I.C field is required'
								}
							}
						},
						
						mStatus: {
							validators: {
								notEmpty: {
									message: 'Marital Status field is required'
								}
							}
						},
						
						baNo: {
							validators: {
								notEmpty: {
									message: 'Bank Account Number  is required'
								}
							}
						},
						
						cAddress: {
							validators: {
								notEmpty: {
									message: 'Current Address is required'
								}
							}
						},
						
						hAddress: {
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
						
						
						cn1: {
							validators: {
								notEmpty: {
									message: 'Contact No 1 field  is required'
								}
							}
						},
						
						cn2: {
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
						
						exLevel: {
							validators: {
								notEmpty: {
									message: 'Experienced Level  is required'
								}
							}
						},
						
						bSal: {
							validators: {
								notEmpty: {
									message: 'Basic Salary  is required'
								}
							}
						},
						
						certi: {
							validators: {
								notEmpty: {
									message: 'Certificate  is required'
								}
							}
						},
						
						cv: {
							validators: {
								notEmpty: {
									message: 'CV  is required'
								}
							}
						},
						
						pPhoto: {
							validators: {
								notEmpty: {
									message: 'Profile Photo  is required'
								}
							}
						},
						
						jDate: {
							validators: {
								notEmpty: {
									message: 'Joined Date  is required'
								}
							}
						},
						
						license: {
							validators: {
								notEmpty: {
									message: 'License  is required'
								}
							}
						},
						
						bikeNo: {
							validators: {
								notEmpty: {
									message: 'Bike No  is required'
								}
							}
						},
						
						availability: {
							validators: {
								notEmpty: {
									message: 'Availability  is required'
								}
							}
						},
						
						pCode: {
							validators: {
								notEmpty: {
									message: 'Postal Code  is required'
								}
							}
						},
						
						dept: {
							validators: {
								notEmpty: {
									message: 'Department  is required'
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
						
						
						}
					});
				});
	   			
			</script>
	  	</div>
	 </div>
	 
	  <footer class="page-footer" style="background-color:#5c5d60;">
		<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
	  </footer>
 </body>
</html>