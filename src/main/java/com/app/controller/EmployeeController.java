package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Employee;
import com.app.service.IEmployeeService;

@Controller
@RequestMapping("/emp")
public class EmployeeController {
	
	@Autowired
	private IEmployeeService service;
	 @RequestMapping("/show")
	public String Showpage(Model map) {
		 //form baking object
		 map.addAttribute("employee", new Employee());
		return"Register";
	}
	 
	 
	//2. Read Form Data on click submit
		@RequestMapping(value="/save",method=RequestMethod.POST)
		public String saveData(@ModelAttribute Employee employee,Model map)
		{
			//call service layer
			Integer id=service.saveEmployee(employee);
			map.addAttribute("message", "Product created!!::  "+id);
			//clean Form Backing Object
			 map.addAttribute("employee", new Employee());
			return"Register";
		}
		
		
		// fetch all row
		@RequestMapping("/all")
		public String getAllData(Model map ,Employee employee) {
		List<Employee> obs=service.getAllEmployee();
		map.addAttribute("list",obs);	
		return"Data";
		}

		// delete row based on id
		@RequestMapping("/delete")
		public String DeleteData(@RequestParam Integer id,Model map) {
			// call service layer
			service.deleteEmployee(id);
			map.addAttribute("msg","data delete'"+id+"'");
			return "Data";
		}
		
		// 5.edit data based on key
		@RequestMapping("/edit")
		public String EditData(@RequestParam Integer id,Model map) {
			// call service layer
		Employee e=	service.getEmployeeById(id);
		// form backing
		map.addAttribute("employee",e);
		map.addAttribute("Mode", "EDIT");
			return"Register";
		}
}
