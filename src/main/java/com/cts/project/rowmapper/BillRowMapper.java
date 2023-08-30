package com.cts.project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cts.project.model.Bill;



public class BillRowMapper implements RowMapper<Bill>{
	
	@Override
	public Bill mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bill prop = new Bill();
		prop.setId(rs.getInt(1));
		prop.setElecBill(rs.getLong(2));
		prop.setMainBill(rs.getLong(3));
		prop.setWatBill(rs.getLong(4));
		prop.setElecStat(rs.getBoolean(5));
		prop.setMainStat(rs.getBoolean(6));
		prop.setWatStat(rs.getBoolean(7));
		return prop;
	}




}
