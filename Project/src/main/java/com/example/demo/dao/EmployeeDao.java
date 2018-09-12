package com.example.demo.dao;


import java.sql.ResultSet;
import java.sql.SQLException;


import javax.sql.DataSource;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;


@Service
public class EmployeeDao {

	JdbcTemplate template;

	
	public void setTemplate(JdbcTemplate template) 
	{
		
		this.template=template;
	}
	
	@Autowired
	public void setDataSource(DataSource datasource) 
	{
		
		template = new JdbcTemplate(datasource);
		
	}
	
	public void insert(Employee e) 
	{
		
		String sql1="insert into employee(firstName, lastName, gender, currentAddress,homeAddress,city, postalCode, martialStatus, joinedDate, NIC, dob, bankAccNo, basicSalary, experiencedLevel, cv, designation, deptId, certificate, email,contactNo1, contactNo2, profilePhoto) values ('"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getGender()+"','"+e.getCurrentAddress()+"','"+e.getHomeAddress()+"','"+e.getCity()+"','"+e.getPostalCode()+"','"+e.getMaritalStatus()+"','"+e.getJoinedDate()+"','"+e.getNIC()+"','"+e.getBirthDate()+"','"+e.getBankAccountNo()+"','"+e.getBasicSalary()+"','"+e.getExperiencedLevel()+"','"+e.getCv()+"','"+e.getDesignation()+"','"+e.getDepartmentId()+"','"+e.getCertificates()+"','"+e.getEmail()+"','"+e.getContactNo1()+"','"+e.getContactNo2()+"','"+e.getProfilePhoto()+"')";
		String sql2="SET @last_id_in_employee = Last_Insert_ID();";
		String sql3="insert into system_user(empSUId, username, password)values (@last_id_in_employee,'"+e.getUserName()+"','"+e.getPassword()+"')";
		System.out.println(sql1);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3);
	
	} 
		
	public void delete(Employee e,int id) 
	{
		
		String sql1="insert into removed_emps(employeeId, firstName,contactNo, joinedDate, designation, departmentName, leaveDate, resignation, specialNotes) values ('"+e.getEmployeeId()+"','"+e.getFirstName()+"','"+e.getContactNo1()+"','"+e.getJoinedDate()+"','"+e.getDesignation()+"','"+e.getDepartmentName()+"','"+e.getLeavingDate()+"','"+e.getResignation()+"','"+e.getSpecialNotes()+"')";
		String sql2="delete from system_user where empSUId="+id+"";
		String sql3="delete from other_emps where empOTId="+id+"";
		String sql4="delete from employee where empID="+id+"";
		
		System.out.println(sql1);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3,sql4);

	} 
	
	public void leave(Employee e) 
	{
		
		String sql1="insert into emp_leave(emID, firstName, lastName, departmentName, designation, type, reason, requestedDate, strtDateTime, endDateTime) values ('"+e.getEmployeeId()+"','"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getDepartmentName()+"','"+e.getDesignation()+"','"+e.getLeaveType()+"','"+e.getLeaveReason()+"','"+e.getLeaveRequestedDate()+"','"+e.getLeaveStartDate()+"','"+e.getLeaveEndDate()+"')";

		System.out.println(sql1);
		
		template.batchUpdate(sql1);

	} 
	
	
	public void insertDriver(Employee e) 
	{
		
		String sql1="insert into employee(firstName, lastName, gender, currentAddress,homeAddress,city, postalCode, martialStatus, joinedDate, NIC, dob, bankAccNo, basicSalary, experiencedLevel, cv, designation, deptId, certificate, email,contactNo1, contactNo2, profilePhoto) values ('"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getGender()+"','"+e.getCurrentAddress()+"','"+e.getHomeAddress()+"','"+e.getCity()+"','"+e.getPostalCode()+"','"+e.getMaritalStatus()+"','"+e.getJoinedDate()+"','"+e.getNIC()+"','"+e.getBirthDate()+"','"+e.getBankAccountNo()+"','"+e.getBasicSalary()+"','"+e.getExperiencedLevel()+"','"+e.getCv()+"','"+e.getDesignation()+"','"+e.getDepartmentId()+"','"+e.getCertificates()+"','"+e.getEmail()+"','"+e.getContactNo1()+"','"+e.getContactNo2()+"','"+e.getProfilePhoto()+"')";
		String sql2="SET @last_id_in_employee = Last_Insert_ID();";
		String sql3="insert into other_emps(empOTId, drivingLicense, availability, vehicleNo)values (@last_id_in_employee,'"+e.getDrivingLicense()+"','"+e.getAvailability()+"','"+e.getVehicleNo()+"')";
		System.out.println(sql1);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3);
	
	} 
	
	public void insertTechnician(Employee e) 
	{
		
		String sql1="insert into employee(firstName, lastName, gender, currentAddress,homeAddress,city, postalCode, martialStatus, joinedDate, NIC, dob, bankAccNo, basicSalary, experiencedLevel, cv, designation, deptId, certificate, email,contactNo1, contactNo2, profilePhoto) values ('"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getGender()+"','"+e.getCurrentAddress()+"','"+e.getHomeAddress()+"','"+e.getCity()+"','"+e.getPostalCode()+"','"+e.getMaritalStatus()+"','"+e.getJoinedDate()+"','"+e.getNIC()+"','"+e.getBirthDate()+"','"+e.getBankAccountNo()+"','"+e.getBasicSalary()+"','"+e.getExperiencedLevel()+"','"+e.getCv()+"','"+e.getDesignation()+"','"+e.getDepartmentId()+"','"+e.getCertificates()+"','"+e.getEmail()+"','"+e.getContactNo1()+"','"+e.getContactNo2()+"','"+e.getProfilePhoto()+"')";
		String sql2="SET @last_id_in_employee = Last_Insert_ID();";
		String sql3="insert into other_emps(empOTId, drivingLicense, availability,bikeNo)values (@last_id_in_employee,'"+e.getDrivingLicense()+"','"+e.getAvailability()+"','"+e.getBikeNo()+"')";
		System.out.println(sql1);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3);
	
	} 
	
	
	public void uploadTimeAttendance(String a,String b,String c,int d) 
	{	
		
		String sql1="insert into attendance(date, startTime, endTime, eid) values ('"+a+"','"+b+"','"+c+"','"+d+"')";
		System.out.println(sql1);
		template.update(sql1);
	
	}
	
	public void uploadOverTime(int a,String b,String c,String d) 
	{	
		
		String sql1="insert into overtime(eeid, strtTime, endTime, date) values ('"+a+"','"+b+"','"+c+"','"+d+"')";
		System.out.println(sql1);
		template.update(sql1);
	
	}
	

	
	public Employee getEmployeeById(int id) {
		
		return template.query("select * from employee left outer join system_user on employee.empID=system_user.empSUId left outer join other_emps on other_emps.empOTId=employee.empID where employee.empID="+id,new ResultSetExtractor<Employee>() {
			
			public Employee extractData(ResultSet rs) throws SQLException 
			{
				
				
				Employee e= new Employee();
				while(rs.next()) 
				{
					
					e.setEmployeeId(rs.getInt(1));
					e.setFirstName(rs.getString(2));
					e.setLastName(rs.getString(3));
					e.setCurrentAddress(rs.getString(5));
					e.setCity(rs.getString(6));
					e.setPostalCode(rs.getInt(7));
					e.setMaritalStatus(rs.getString(8));
					e.setJoinedDate(rs.getDate(9));
					e.setNIC(rs.getString(10));
					e.setBankAccountNo(rs.getInt(12));
					e.setBasicSalary(rs.getDouble(13));
					e.setEmail(rs.getString(19));
					e.setHomeAddress(rs.getString(20));
					e.setContactNo1(rs.getInt(21));
					e.setContactNo2(rs.getInt(22));
					e.setProfilePhoto(rs.getString(23));
					e.setUserName(rs.getString(25));
					e.setPassword(rs.getString(26));
					e.setDrivingLicense(rs.getString(28));
					e.setAvailability(rs.getString(29));
					e.setVehicleNo(rs.getString(30));
					e.setBikeNo(rs.getString(31));
					
				}
			
			return e;
		}
				
			
	});
		
	}
		
	
	public void update(Employee e)
	{
		String sql1="update system_user	set username='"+e.getUserName()+"',password='"+e.getPassword()+"' where empSUId="+e.getEmployeeId()+";";
		String sql2="update other_emps	set drivingLicense='"+e.getDrivingLicense()+"',availability='"+e.getAvailability()+"',vehicleNo='"+e.getVehicleNo()+"',bikeNo='"+e.getBikeNo()+"' where empOTId="+e.getEmployeeId()+";";
		String sql3="update employee set firstName='"+e.getFirstName()+"',lastName='"+e.getLastName()+"',currentAddress='"+e.getCurrentAddress()+"',homeAddress='"+e.getHomeAddress()+"',city='"+e.getCity()+"',postalCode='"+e.getPostalCode()+"',martialStatus='"+e.getMaritalStatus()+"',NIC='"+e.getNIC()+"',bankAccNo='"+e.getBankAccountNo()+"',basicSalary='"+e.getBasicSalary()+"',email='"+e.getEmail()+"',contactNo1='"+e.getContactNo1()+"',contactNo2='"+e.getContactNo2()+"' where empID="+e.getEmployeeId()+";";

		System.out.println(sql1);
		System.out.println(sql2);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3);
	} 
		
	
	
	public Employee getRemovedById(int id) 
	{

		return template.query("select * from employee left join department on employee.deptId=department.deptmID where employee.empID="+id,new ResultSetExtractor<Employee>() {
			
			public Employee extractData(ResultSet rs) throws SQLException {
				
				
				Employee e= new Employee();
				while(rs.next()) 
				{
					
					e.setEmployeeId(rs.getInt(1));
					e.setFirstName(rs.getString(2));
					e.setLastName(rs.getString(3));
				
					e.setCurrentAddress(rs.getString(5));
					e.setCity(rs.getString(6));
					e.setPostalCode(rs.getInt(7));
					e.setMaritalStatus(rs.getString(8));
					e.setJoinedDate(rs.getDate(9));
					e.setDesignation(rs.getString(16));
					e.setContactNo1(rs.getInt(21));
					e.setDepartmentName(rs.getString(25));
					
				}
				return e;
		}
				
			
		});
		
	}

	
	
	
	
	
	
}
