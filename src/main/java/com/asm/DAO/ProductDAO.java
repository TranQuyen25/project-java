package com.asm.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

//import com.j5.entity.Report;
import com.asm.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer>{

//	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
//	List<Product> findByPrice(double minPrice, double maxPrice);
//	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);

	@Query("SELECT p FROM Product p WHERE p.category.id LIKE?1")
	Page<Product> findById(String id, Pageable pageable);
//	
//	@Query("SELECT p FROM Product p WHERE p ORDER BY p.price DESC")
//	Page<Product> findByPrice(Double price, Pageable pageable);
//	
//Page<Product> findAllByNameLike(String keywords, Pageable pageable);
/*
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();
	*/
}
