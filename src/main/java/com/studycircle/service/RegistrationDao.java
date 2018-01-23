package com.studycircle.service;

import java.util.List;

import org.hibernate.Session;

import com.studycircle.model.Student;
import com.studycircle.model.StudentDto;

public interface RegistrationDao {

	Session getSession();

	Student save(Student student);

	Student getStudentById(Long id);

	List<StudentDto> getStudentByPlainSql();

}
