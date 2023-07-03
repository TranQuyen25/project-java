package com.lab7.utils;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.asm.DAO.ProductDAO;
import com.asm.entity.Product;

@Component
public class DB implements CommandLineRunner {

	private final ProductDAO dao;
	
	@Autowired
	public DB(ProductDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void run(String... args) {
		Map<Integer, Product> items = new HashMap<>();
		dao.findAll().forEach(item -> items.put(item.getId(), item));
	}
}
