package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.EmployeeDao;
import com.example.demo.model.Employee;

@Controller
public class MainController {

	@Autowired
	public EmployeeDao employeedao;
	
	
	@RequestMapping("signin")
	public String SignIn() 
		{
			return "SignIn";
		}
	
	@RequestMapping(value="add",method=RequestMethod.GET)
	public String AddDeo(ModelMap model) 
		{
			Employee employee = new Employee();
			model.addAttribute("employee",employee);
			return "AddEmployee";
		}
	
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String enterData(@Valid Employee employee,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) {
		
//		if(result.hasErrors()) {
//			System.out.println("Error");
//			return "AddEmployee";
//		}
		employeedao.insert(employee);
		
		return "redirect:/remove";
		}
	
	
	
	@RequestMapping("remove")
	public String RemoveEmp() 
		{
			return "RemoveEmployee";
		}
	
	 
	@RequestMapping(value="getEmployee",method=RequestMethod.GET)
	public String editProfile(@RequestParam("employeeId") int employeeId,ModelMap model) 
		{
			Employee employee= employeedao.getEmployeeById(employeeId);
			model.addAttribute("employee", employee);
			return "EmployeeProfile";
		}
	

	
	@RequestMapping("profile")
	public String pro(ModelMap model) 
		{
			model.addAttribute("employee",new Employee());
			return "EmployeeProfile";
		}

	
	@RequestMapping("t&a")
	public String TimeAttend() 
		{
			return "Time&Attend";
		}

	
	@RequestMapping("leave")
	public String Leave() 
		{
			return "Leave";
		}
	@RequestMapping("payroll")
	public String Pay() 
		{
			return "Payroll";
		}
	@RequestMapping(value="/valid",method=RequestMethod.GET)
	public String valid() {
	
		return "Validator";
	}
	
	

}
