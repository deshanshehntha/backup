package com.example.demo.controller;

import java.util.Scanner;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
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
import com.example.demo.service.EmailNotification;


@Controller
public class MainController {

	@Autowired
	public EmployeeDao employeedao;

	@Autowired
	public EmailNotification emailNotification;
	
	@Autowired
	public ReadAttendanceFile rt;
	
	@Autowired
	public ReadOverTimeFile ot;
	
	
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
	
	
	@RequestMapping(value="registerdeo",method=RequestMethod.POST)
	public String enterData(@Valid Employee employee,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) 
		{
		
		employeedao.insert(employee);
		
		try {
		emailNotification.sendEmail(employee);
		}
		catch(MailException e){
			e.printStackTrace();
		}
		
		return "redirect:/add";
		}
	
	@RequestMapping(value="registerdriver",method=RequestMethod.POST)
	public String enterDataDriver(@Valid Employee employee,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) 
		{
		
		employeedao.insertDriver(employee);
		
		try {
		emailNotification.sendEmail(employee);
		}
		catch(MailException e){
			e.printStackTrace();
		}
		
		return "redirect:/add";
		}
	
	
	@RequestMapping(value="registerTechnician",method=RequestMethod.POST)
	public String enterDataTechnician(@Valid Employee employee,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) 
		{
		
		employeedao.insertTechnician(employee);
		
		try {
		emailNotification.sendEmail(employee);
		}
		catch(MailException e){
			e.printStackTrace();
		}
		
		return "redirect:/add";
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
	public String empRemove(@RequestParam("employeeId") int employeeId,ModelMap model) 
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
	
	@RequestMapping(value="getLeaveEmployee",method=RequestMethod.GET)
	public String empGetLeave(@RequestParam("employeeId") int employeeId,ModelMap model) 
		{
			Employee lemployee= employeedao.getRemovedById(employeeId);
			model.addAttribute("lemployee", lemployee);
			return "Leave";
		}
	
	@RequestMapping(value="leaveEmployee",method=RequestMethod.POST)
	public String empleave(@ModelAttribute("employee")Employee s,RedirectAttributes redirectAttributes) 
		{
			 employeedao.leave(s);
			 return "redirect:/leave";
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
	public String Leave(ModelMap model) 
		{
			model.addAttribute("lemployee",new Employee());
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
	
	
	
	@RequestMapping(value="uploadt&a",method=RequestMethod.POST)
	public String uploadTandA(@RequestParam("filePath") String path) {
		
		System.out.println(path);
		
		path ="C:\\Users\\HP\\Desktop\\Time and Attendance Upload\\"+path;
		System.out.println(path);
		rt.open(path);
		rt.read();
		rt.close();
		
		
		return "Time&Attend";
	}
	
	@RequestMapping(value="uploadOverTime",method=RequestMethod.POST)
	public String uploadOverTime(@RequestParam("overTime") String path) {
		
		System.out.println(path);
		
		path ="C:\\Users\\HP\\Desktop\\OverTime Upload\\"+path;
		System.out.println(path);
		ot.open(path);
		ot.read();
		ot.close();
		
		
		return "Time&Attend";
	}
	
	

}
