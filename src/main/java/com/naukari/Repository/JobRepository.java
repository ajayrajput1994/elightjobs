package com.naukari.Repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.naukari.model.Jobs;

@Repository
public interface JobRepository extends JpaRepository<Jobs, Long>{
	@Query(value="select * from jobs  where role LIKE %?1%",nativeQuery=true)
	public List<Jobs> getJobByName(@Param("name") String name);
	
	@Query("SELECT a FROM Jobs a JOIN a.user b WHERE b.id=:empid")
	public List<Jobs> getJobsByEmpid(@Param("empid") Long empid);
	
	@Query("SELECT a FROM Jobs a JOIN Category c ON a.categories=c.name WHERE a.categories=:name")
	public List<Jobs> getJobsByCategory(@Param("name") String name);
	
	
	public Page<Jobs> findAll(Pageable pageable);
}
