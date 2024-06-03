package com.naukari.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.naukari.model.User;

@Component
public interface UserService {
	
	User createUserProfile(User aJobs);
	
	User jobApplyByUser(User aJobs,Long jobid);
	
	User updateAppliedJobs(Long  jobid,Long appliedid);
	
	List<User> getAllAppliedJobs(Long jobid);
	
	void deleteAppliedJob(Long id);
	
	User updateUserDetails(User aJobs,Long id);
	
	User getprofile(String email);
	
	User checkUser(User a);
	
	int countEmp(long jobid);

	
}
