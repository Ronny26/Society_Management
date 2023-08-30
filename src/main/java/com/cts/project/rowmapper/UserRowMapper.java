package com.cts.project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import com.cts.project.model.Users;

public class UserRowMapper implements RowMapper<Users>{

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users user = new Users();
		user.setId(rs.getLong(1));
		user.setFirstName(rs.getString(4));
		user.setLastName(rs.getString(5));
		user.setEmail(rs.getString(3));
		user.setPassword(rs.getString(6));
	    user.setPhoneNo(rs.getLong(7));
		user.setAddress(rs.getString(2));
		user.setStatus(rs.getString(8));
		return user;
		
	}

}
