package com.cts.project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cts.project.model.Property;

public class PropertyRowMapper implements RowMapper<Property>{
	
		@Override
		public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
			Property prop = new Property();
			prop.setId(rs.getInt(1));
			prop.setName(rs.getString(2));
			prop.setDescription(rs.getString(3));
			prop.setType(rs.getString(4));
			prop.setPrice(rs.getInt(5));
			prop.setImage(rs.getString(6));
			prop.setWish(rs.getString(7));
			return prop;
		}

	


}
