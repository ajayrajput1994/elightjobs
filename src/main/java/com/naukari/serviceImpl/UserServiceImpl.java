package com.naukari.serviceImpl;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naukari.Repository.JobRepository;
import com.naukari.Repository.UserRepository;
import com.naukari.helper.CustomHelper;
import com.naukari.model.Jobs;
import com.naukari.model.User;
import com.naukari.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	private static final Logger LOGGER=LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private JobRepository jobRepository;
	@Autowired
	public CustomHelper helper;
	/* new user create your accouont*/
	@Override
	public User createUserProfile(User aJobs) {
		List<User> email	=this.userRepo.findByEmail(aJobs.getEmail());
		User ap= new User();
		if (email.isEmpty()) {
			aJobs=this.userRepo.save(ap.applingJobs(aJobs));
		}else {
			for(User a:email) {
				aJobs=a;
			}
		}
		
		return aJobs;
	}
	
	/* new user apply to new job*/
	@Override
	public User jobApplyByUser(User aJobs,Long jobid) {
		
		User apply=new User();
		List<User> list=this.userRepo.findByEmail(aJobs.getEmail());
			if (list.isEmpty()) {
				aJobs=this.userRepo.save(apply.applingJobs(aJobs));
				aJobs=updateAppliedJobs(jobid, apply.getId());
			}else {
				aJobs=updateAppliedJobs(jobid, list.get(0).getId());
			}
		return aJobs;
	}
	
	/* existing user apply to new job*/
	@Override
	public User updateAppliedJobs(Long jobid,Long applyid) {
		Set<Jobs> jobslist=null;
		Jobs job= this.jobRepository.findById(jobid).get();
		User aJobs=this.userRepo.findById(applyid).get();
		jobslist=aJobs.getJobs();
		jobslist.add(job);
		aJobs.setJobs(jobslist);
		return this.userRepo.save(aJobs);
		
	}
	/*   get all applied jobs by job id  */
	@Override
	public List<User> getAllAppliedJobs(Long jobid) {
		List<User> applied=this.userRepo.findUserByJobid(jobid);
		return applied;
	}
	/*  user delete applied jobs  */
	@Override
	public void deleteAppliedJob(Long id) {
		Optional<User> optional=this.userRepo.findById(id);
		User ajJobs=optional.get();
		ajJobs.setJobs(null);
		this.userRepo.delete(ajJobs);
	}
	/*  user update applied jobs  */
	@Override
	public User updateUserDetails(User ap,Long applyid) {
		User apply=this.userRepo.getById(applyid);
		try {
			apply.setName(ap.getName());apply.setEmail(ap.getEmail());
			/*
			 * apply.setPortfolio_url(ap.getPortfolio_url());
			 * apply.setFile(ap.getFile());apply.setDescriptoin(ap.getDescriptoin());
			 */apply.setApplyDate(ap.getApplyDate());
			return  this.userRepo.save(apply);
			
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public User getprofile(String email) {
		
		return this.userRepo.getUserByUsername(email);
	}

	@Override
	public User checkUser(User a) {
		User list=this.userRepo.getByEmail(a.getEmail());
		if (a.getPassword().equals(list.getPassword())) {
			LOGGER.info("found data by email {}",list);
			return list;
		}
 		return null;
	}

	/*count employee who's applied one job*/
	@Override
	public int countEmp(long jobid) {
		return userRepo.countEmpByJobid(jobid);
	}


}
