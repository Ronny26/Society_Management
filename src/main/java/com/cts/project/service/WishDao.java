package com.cts.project.service;

import java.util.List;

import com.cts.project.model.Property;


public interface WishDao {

	public void addToWishList(int propertyId,long userId);
	List<Property> getAllWishListItems(long userId) throws Exception; 
	 void removeWishProperty(int propertyId,long userId);
}
