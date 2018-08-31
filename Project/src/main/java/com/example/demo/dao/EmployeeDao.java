package com.example.demo.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;

@Service
public class EmployeeDao {

	JdbcTemplate template;
	
	public void setTemplatye(JdbcTemplate template) {
		
		this.template=template;
		
	}
	
	public void setDataSource(DataSource datasource) {
		
		template = new JdbcTemplate(datasource);
		
	}
	
	public void insert(Employee e) {
		
		String sql="insert into employee(empID, firstName, lastName, gender, streetAddress, city, postalCode, martialStatus, joinedDate, NIC, dob, bankAccNo, basicSalary, experiencedLevel, cv, designation, deptId, certificate, email) values ('"+e.getEmployeeId()+"','"+e.getFirstName()+"','"+e.getLastName()+"','"+e.getGender()+"','"+e.getCurrentAddress()+"','"+e.getCity()+"','"+e.getPostalCode()+"','"+e.getMaritalStatus()+"','"+"','"+e.getJoinedDate()+"','"+"','"+e.getNIC()+"','"+"','"+e.getBirthDate()+"','"+"','"+e.getBankAccountNo()+"','"+"','"+e.getBasicSalary()+"','"+"','"+e.getExperiencedLevel()+"','"+"','"+e.getCv()+"','"+"','"+e.getDesignation()+"','"+"','"+e.getDepartmentID()+"','"+"','"+e.getCertificates()+"','"+"','"+e.getEmail()+"')";
		System.out.println(sql);
		template.update(sql);
	}
}
