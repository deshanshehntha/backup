package com.example.demo.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


public class Employee implements Serializable {

	private static final long serialVersionUID = 1L;
	
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	private int employeeId;
	
//	@NotEmpty(message="First Name field cannot be empty") @Size(min=3,max=15)
	private String firstName;
	
//	@NotEmpty(message="Last Name field cannot be empty") @Size(min=3,max=15)
	private String lastName;
	
//	@NotEmpty(message="Birth Date field cannot be empty")
	private Date birthDate;
	
//	@NotEmpty(message="Gender field cannot be empty")
	private String gender;
	
//	@NotEmpty(message="N.I.C field cannot be empty") 
	private String NIC;
	
//	@NotEmpty(message="Marital status field cannot be empty")
	private String maritalStatus;
	
//	@NotEmpty(message="Bank Account field cannot be empty")
	private int bankAccountNo;
	
//	@NotEmpty(message="Current Address field cannot be empty")@Size(min=8,max=20)
	private String currentAddress;
	
//	@NotEmpty(message="Home Address field cannot be empty")@Size(min=8,max=20)
	private String homeAddress;
	
//	@NotEmpty(message="City field cannot be empty")
	private String city;
	
//	@NotEmpty(message="Postal Code field cannot be empty")
	private int postalCode;
	
//	@NotEmpty(message="Contact No field cannot be empty")
	private int contactNo1;
	
	private int contactNo2;
	
//	@Email @NotEmpty(message="Email field cannot be empty")
	private String email;
	
//	@NotEmpty(message="Department ID field cannot be empty")
	private int departmentID;
	
//	@NotEmpty(message="Designation field cannot be empty")
	private String designation;
	
//	@NotEmpty(message="Experienced Level  cannot be empty")
	private int experiencedLevel;
	
//	@NotEmpty(message="Basic Salary field cannot be empty")
	private double basicSalary;
	
//	@NotEmpty(message="Certificates field cannot be empty")
	private String certificates;
	
//	@NotEmpty(message="CV field cannot be empty")
	private String cv;
	
//	@NotEmpty(message="Photo field cannot be empty")
	private String profilePhoto;
	
//	@NotEmpty(message="Joined Date field cannot be empty")
	private Date joinedDate;
	
//	@NotEmpty(message="License field cannot be empty")
	private String drivingLicense;
	
//	@NotEmpty(message="Bike Number field cannot be empty")
	private String bikeNo;
	
//	@NotEmpty(message="Username field cannot be empty")
	private String userName;
	
//	@NotEmpty(message="password field cannot be empty")
	private String password;
	
//	@NotEmpty(message="Vehicle Number field cannot be empty")
	private String VehicleNo;
	
//	@NotEmpty(message="Availability field cannot be empty")
	private String availability;
	
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String nIC) {
		NIC = nIC;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public int getBankAccountNo() {
		return bankAccountNo;
	}
	public void setBankAccountNo(int bankAccountNo) {
		this.bankAccountNo = bankAccountNo;
	}
	public String getCurrentAddress() {
		return currentAddress;
	}
	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	public int getContactNo1() {
		return contactNo1;
	}
	public void setContactNo1(int contactNo1) {
		this.contactNo1 = contactNo1;
	}
	public int getContactNo2() {
		return contactNo2;
	}
	public void setContactNo2(int contactNo2) {
		this.contactNo2 = contactNo2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getDepartmentID() {
		return departmentID;
	}
	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getExperiencedLevel() {
		return experiencedLevel;
	}
	public void setExperiencedLevel(int experiencedLevel) {
		this.experiencedLevel = experiencedLevel;
	}
	public double getBasicSalary() {
		return basicSalary;
	}
	public void setBasicSalary(double basicSalary) {
		this.basicSalary = basicSalary;
	}
	public String getCertificates() {
		return certificates;
	}
	public void setCertificates(String certificates) {
		this.certificates = certificates;
	}
	public String getCv() {
		return cv;
	}
	public void setCv(String cv) {
		this.cv = cv;
	}
	public String getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	public Date getJoinedDate() {
		return joinedDate;
	}
	public void setJoinedDate(Date joinedDate) {
		this.joinedDate = joinedDate;
	}
	public String getDrivingLicense() {
		return drivingLicense;
	}
	public void setDrivingLicense(String drivingLicense) {
		this.drivingLicense = drivingLicense;
	}
	public String getBikeNo() {
		return bikeNo;
	}
	public void setBikeNo(String bikeNo) {
		this.bikeNo = bikeNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVehicleNo() {
		return VehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	
	

}
