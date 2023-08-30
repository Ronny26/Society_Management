package com.cts.project.service;

import java.util.List;

import com.cts.project.model.Complain;


public interface ComplainDao {
	
	public int addComplain(Complain com);
	 public List<Complain> getAllComplain() ;
	 public int resolveCom(Complain com,int id);

}
