package com.Price.quotation.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.Price.quotation.Model.Admin;
import com.Price.quotation.Service.AdminService;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminDao;

	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminsignin(@ModelAttribute("admin") Admin adminSignIn) {
		return "adminLogIn";
	}
	
	@RequestMapping(value = "/adminSuccessLogin", method = RequestMethod.GET)
	public String adminfoulattempt(@ModelAttribute("admin") Admin adminSignIn) {
		return "adminLogIn";
	}
	@RequestMapping(value = "/adminSuccessLogin", method = RequestMethod.POST)
	public String userView(@ModelAttribute("admin") Admin adminSignin, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "adminLogIn";
		}
		List<Admin> list = adminDao.read();
		for (Admin register : list) {
			if (register.getUserId().equals(adminSignin.getUserId())
					&& register.getPassword().equals(adminSignin.getPassword())) {
				model.put("userId", adminSignin.getUserId());
				return "adminSuccessLogin";
			}
		}
		model.put("error", "Wrong Credentials");
		return "adminLogIn";
	}

	
	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public String adminLogout(@ModelAttribute("admin") Admin adminSignIn) {
		return "adminLogIn";
	}
	@RequestMapping(value = "/logOut", method = RequestMethod.POST)
	public String adminpLogout(@ModelAttribute("admin") Admin adminSignIn) {
		return "adminLogIn";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(@ModelAttribute("admin") Admin adminSignIn) {
		return "index";
	}
	@RequestMapping(value = "/vendorList", method = RequestMethod.GET)
	public String viewVendor(@ModelAttribute("admin") Admin adminSignIn) {
		return "vendorList";
	}

	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(@ModelAttribute("admin") Admin adminSignIn) {
		return "contactUs";
	}        
}
