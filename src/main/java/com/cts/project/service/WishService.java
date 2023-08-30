package com.cts.project.service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;

import com.cts.project.model.Property;
import com.cts.project.rowmapper.PropertyRowMapper;

@Component
public class WishService implements WishDao {
	
	@Autowired
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public void addToWishList(int propertyId,long userId) 
	{
		
		String sql = "insert into wishlist(property_id,user_id) values (?,?)";
		int rowAffected = template.update(sql, propertyId,userId);
		
	}

	@Override
	public List<Property> getAllWishListItems(long userId) throws Exception {
		String sql = "SELECT * FROM property where property_id in(select property_id from wishlist where user_id=?)";
		PropertyRowMapper prm = new PropertyRowMapper();
		List<Property> properties = template.query(sql, prm,userId);
		return properties;
	}

	@Override
	public void removeWishProperty(int propertyId,long userId) {
		// TODO Auto-generated method stub
		
		String sql = "delete from wishlist where property_id=? and user_id=?";
		int rowAffected = template.update(sql, propertyId,userId);
		
	}

	
}
