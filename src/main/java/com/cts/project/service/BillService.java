package com.cts.project.service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import com.cts.project.model.Bill;
import com.cts.project.model.Property;
import com.cts.project.rowmapper.BillRowMapper;
import com.cts.project.rowmapper.PropertyRowMapper;

@Service
public class BillService implements BillDao{

	@Autowired
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	@Override
	public List<Bill> getAllBills() {
		
		String sql = "select * from bills";
		BillRowMapper prm = new BillRowMapper();
		List<Bill> bills = template.query(sql, prm);
		return bills;
	}
	
	

	@Override
	public int updateBillAdmin(Bill bill,long userId) {
		String sql = "UPDATE bills set electricity_bill=?,maintainance_bill=?,water_bill=?,eb_status=?,mb_status=?,wb_status=? where user_id=? ";
		int rowAffected = template.update(sql,bill.getElecBill(),bill.getMainBill(),bill.getWatBill(),bill.isElecStat(),bill.isMainStat(),bill.isWatStat(),userId);
		
		return rowAffected;
	}

	@Override
	public int updateBillUser(Bill bill,long userId) {
		String sql = "UPDATE bills set eb_status=?,mb_status=?,wb_status=? where user_id=? ";
		int rowAffected = template.update(sql,true,true,true,userId);
		
		return rowAffected;
	}

	@Override
	public Bill getBillById(long userId) {
		String sql = "select * from bills where user_id=?";
		BillRowMapper prm = new BillRowMapper();
		Bill bills = template.queryForObject(sql,prm, userId);
		return bills;
	}



	@Override
	public int addUserToBills(long userId) {
		
		String sql = "insert into bills(user_id,electricity_bill,maintainance_bill,water_bill,eb_status,mb_status,wb_status) values (?,?,?,?,?,?,?) ";
		int rowAffected = template.update(sql,userId,0,0,0,false,false,false);
		
		return rowAffected;
		
	}



	@Override
	public int updateBillUserAdmin(Bill bill, long userId) {
		String sql = "UPDATE bills set electricity_bill=?,maintainance_bill=?,water_bill=?, eb_status=?,mb_status=?,wb_status=? where user_id=? ";
		int rowAffected = template.update(sql,bill.getElecBill(),bill.getMainBill(),bill.getWatBill(),bill.isElecStat(),bill.isMainStat(),bill.isWatStat() ,userId);
		
		return rowAffected;
	}

}
