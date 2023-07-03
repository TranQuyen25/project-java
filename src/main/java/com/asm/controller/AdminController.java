package com.asm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.DAO.AccountDAO;
import com.asm.DAO.CategoryDAO;
import com.asm.DAO.OrderDAO;
import com.asm.DAO.OrderDetailDAO;
import com.asm.DAO.ProductDAO;
import com.asm.entity.Account;
import com.asm.entity.Category;
import com.asm.entity.Order;
import com.asm.entity.OrderDetail;
import com.asm.entity.Product;

@Controller
public class AdminController {

	@Autowired
	CategoryDAO categoryDao;
	@Autowired
	ProductDAO productDao;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	OrderDetailDAO orderDetailDao;
	
	@RequestMapping({"/admin/accounts", "/admin"})
	public String account(Model model) {
		
		Category category = new Category();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		
		Product product = new Product();
		model.addAttribute("product", product);
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
		
		Account account = new Account();
		model.addAttribute("account", account);
		List<Account> accounts = accountDao.findAll();
		model.addAttribute("accounts", accounts);
		
		Order order = new Order();
		model.addAttribute("order", order);
		List<Order> orders = orderDao.findAll();
		model.addAttribute("orders", orders);
		
		OrderDetail orderDetail = new OrderDetail();
		model.addAttribute("orderDetail", orderDetail);
		List<OrderDetail> orderDetails = orderDetailDao.findAll();
		model.addAttribute("orderDetails", orderDetails);
		
		return "admin/account";
	}
	
	@RequestMapping("/admin/categories")
	public String category(Model model) {
		
		Category category = new Category();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		
		return "admin/category";
	}
	
	@RequestMapping("/admin/products")
	public String product(Model model) {
		
	
		Product product = new Product();
		model.addAttribute("product", product);
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
	
		return "admin/product";
	}
	
	@RequestMapping("/admin/orders")
	public String order(Model model) {
	
		Order order = new Order();
		model.addAttribute("order", order);
		List<Order> orders = orderDao.findAll();
		model.addAttribute("orders", orders);
		
		OrderDetail orderDetail = new OrderDetail();
		model.addAttribute("orderDetail", orderDetail);
		List<OrderDetail> orderDetails = orderDetailDao.findAll();
		model.addAttribute("orderDetails", orderDetails);
		
		return "admin/order";
	}
	
	
	@RequestMapping("/admin/account/edit/{username}")
	public String editAccount(Model model, @PathVariable("username") String username) {
		Account account = accountDao.findById(username).get();
		model.addAttribute("account", account);
		List<Account> accounts = accountDao.findAll();
		model.addAttribute("accounts", accounts);
		
		return "admin/account";
	}
	
	@RequestMapping("/admin/account/create")
	public String createAccount(Account account, Model model) {
		try {
			accountDao.save(account);
			model.addAttribute("message_success", "Create account successful!");
			List<Account> accounts = accountDao.findAll();
			model.addAttribute("accounts", accounts);
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Create account failer!");
		}
		
		return "admin/account";
	}
	
	@RequestMapping("/admin/account/update")
	public String updateAccount(Account account, Model model) {
		try {
			accountDao.save(account);
			model.addAttribute("message_success", "Update account successful!");
			List<Account> accounts = accountDao.findAll();
			model.addAttribute("accounts", accounts);
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Update account failer!");
		}

		return "admin/account";
	}
	
	@RequestMapping("admin/account/delete/{username}")
	public String deleteAccount(@PathVariable("username") String username, Model model) {
//		try {
//			accountDao.deleteById(username);
//			model.addAttribute("message_success", "Update account successful!");
//			List<Account> accounts = accountDao.findAll();
//			model.addAttribute("accounts", accounts);
//		} catch (Exception e) {
//			// TODO: handle exception
//			model.addAttribute("message", "Update account failer!");
//		}
//
//		return "admin";
//		
		accountDao.deleteById(username);
		return "redirect:/admin/accounts";
	}
	
	@RequestMapping("/admin/account/new")
	public String newAccount() {
		return "redirect:/admin/accounts";
	}
	
	@RequestMapping("/admin/category/create")
	public String createCategory(Category category, Model model) {
		try {
			categoryDao.save(category);
			model.addAttribute("message_success", "Create category successful!");
			List<Category> categories = categoryDao.findAll();
			model.addAttribute("categories", categories);
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Create category failer!");
		}
		
		return "admin/category";
	}
	
	@RequestMapping("/admin/category/update")
	public String updateCategory(Category category, Model model) {
		try {
			categoryDao.save(category);
			model.addAttribute("message_success", "Update category successful!");
			List<Category> categories = categoryDao.findAll();
			model.addAttribute("categories", categories);
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Update category failer!");
		}

		return "admin/category";
	}
	
	@RequestMapping("admin/category/delete/{id}")
	public String deleteCategory(@PathVariable("id") String id, Model model) {
		categoryDao.deleteById(id);
		return "redirect:/admin/categories";
	}
	
	@RequestMapping("/admin/category/edit/{id}")
	public String editCategory(Model model, @PathVariable("id") String id) {
		Category category = categoryDao.findById(id).get();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		
		return "admin/category";
	}
	
	@RequestMapping("/admin/category/new")
	public String newCategory() {
		return "redirect:/admin/categories";
	}
	

	@ModelAttribute("positions")
	public Map<String, String> getPositions(){
		Map<String, String> map = new HashMap<>();
		map.put("CEO","Chief Executive Officer");
		map.put("DIR","Director");
		map.put("MAN","Manager");
		map.put("EMP","Employee");
		return map;
	}
	
	@RequestMapping("/support")
	public String support() {
		return "support";
	}
}
