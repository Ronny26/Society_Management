package com.cts.project.service;

import java.util.List;

import com.cts.project.model.Bill;

public interface BillDao {

	public List<Bill> getAllBills();
	
	public int addUserToBills(long userId);
	
	public Bill getBillById(long userId);
	
	public int updateBillAdmin(Bill bill,long userId);
	
	public int updateBillUser(Bill bill,long userId);
	
	public int updateBillUserAdmin(Bill bill,long userId);
}
