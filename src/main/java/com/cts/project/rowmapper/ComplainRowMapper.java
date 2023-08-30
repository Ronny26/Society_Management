package com.cts.project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import com.cts.project.model.Complain;

public class ComplainRowMapper implements RowMapper<Complain>{

	@Override
	public Complain mapRow(ResultSet rs, int rowNum) throws SQLException {
		Complain com = new Complain();
		com.setId(rs.getInt(1));
		com.setComplain(rs.getString(2));
		com.setName(rs.getString(3));
		com.setEmail(rs.getString(4));
		
	    
		return com ;
		
	}

}
