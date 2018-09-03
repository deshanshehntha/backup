package com.example.demo.dao;


import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;

@Service
public class EmployeeDao {

	JdbcTemplate template;
	@Autowired
	private DataSource datasource;
	
	public void setTemplate(JdbcTemplate template) {
		
		this.template=template;
		
	}
	@Autowired
	public void setDataSource(DataSource datasource) {
		
		template = new JdbcTemplate(datasource);
		
	}
	
	public void insert(Employee e) {
		
		String sql1="insert into employee(firstName, lastName, gender, currentAddress,homeAddress,city, postalCode, martialStatus, joinedDate, NIC, dob, bankAccNo, basicSalary, experiencedLevel, cv, designation, deptId, certificate, email,contactNo1, contactNo2, profilePhoto) values ('"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getGender()+"','"+e.getCurrentAddress()+"','"+e.getHomeAddress()+"','"+e.getCity()+"','"+e.getPostalCode()+"','"+e.getMaritalStatus()+"','"+e.getJoinedDate()+"','"+e.getNIC()+"','"+e.getBirthDate()+"','"+e.getBankAccountNo()+"','"+e.getBasicSalary()+"','"+e.getExperiencedLevel()+"','"+e.getCv()+"','"+e.getDesignation()+"','"+e.getDepartmentID()+"','"+e.getCertificates()+"','"+e.getEmail()+"','"+e.getContactNo1()+"','"+e.getContactNo2()+"','"+e.getProfilePhoto()+"')";
		String sql2="SET @last_id_in_employee = Last_Insert_ID();";
		String sql3="insert into system_user(empSUId, username, password)values (@last_id_in_employee,'"+e.getUserName()+"','"+e.getPassword()+"')";
		System.out.println(sql1);
		System.out.println(sql3);
		template.batchUpdate(sql1,sql2,sql3);
		
	
	}
	
	public Employee getEmployeeById(int id) {
		//select * from employee inner join system_user on employee.empID=system_user.empSUId
		return template.query("select * from employee inner join system_user on employee.empID=system_user.empSUId where employee.empID="+id,new ResultSetExtractor<Employee>() {
			
			public Employee extractData(ResultSet rs) throws SQLException {
				
				
				Employee e= new Employee();
				while(rs.next()) {
					
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
					e.setPassword(rs.getString(25));
					e.setUserName(rs.getString(26));
				
					
			
				}
				return e;
		}
				
			
		});
		
	}
		
}
