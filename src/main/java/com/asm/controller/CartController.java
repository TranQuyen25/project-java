package com.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

	@GetMapping("/cart")
	public String Cart() {
		return "cart";
	}
	
	@RequestMapping("/cart/add/{id}")
	public String addProduct(Model model, @PathVariable("id") Integer id) {
		
		return "redirect:/home";
	}
}
