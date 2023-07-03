package com.asm.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.DAO.AccountDAO;
import com.asm.entity.Account;
import com.asm.service.CookieService;
import com.asm.service.ParamService;
import com.asm.service.SessionService;

@Controller
public class LoginController {

	@Autowired
	CookieService cookie;
	@Autowired
	SessionService session;
	@Autowired
	ParamService param;
	@Autowired
	AccountDAO accountDao;

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/account/login")
	public String login2(Model model, @RequestParam("username")String username, @RequestParam("password")String password) {

//		if (!result.hasErrors()) {
			Account acc = null;
			try {
				acc = accountDao.findById(username).get();
				if (acc.getPassword().equals(password)) {
					session.set("user", acc);
					String uri = session.get("security-uri");
					if (uri!=null) {
						if (!uri.equals("") && uri.contains("/admin/**")) {
							return "redirect:/admin";
						}
						else {
							return "redirect:/home";
						}
					} 
					else {
						return "redirect:/home";
					}
				}
				else {
					model.addAttribute("message", "Invalid password");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("message", "Invalid username");
			}
		
		return "login";

	}

	@RequestMapping("/logout")
	public String logout() {
		session.remove("user");
		return "login";
	}
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
}
