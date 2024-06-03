package com.naukari.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.naukari.model.Category;
@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {
	@Query("SELECT DISTINCT c.name FROM Category c WHERE c.name=:name")
	public List<String> findCategoryByName(@Param("name") String name);
	
	@Query("SELECT c FROM Category c WHERE c.name=:name")
	public Category findCatByName(@Param("name") String name);
}
