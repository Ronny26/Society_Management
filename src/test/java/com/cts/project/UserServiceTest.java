package com.cts.project;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;

import java.util.List;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;

import com.cts.project.exception.NoUserFoundException;
import com.cts.project.model.Bill;
import com.cts.project.model.Property;
import com.cts.project.model.Users;
import com.cts.project.service.BillService;
import com.cts.project.service.PropertyService;
import com.cts.project.service.UserService;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest
public class UserServiceTest {

	private Users user;

	@Autowired
	public UserService userService;

	@Autowired
	public BillService billService;

	@Autowired
	public PropertyService propertyService;

	@Autowired
	JdbcTemplate template;

	/*
	 * @BeforeEach public void setUp() throws Exception { user = new Users();
	 * Mockito.when(template.update(Mockito.anyString(), Mockito.anyString(),
	 * Mockito.anyString(), Mockito.anyString(), Mockito.anyString(),
	 * Mockito.anyString())).thenReturn(1); }
	 * 
	 * @Test public void addUserTest() { user.setEmail("hi2@gmaill.com");
	 * user.setFirstName("ronny"); user.setLastName("srivastava");
	 * user.setPassword("1234"); userService.addUser(user); String sql =
	 * "insert into users(first_name,last_name,email,password,status) values (?,?,?,?,?)"
	 * ; Mockito.verify(template, Mockito.atLeastOnce()).update(sql,
	 * user.getFirstName(), user.getLastName(), user.getEmail(), user.getPassword(),
	 * "nonresident");
	 * 
	 * }
	 */
	@Before
	public void init() {
		userService = new UserService();
	}

	@Test
	public void getAllUsersTest() throws NoUserFoundException {
		userService.setTemplate(template);
		List<Users> list = userService.getAllUser();
		assertFalse(list.isEmpty());
	}

	@Test
	public void getAllBillsTest() throws NoUserFoundException {
		billService.setTemplate(template);
		List<Bill> list = billService.getAllBills();
		assertEquals(12, list.size());
	}

	@Test
	public void getAllPropertiesTest() throws NoUserFoundException {
		propertyService.setTemplate(template);
		List<Property> list = propertyService.getAllProperties();
		assertEquals(13, list.size());
	}

	@Test
	public void getUserByIdTest() throws NoUserFoundException {
		userService.setTemplate(template);
		assertFalse(userService.getUserById(1) == null);
	}

	@Test
	public void getUserByEmailTest() throws NoUserFoundException {
		userService.setTemplate(template);
		assertFalse(userService.getUserByEmail("priyanshushrivastava786@gmail.com") == null);
	}

	@Test
	public void getBillByIdTest() throws NoUserFoundException {
		billService.setTemplate(template);
		assertFalse(billService.getBillById(12) == null);
	}

	@Test
	public void getPropertyDetailsByIdTest() throws NoUserFoundException {
		propertyService.setTemplate(template);
		assertFalse(propertyService.getPropertyDetailsById(12) == null);
	}

}
