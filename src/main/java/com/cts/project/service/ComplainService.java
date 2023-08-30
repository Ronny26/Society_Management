package com.cts.project.service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import com.cts.project.model.Complain;
import com.cts.project.model.Users;
import com.cts.project.rowmapper.ComplainRowMapper;
import com.cts.project.rowmapper.UserRowMapper;

@Service
public class ComplainService implements ComplainDao {

	@Autowired
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public int addComplain(Complain com) {
		String sql = "insert into complains(complain,user_name,user_id) values (?,?,?)";
		int rowAffected = template.update(sql, com.getComplain(), com.getName(), com.getEmail());

		return rowAffected;
	}

	@Override
	public List<Complain> getAllComplain() {
		String sql = "select * from complains";
		ComplainRowMapper prm = new ComplainRowMapper();
		List<Complain> com = template.query(sql, prm);
		return com;
	}

	@Override
	public int resolveCom(Complain com, int id) {
		String sql = "delete from complains where id=?";
		int rowAffected = template.update(sql,com.getId());

		return rowAffected;
	
	}

}
