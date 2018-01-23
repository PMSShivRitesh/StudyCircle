package com.studycircle.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.studycircle.model.User;
/**
 * 
 * @author Shivshanker Mhadiwale
 *
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    List<User> findAll();
}