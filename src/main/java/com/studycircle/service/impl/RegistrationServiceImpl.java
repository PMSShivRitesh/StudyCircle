package com.studycircle.service.impl;



import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.studycircle.dto.StudentDTO;
import com.studycircle.model.Student;
import com.studycircle.model.StudentDto;
import com.studycircle.service.RegistrationDao;
import com.studycircle.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	private RegistrationDao registrationDaoImpl;
	
	@Override
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public Student registration(StudentDTO studentDTO) throws IllegalAccessException, InvocationTargetException {
		Student student = new Student();
		BeanUtils.copyProperties(student, studentDTO);
		Student s = registrationDaoImpl.save(student);
		return s;
	}

	@Override
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public Student getStudentById(Long id) {
		Student student = registrationDaoImpl.getStudentById(id);
		return student;
	}
	
	@Override
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public List<StudentDto> getStudentByPlainSql(){
		return registrationDaoImpl.getStudentByPlainSql();
	}
}
