package com.naukari.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.naukari.model.Jobs;
@Component
public interface JobService {

	Jobs createJob(Jobs jobs);
	
	List<Jobs> allJobs();
	
	Page<Jobs> getAllJobsByPage(Pageable pageable);
	
	Jobs getJob(Long id);
	
	List<Jobs> getAppliedJobsByEmpid(Long empid);
	
	List<Jobs> getJobByRole(String role);
	
	List<Jobs> getJobByCategory(String cat);
	
	void deleteJob(long id);
	
	Jobs updateJobs(Jobs jobs,Long id);
}
