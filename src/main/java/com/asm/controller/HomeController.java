package com.asm.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.DAO.CategoryDAO;
import com.asm.DAO.ProductDAO;
import com.asm.entity.Category;
import com.asm.entity.Product;
import com.asm.service.SessionService;

@Controller
public class HomeController {

	@Autowired
	CategoryDAO categoryDao;
	@Autowired
	ProductDAO productDao;
	@Autowired
	SessionService session;
	
	@RequestMapping("/home")
	public String home(Model model, @RequestParam("p") Optional<Integer> p) {
		Category category = new Category();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		Page<Product> page = productDao.findAll(pageable);
		model.addAttribute("page", page);
		System.out.println("home");
//		Product product = new Product();
//		model.addAttribute("product", product);
//		List<Product> products = productDao.findAll();
//		model.addAttribute("products", products);
		
	
		return "index";
	}

	@RequestMapping("/home/{id}")
	public String idCategory(Model model, @PathVariable("id")String idC, @RequestParam("p") Optional<Integer> p) {

		Category category = new Category();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		Page<Product> page = productDao.findById(idC, pageable);
		model.addAttribute("page", page);
		System.out.println("id" + idC);
		
		return "index";
	}
	
	@RequestMapping("/home/search")
	public String index(Model model, @RequestParam("keywords")Optional<String> kw, @RequestParam("p")Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDao.findByKeywords("%" + kwords +"%", pageable);
		model.addAttribute("page", page);
		return "index";
	}
	
//	@RequestMapping("/home/sort")
//	public String sortPriceD(Model model, @RequestParam("field") Optional<String> field, @RequestParam("p") Optional<Integer> p) {
//		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
//		model.addAttribute("field", field.orElse("price"));
//		Pageable pageable = PageRequest.of(p.orElse(0), 12);
////		List<Product> page = productDao.findAll(sort);
//		Page<Product> page = productDao.findByPrice(field, pageable);
//		model.addAttribute("page", page);
//		
//		
//		return "index";
//	}
//	
//	@RequestMapping("/product/sort")
//	public String sort3(Model model, @RequestParam("field") Optional<String> field) {
//		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
//		model.addAttribute("field", field.orElse("price").toUpperCase());
//		List<Product> items = dao.findAll(sort);
//		model.addAttribute("items", items);
//		return "product/sort";
//	}
	
}
