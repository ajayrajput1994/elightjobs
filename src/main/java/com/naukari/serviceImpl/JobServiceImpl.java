package com.naukari.serviceImpl;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.naukari.Repository.JobRepository;
import com.naukari.model.Jobs;
import com.naukari.service.JobService;

@Service
@Transactional
public class JobServiceImpl implements JobService{
	@Autowired
	private JobRepository jobRepo;
	@Override
	public Jobs createJob(Jobs jobs) {
		Jobs resultJobs= this.jobRepo.save(jobs);
		return resultJobs;
	}

	@Override
	public List<Jobs> allJobs() {
		List<Jobs> jobs=(List<Jobs>)jobRepo.findAll();
		return jobs;
	}

	@Override
	public Jobs getJob(Long id) {
		 Jobs job=this.jobRepo.findById(id).orElse(null);
		///Jobs jobs2=	this.jobRepo.getById(id);
		return job;
	}

	@Override
	public void deleteJob(long id) {
		this.jobRepo.deleteById(id);
	}

	@Override
	public List<Jobs> getJobByRole(String role) {
		
		List<Jobs> jobs=this.jobRepo.getJobByName(role).stream().filter(e->e!=null).collect(Collectors.toList());
		return jobs;
		
	}
	

	@Override
	public List<Jobs> getJobByCategory(String cat) {
		List<Jobs> jobs=this.jobRepo.getJobsByCategory(cat).stream().filter(e->e!=null).collect(Collectors.toList());
		return jobs;
	}


	@Override
	public Jobs updateJobs(Jobs jobs, Long id) {
		Optional<Jobs> job=this.jobRepo.findById(id);
		Jobs jobs2=job.get();
		try {
			jobs2.setRole(jobs.getRole());jobs2.setSalary(jobs.getSalary());jobs2.setSkills(jobs.getSkills());jobs2.setVacancy(jobs.getVacancy());
			jobs2.setEducation(jobs.getEducation());jobs2.setEmployment(jobs.getEmployment());jobs2.setShift(jobs.getShift());jobs2.setResponsiblities(jobs.getResponsiblities());
			jobs2.setQualification(jobs.getQualification());jobs2.setCompanydetail(jobs.getCompanydetail());jobs2.setLocation(jobs.getLocation());jobs2.setCreate_at(jobs.getCreate_at());
			jobs2.setExperience_year(jobs.getExperience_year());jobs2.setCompanyname(jobs.getCompanyname());
			this.jobRepo.save(jobs2);
			return jobs2;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public List<Jobs> getAppliedJobsByEmpid(Long empid) {
		List<Jobs> list=this.jobRepo.getJobsByEmpid(empid);
		if (list.isEmpty()){
			return null;
		}
		return list;
	}

	@Override
	public Page<Jobs> getAllJobsByPage(Pageable pageable) {
		Page<Jobs> jobsPage=jobRepo.findAll(pageable);
		return jobsPage;
	}


	

}
