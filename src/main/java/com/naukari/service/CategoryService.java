package com.naukari.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.naukari.model.Category;

@Component
public interface CategoryService {
	
	Category addCategory(Category cat);
	
	List<Category> getAllCategories();
	
	Category getCategory(long id);
	
	Category updateCategory(Category cat,Long catid);
	
	void deleteCategory(Long catid);
}
