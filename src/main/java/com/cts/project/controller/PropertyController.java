package com.cts.project.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cts.project.exception.NoUserFoundException;
import com.cts.project.exception.UserAlreadyExistsException;
import com.cts.project.model.Bill;
import com.cts.project.model.Complain;
import com.cts.project.model.Property;
import com.cts.project.model.Users;
import com.cts.project.service.BillService;
import com.cts.project.service.ComplainService;
import com.cts.project.service.PropertyService;
import com.cts.project.service.UserService;
import com.cts.project.service.WishService;

@SessionAttributes("id")
@Controller
public class PropertyController {

	@Autowired
	public PropertyService service;

	@Autowired
	public WishService wish;

	@Autowired
	public UserService userService;

	@Autowired
	public BillService billService;

	@Autowired
	public ComplainService comService;

	@GetMapping("/")
	public String landing(ModelMap model) {
		List<Property> props = service.getAllProperties();

		model.put("props", props);
		return "landingpage";
	}

	@GetMapping("/profile")
	public String getProfile(ModelMap model) throws NoUserFoundException {
		Users user = userService.getUserById((long) model.get("id"));
		model.put("user", user);

		return "profile";
	}

	@GetMapping("/logged-home")
	public String homelogged(Principal principal, ModelMap model) {
		Users user = userService.getUserByEmail(principal.getName());
		model.put("id", user.getId());
		int count = 0;
		List<Bill> bills = billService.getAllBills();

		for (Bill b : bills) {

			if (b.getId() == (long) model.get("id")) {
				count++;
			}
		}
		if (count == 0) {
			billService.addUserToBills((long) model.get("id"));
			Bill bill = billService.getBillById((long) model.get("id"));

			model.put("bill", bill);

			if (bill.getElecBill() == 0 && bill.getMainBill() == 0 && bill.getWatBill() == 0) {

				model.put("newUser", "yes");

			}

		}

		Bill billss = billService.getBillById((long) model.get("id"));
		String stat = user.getStatus();
		if (stat.equalsIgnoreCase("resident") && billss.isElecStat() == false || billss.isMainStat() == false
				|| billss.isWatStat() == false) {
			model.put("billDue", true);
			if (billss.getElecBill() == 0 && billss.getMainBill() == 0 && billss.getWatBill() == 0) {
				model.put("billDue", false);
			}
		}

		List<Property> props = service.getAllProperties();
		List<Property> rented = service.getRentProperties();
		List<Property> sale = service.getSaleProperties();
		model.put("props", props);
		model.put("rents", rented);
		model.put("sale", sale);

		return "loginlandingPage";

	}

	@GetMapping("/view-details")
	public String viewProperty(ModelMap model, @RequestParam int id) {

		Property property = service.getPropertyDetailsById(id);
		model.put("property", property);
		if (property.getType().equalsIgnoreCase("rent")) {

			List<Property> rented = service.getRentProperties();
			model.put("props", rented);

		} else {
			List<Property> sale = service.getSaleProperties();
			model.put("props", sale);

		}

		return "details";

	}

	@GetMapping("/add-to-wishlist")
	public String addToWishList(@RequestParam int id, ModelMap model) throws Exception {

		wish.addToWishList(id, (long) model.get("id"));

		List<Property> props = new ArrayList<Property>();
		List<Property> properties = wish.getAllWishListItems((long) model.get("id"));

		model.put("props", properties);

		return "redirect:/logged-home";
	}

	@GetMapping("/wishlist")
	public String wishList(ModelMap model) throws Exception {

		List<Property> properties = wish.getAllWishListItems((long) model.get("id"));

		model.put("props", properties);

		if (properties.isEmpty()) {
			return "emptylist";
		}

		return "wishlist";
	}

	@GetMapping("/delete-from-wishlist")
	public String deleteFromWishList(@RequestParam int id, ModelMap model) throws Exception {

		wish.removeWishProperty(id, (long) model.get("id"));
		List<Property> properties = wish.getAllWishListItems((long) model.get("id"));

		if (properties.isEmpty()) {
			return "emptylist";
		}

		return "redirect:/wishlist";
	}

	@RequestMapping(value = "/show-add-property", method = RequestMethod.GET)
	public String viewPropertyAdd(ModelMap model) throws NoUserFoundException {
		Property propertyForm = new Property();
		model.addAttribute("propertyForm", propertyForm);
		Users user = userService.getUserById((long) model.get("id"));
		String status = user.getStatus();
		if (status.equalsIgnoreCase("resident")) {
			return "addproperty";
		} else {

			return "non-resident-bill";
		}

	}

	@PostMapping("/add-property")
	public String addProperty(@ModelAttribute("propertyForm") Property property, BindingResult bindingResult) {

		service.addProperty(property);

		return "add-property-status";
	}

	@GetMapping("/register")
	public String showRegistrationForm(Model model) {

		model.addAttribute("signUpForm", new Users());

		return "signupform";
	}

