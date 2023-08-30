package com.cts.project.service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import com.cts.project.model.Property;
import com.cts.project.rowmapper.PropertyRowMapper;

@Service
public class PropertyService implements PropertyDao {

	@Autowired
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	@Override
	public int addProperty(Property property) {
		
		String sql = "insert into property(property_name,property_description,property_type,property_price,property_image) values (?,?,?,?,?)";
		int rowAffected = template.update(sql,property.getName(), property.getDescription(),property.getType(),property.getPrice(),property.getImage());
		
		return rowAffected;
		
	}

	@Override
	public List<Property> getAllProperties() {
		String sql = "select * from property";
		PropertyRowMapper prm = new PropertyRowMapper();
		List<Property> properties = template.query(sql, prm);
		return properties;
		
	}

	@Override
	public List<Property> getRentProperties() {
		
		String sql = "select * from property where property_type=?";
		PropertyRowMapper prm = new PropertyRowMapper();
		List<Property> properties = template.query(sql, prm,"rent");
		return properties;
		
	}

	@Override
	public List<Property> getSaleProperties() {
		String sql = "select * from property where property_type=?";
		PropertyRowMapper prm = new PropertyRowMapper();
		List<Property> properties = template.query(sql, prm,"sale");
		return properties;
	}

	@Override
	public Property getPropertyDetailsById(int id) {
		String sql = "select * from property where property_id=?";
		PropertyRowMapper prm = new PropertyRowMapper();
		Property property =template.queryForObject(sql, prm, id);
		return property;
	}

	@Override
	public int wished(String wish,int id) {
		String sql = "UPDATE property SET wish = ? WHERE property_id = ?";
		int rowAffected = template.update(sql,wish,id);
		return rowAffected;
		
	}

	@Override
	public List<Property> low() {
	    String sql = "select * from property order by property_price";
	    PropertyRowMapper prm = new PropertyRowMapper();
		List<Property> property =template.query(sql, prm);
		return property;
	}

	@Override
	public List<Property> high() {
		 String sql = "select * from property order by property_price desc";
		    PropertyRowMapper prm = new PropertyRowMapper();
			List<Property> property =template.query(sql, prm);
			return property;
	}

	@Override
	public List<Property> rent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Property> sale() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}
