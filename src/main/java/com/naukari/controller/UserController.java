package com.naukari.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naukari.helper.FileUploadHelper;
import com.naukari.helper.SidebarActive;
import com.naukari.helper.ToastMessage;
import com.naukari.model.Category;
import com.naukari.model.Jobs;
import com.naukari.model.User;
import com.naukari.service.CategoryService;
import com.naukari.service.JobService;
import com.naukari.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private JobService jobService;
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	public  FileUploadHelper fileUploadHelper;
	@ModelAttribute
	public void commondata(Model m,Principal principal) {
		String username=principal.getName();
		User aJobs=this.userService.getprofile(username);
		m.addAttribute("ajobs",aJobs);
		List<Jobs> jobs=this.jobService.allJobs();
		if (jobs!=null && !jobs.isEmpty()) {
			m.addAttribute("jobs",jobs);	
		}else {
			m.addAttribute("jobs",null);
		}
		List<Category> categories=this.categoryService.getAllCategories();
		if (categories!=null) {
			m.addAttribute("cats",categories);
		}else {
			m.addAttribute("title","not found category!");
			m.addAttribute("cats",null);
		}
	}

	/* new user applied jon */
	@GetMapping("/dashboard")
	public String userDashboard(Model m,HttpSession session,Principal principal) {
		String username=principal.getName();
		System.out.println("username"+username);
		/*
		 * Long id=(Long)session.getAttribute("ajobid");
		 * System.out.println("user id"+id);
		 */
		
		User aJobs=this.userService.getprofile(username);
		session.setAttribute("online", aJobs.getRole());
		/* m.addAttribute("ajobs",aJobs); */
		
		return "normal/user_dashboard";
	}
	
	/* new user applied jon */
	@GetMapping("/my-account/profile")
	public String userProfile(Model m,HttpSession session,Principal principal) {
		/*
		 * String username=principal.getName(); AppliedJobs
		 * aJobs=this.userService.getprofile(username); m.addAttribute("ajobs",aJobs);
		 */
		return "normal/user-profile";
	}
	
	@GetMapping("/my-account/settings")
	public String userProfileSetting(Model m,HttpSession session,Principal principal) {
		/*
		 * String username=principal.getName(); AppliedJobs
		 * aJobs=this.userService.getprofile(username); m.addAttribute("ajobs",aJobs);
		 */
		m.addAttribute("user",new User());
		return "normal/user-account";
	}
	
	/* user update your account by id */
	@PostMapping("/my-account/profile/update")
	public String updateUserProfile(@ModelAttribute("user") User u,Principal principal, Model m) {
		String username=principal.getName();
		  User user=this.userService.getprofile(username);
		User users = this.userService.updateUserDetails(u, user.getId());
		if (users != null) {
			m.addAttribute("title", "profile update succsssfuly!");
		} else {
			m.addAttribute("title", "something went wrong!");
		}
		return "redirect:/user/my-account/settings";
	}
	
	@GetMapping("/jobs")
	public String getNewJobs(Model m,HttpSession session,Principal principal) {
		/*
		 * String username=principal.getName(); AppliedJobs
		 * aJobs=this.userService.getprofile(username); m.addAttribute("ajobs",aJobs);
		 */
		return "normal/new_jobs";
	}
	
	/*existing user apply a job */
	@GetMapping("/update/{jobid}/appliedjob/{applyid}")
	public String updateAppliedJob(@PathVariable("jobid") Long jobid,@PathVariable("applyid") Long applyid,HttpSession session,Model m) {
		try {
			
			if (jobid!=0 && applyid!=0) {
				User aJobs=	this.userService.updateAppliedJobs(jobid, applyid);
				session.setAttribute("msg", new ToastMessage("Applied Jobs  successfuly !", "Success", "bg-success",true));
				
			}
			
		} catch (Exception e) {
			session.setAttribute("msg", new ToastMessage("something went wrong! "+e.getMessage(), "Failed", "bg-danger",true));
		}
		
		return "redirect:/user/dashboard";
		
	}
	
	/* employee can see all applied jobs by emp id */
	@GetMapping("/applied-jobs")
	public String getAppliedJobsByid(Principal principal, Model m) {
		m.addAttribute("sidebar",new SidebarActive("show", "active"));
		  String username=principal.getName(); User
		  aJobs=this.userService.getprofile(username); m.addAttribute("ajobs",aJobs);
		 
		try {
			if (aJobs != null) {
				List<Jobs> job = this.jobService.getAppliedJobsByEmpid(aJobs.getId());
				if (job != null && job.size() != 0) {
					m.addAttribute("appliedjobs", job);
				} else {
					m.addAttribute("appliedjobs", null);
				}

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return "normal/applied_jobs";
	}
	
	/* show job details by id */
	@GetMapping("/job-detail/{id}/{role}")
	public String getJobByid(@PathVariable("id") Long id, Model m) {
		
		Jobs jobdetail = this.jobService.getJob(id); /* System.out.println(jobs); */
		if (jobdetail != null) {
			m.addAttribute("jobdetail", jobdetail);
		} else {
			m.addAttribute("jobdetail", jobdetail);
		}

		return "normal/job_details";
	}
}
