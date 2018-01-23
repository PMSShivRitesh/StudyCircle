package com.studycircle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studycircle.model.Student;
import com.studycircle.model.StudentDto;
import com.studycircle.service.RegistrationDao;

@Repository
public class RegistrationDaoImpl implements RegistrationDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
	
	@Override
	public Student save(Student student){
		Long id =  (Long) getSession().save(student);
		Student s = getSession().get(Student.class, id);
		return s;
	}

	@Override
	public Student getStudentById(Long id) {
		Student student = getSession().get(Student.class, id);
		return student;
	}
	
	@Override
	public List<StudentDto> getStudentByPlainSql() {
		Query query = getSession().createSQLQuery("select name from student");
		return query.list();
	}
}
