package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String enterData(@Valid Employee employee,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) 
		{
		
		employeedao.insert(employee);
		return "redirect:/profile";
		}
	
	@RequestMapping("remove")
	public String RemoveEmp(ModelMap model) 
		{
			
			model.addAttribute("remployee",new Employee());
			return "RemoveEmployee";
		}
	

	@RequestMapping(value="getEmployee",method=RequestMethod.GET)
	public String editProfile(@RequestParam("employeeId") int employeeId,ModelMap model) 
		{
			Employee employee= employeedao.getEmployeeById(employeeId);
			model.addAttribute("employee", employee);
			return "EmployeeProfile";
		}
	
	@RequestMapping(value="removeEmployee",method=RequestMethod.GET)
	public String empLeave(@RequestParam("employeeId") int employeeId,ModelMap model) 
		{
			Employee remployee= employeedao.getRemovedById(employeeId);
			model.addAttribute("remployee", remployee);
			return "RemoveEmployee";
		}
	
	@RequestMapping(value="empRemove",method=RequestMethod.POST)
	public String empremove(@ModelAttribute("employee")Employee s,@RequestParam("employeeId") int employeeId,ModelMap model,RedirectAttributes redirectAttributes) 
		{
			 employeedao.delete(s,employeeId);
			 return "redirect:/remove";
		}
	
	@RequestMapping("profile")
	public String pro(ModelMap model) 
		{
			model.addAttribute("employee",new Employee());
			return "EmployeeProfile";
		}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(@ModelAttribute("employee")Employee s,ModelMap model) 
		{
			employeedao.update(s);
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
