package com.naukari.serviceImpl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naukari.Repository.CategoryRepository;
import com.naukari.helper.CustomHelper;
import com.naukari.model.Category;
import com.naukari.service.CategoryService;
@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	public CustomHelper customHelper;

	@Override
	public Category addCategory(Category cat) {
		Category category=new Category();
		cat.setName(customHelper.getLowerCase(cat.getName()));
		List<String> name=this.categoryRepository.findCategoryByName(cat.getName());
		if (name.isEmpty()) {
			cat=this.categoryRepository.save(category.newCategory(cat));
			return category;
		}
		return cat=this.categoryRepository.findCatByName(cat.getName());
		
	}
	
	@Override
	public List<Category> getAllCategories() {
		List<Category> list=this.categoryRepository.findAll();
		return list;
	}

	@Override
	public Category updateCategory(Category cat,Long catid) {
		Category c=this.categoryRepository.findById(catid).orElse(null);
		if (c!=null) {
			c.setName(cat.getName());c.setCreate_at(cat.getCreate_at());c.setIcon(cat.getIcon());
			c=this.categoryRepository.save(c);
		}
		return c;
	}

	@Override
	public void deleteCategory(Long catid) {
		Optional<Category> oc=this.categoryRepository.findById(catid);
		if (oc.isPresent()==true) {
			this.categoryRepository.deleteById(catid);
		}
	}

	@Override
	public Category getCategory(long id) {
		return this.categoryRepository.getById(id);
	}


}
