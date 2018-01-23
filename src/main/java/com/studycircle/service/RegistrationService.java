package com.studycircle.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.studycircle.dto.StudentDTO;
import com.studycircle.model.Student;
import com.studycircle.model.StudentDto;

public interface RegistrationService {

	Student registration(StudentDTO studentDTO) throws IllegalAccessException, InvocationTargetException;

	Student getStudentById(Long id);

	List<StudentDto> getStudentByPlainSql();

}
