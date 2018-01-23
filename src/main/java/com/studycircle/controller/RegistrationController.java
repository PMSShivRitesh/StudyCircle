package com.studycircle.controller;

import java.lang.reflect.InvocationTargetException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.studycircle.dto.StudentDTO;
import com.studycircle.model.Student;
import com.studycircle.service.RegistrationService;

@Controller
public class RegistrationController {
	
	@Autowired
	private RegistrationService registrationServiceImpl;
	
	@RequestMapping(value = { "admission"}, method = RequestMethod.GET)
	public String admission(Principal principal, Model model) {

		model.addAttribute("userName", principal.getName());
		return "home/admission";
	}
	
	@RequestMapping(value = { "registration"}, method = RequestMethod.POST)
	public String registration(Principal principal, Model model,@ModelAttribute StudentDTO studentDTO) throws IllegalAccessException, InvocationTargetException {

		Student student = registrationServiceImpl.registration(studentDTO);
		return "redirect:printpage?id="+student.getId();
	}
	
	@RequestMapping(value = { "printpage"}, method = RequestMethod.GET)
	public String printPage(Principal principal, Model model, @RequestParam Long id){
		Student student = registrationServiceImpl.getStudentById(id);
		model.addAttribute("student",student);
		model.addAttribute("userName", principal.getName());
		return "home/printadmissionform";
	}
}
