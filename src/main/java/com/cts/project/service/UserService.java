package com.cts.project.service;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import com.cts.project.exception.NoUserFoundException;
import com.cts.project.model.Property;
import com.cts.project.model.Users;
import com.cts.project.rowmapper.PropertyRowMapper;
import com.cts.project.rowmapper.UserRowMapper;

@Service
public class UserService implements UserDao {

	@Autowired
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	@Override
	public int addUser(Users user) throws SQLIntegrityConstraintViolationException{
		
		String sql = "insert into users(first_name,last_name,email,password,status) values (?,?,?,?,?)";
		int rowAffected = template.update(sql,user.getFirstName(), user.getLastName(),user.getEmail(),user.getPassword(),"nonresident");
		
		
		return rowAffected;
	}


	@Override
	public int updateProfile(Users user,long id) {
		
		String sql = "UPDATE users SET first_name=?, last_name=? ,email=? , password=? , address=? , phone_no=?,status=? WHERE id=?";
		int rowAffected = template.update(sql,user.getFirstName(), user.getLastName(),user.getEmail(),user.getPassword(),user.getAddress(),user.getPhoneNo(),user.getStatus(),id);
		
		return rowAffected;
	}

	@Override
	public Users getUserByEmail(String email) {
		
			
	
		String sql = "select * from users where email=?";
		UserRowMapper prm = new UserRowMapper();
		Users user =template.queryForObject(sql, prm, email);
		
		
	
		return user;
		
		
		
	}

	
	
	@Override
	public Users getUserById(long id) throws NoUserFoundException{
		String sql = "select * from users where id=?";
		UserRowMapper prm = new UserRowMapper();
		Users user =template.queryForObject(sql, prm, id);
		
		if(user==null)
		{
			throw new NoUserFoundException("No User Found");
		}
		return user;
	}


	@Override
	public List<Users> getAllUser() throws NoUserFoundException{
		String sql = "select * from users where status='resident'";
		UserRowMapper prm = new UserRowMapper();
		List<Users> user = template.query(sql, prm);
		if(user==null) {
			throw new NoUserFoundException("No User Found");
		}
		return user;
	}

	
}