	@PostMapping("/process-register")
	public String processRegister(@ModelAttribute("signUpForm") Users user, BindingResult bindingResult,ModelMap model)  throws UserAlreadyExistsException, NoUserFoundException, SQLIntegrityConstraintViolationException{

		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
        
		try
		{
	
			userService.addUser(user);
		}
		catch(SQLIntegrityConstraintViolationException e)
		{
			throw new UserAlreadyExistsException("Email Already in Use");
			
		}
		
			return "redirect:/login";
		
		
       
      
	}

	@GetMapping("/view-edit/{id}")
	public String viewEditForm(@PathVariable(name = "id") long id, ModelMap model) throws NoUserFoundException {
		Users user = userService.getUserById((long) model.get("id"));
		model.put("users", user);
		model.put("editForm", new Users());

		return "edit-profile";
	}

	@PostMapping("/edit-profile")
	public String editProfile(@ModelAttribute("editForm") Users user, BindingResult bindingResult, ModelMap model) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);

		userService.updateProfile(user, (Long) model.get("id"));

		return "redirect:/profile";
	}

	@GetMapping("/view-bill/{id}")
	public String viewBillForm(@PathVariable(name = "id") long id, ModelMap model) throws NoUserFoundException {

		int count = 0;
		List<Bill> bills = billService.getAllBills();

		Users users = userService.getUserById((long) model.get("id"));
		if (users.getStatus() == null) {
			return "non-resident-bill";
		}

		Bill bill = billService.getBillById((long) model.get("id"));

		model.put("bill", bill);

		model.put("billForm", new Bill());

		Users user = userService.getUserById((long) model.get("id"));

		String status = user.getStatus();

		if (status.equalsIgnoreCase("resident")) {

			if (bill.isElecStat() == true && bill.isMainStat() == true && bill.isWatStat() == true) 
			{

				if (bill.getElecBill() == 0 && bill.getMainBill() == 0 && bill.getWatBill() == 0) {
					model.put("newUser", "yes");
					return "bill";
				}
				else
				{
				return "paid";
				}
			}
			else 
			{
				if(bill.getElecBill() == 0 && bill.getMainBill() == 0 && bill.getWatBill() == 0)
				{
				model.put("newUser", "yes");
				return "bill";
				}
				else
				{
					return "bill";
				}
			}
		}
		else
		{

		return "non-resident-bill";
		}

	}

	@PostMapping("/payBills")
	public String payBill(@ModelAttribute("billForm") Bill bill, BindingResult bindingResult, ModelMap model) {

		billService.updateBillUser(bill, (long) model.get("id"));

		return "add-property-status";
	}

	@GetMapping("/admin")
	public String showUser(ModelMap model) throws NoUserFoundException {
		Users user = userService.getUserById((long) model.get("id"));
		long ids = user.getId();

		if (ids == 1) {
			List<Users> users = userService.getAllUser();
			List<Bill> bill = billService.getAllBills();
			model.put("props", users);
			model.put("billdue", bill);
			return "adminlist";

		} else
			return "onlyadmin";

	}

	@GetMapping("/editbilldue/{id}")
	public String editBill(@PathVariable(name = "id") long id, ModelMap model) {
		Bill bill = billService.getBillById(id);

		model.put("bill", bill);

		model.put("billeditForm", new Bill());

		return "editbill";
	}

	@PostMapping("/updateDue/{id}")
	public String updateDue(@ModelAttribute("billeditForm") @PathVariable(name = "id") long id, Bill bill,
			BindingResult bindingResult, ModelMap model) {

		billService.updateBillUserAdmin(bill, id);

		return "add-property-status";
	}

	@GetMapping("/complainn")
	public String complainTab(ModelMap model) {

		Complain complainForm = new Complain();
		model.addAttribute("complainForm", complainForm);
		return "complain";
	}

	@PostMapping("/add-complain")
	public String addComplainn(@ModelAttribute("complainForm") Complain com, BindingResult bindingResult) {

		comService.addComplain(com);

		return "add-property-status";
	}

	@GetMapping("/updateComplain")
	public String complain(ModelMap model) throws NoUserFoundException {
		Users user = userService.getUserById((long) model.get("id"));
		long ids = user.getId();

		if (ids == 1) {
			List<Complain> com = comService.getAllComplain();

			model.put("comUpdate", com);

			return "admincomplain";
		} else
			return "onlyadmin";

	}

	@GetMapping("/resolved/{id}")
	public String resolveComplain(@PathVariable(name = "id") int id, Complain com, BindingResult bindingResult,
			ModelMap model) {

		comService.resolveCom(com, id);
		return "add-property-status";
	}

	@GetMapping("/low")
	public String filterLow(ModelMap model) {
		List<Property> prop = service.low();
		model.put("low", prop);
		return "landinglow";

	}

	@GetMapping("/high")
	public String filterHigh(ModelMap model) {
		List<Property> prop = service.high();
		model.put("high", prop);
		return "landinghigh";

	}

	@GetMapping("/random")
	public String ran() {
		return "random";

	}

}
