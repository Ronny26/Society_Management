package com.cts.project.service;

import java.util.List;

import com.cts.project.model.Property;

public interface PropertyDao {

	public int addProperty(Property property);

	public List<Property> getAllProperties();

	public List<Property> getRentProperties();

	public List<Property> getSaleProperties();

	public Property getPropertyDetailsById(int id);

	public int wished(String wish, int id);

	public List<Property> low();

	public List<Property> high();

	public List<Property> rent();

	public List<Property> sale();

}
