package com.cts.project.service;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import com.cts.project.exception.NoUserFoundException;
import com.cts.project.model.Users;


public interface UserDao {
	
	public int addUser (Users user) throws SQLIntegrityConstraintViolationException;
	
	public int updateProfile(Users user,long id);
	
	public Users getUserByEmail (String email);
	
	
	public Users getUserById(long id) throws NoUserFoundException;
	
	public List<Users> getAllUser () throws NoUserFoundException;

}
