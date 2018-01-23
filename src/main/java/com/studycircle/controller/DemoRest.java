package com.studycircle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studycircle.model.StudentDto;
import com.studycircle.service.RegistrationService;

@RestController
public class DemoRest {
	
	@Autowired
	RegistrationService registrationService;
	
	@RequestMapping("demorest")
	public List<StudentDto> getPlainSqlData(){
		return registrationService.getStudentByPlainSql();
	}

}
