package com.cts.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cts.project.model.Bill;
import com.cts.project.model.Property;
import com.cts.project.service.BillService;
import com.cts.project.service.PropertyService;



@Controller
public class StaticController {
	@Autowired
	public PropertyService service;
	
	@Autowired
	public BillService billService;
	
	@GetMapping("/all")
	public ResponseEntity<Object> getall(ModelMap model) {
		List<Property> props =service.getAllProperties();
		if(props.size()==0) {
			return new ResponseEntity<>("No Properties found", HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<>(props, HttpStatus.OK);
		
	}
	
	@GetMapping("/allBills")
	public ResponseEntity<Object> getallBills(ModelMap model) {
		List<Bill> props =billService.getAllBills();
		if(props.size()==0) {
			return new ResponseEntity<>("No Properties found", HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<>(props, HttpStatus.OK);
		
	}
	
	@GetMapping("/club")
	public String club() {
		
		return "membership";
		
	}
	@GetMapping("/about")
	public String about()
	{
		return "about";
		
	}
	@GetMapping("/pest")
	public String pest()
	{
		return "pest";
		
	}
	@GetMapping("/emi")
	public String emi()
	{
		return "emicalc";
		
	}
	
	


}
