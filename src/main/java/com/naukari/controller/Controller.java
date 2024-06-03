package com.naukari.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naukari.config.MySecurityConfig;
import com.naukari.helper.FileUploadHelper;
import com.naukari.helper.Title;
import com.naukari.helper.ToastMessage;
import com.naukari.model.Category;
import com.naukari.model.Jobs;
import com.naukari.model.User;
import com.naukari.service.CategoryService;
import com.naukari.service.JobService;
import com.naukari.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {

	private static Logger logger = LoggerFactory.getLogger(Controller.class);
	@Autowired
	public MySecurityConfig pasEncoder;
	@Autowired
	private JobService jobService;
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	public FileUploadHelper fileUploadHelper;

	@ModelAttribute
	public void commondata(Model m) {
		m.addAttribute("title", new Title("Category simple way to Search your jobs !", "Category", "/categories"));
		List<Jobs> jobs = this.jobService.allJobs();
		if (jobs != null && !jobs.isEmpty()) {
			List<Jobs> fulltime = jobs.stream().filter(job -> job.getEmployment().contains("full time"))
					.collect(Collectors.toList());
			List<Jobs> parttime = jobs.stream().filter(job -> job.getEmployment().contains("part time"))
					.collect(Collectors.toList());
			// m.addAttribute("jobs",jobs);
			m.addAttribute("fulltime", fulltime);
			m.addAttribute("parttime", parttime);
		} else {
			m.addAttribute("jobs", null);
		}
		List<Category> categories = this.categoryService.getAllCategories();
		if (categories != null) {
			m.addAttribute("cats", categories);
		} else {
			m.addAttribute("title", "not found category!");
			m.addAttribute("cats", null);
		}
	}

	/* this is home page and show all jobs */
	@GetMapping({ "", "/" })
	public String home(Model m) {
		m.addAttribute("title", new Title("Category simple way to Search your jobs !", "Category", "/categories"));
		m.addAttribute("msg", new ToastMessage("All categories listed", "Success", "bg-primary", false));
		m.addAttribute("demo", "");
		List<Jobs> jobs = this.jobService.allJobs();
		m.addAttribute("jobs", jobs);
		return "index";
	}

	@GetMapping("/all-jobs")
	public String alljobs(Model m) {
		List<Jobs> jobs = this.jobService.allJobs();
		if (jobs != null && !jobs.isEmpty()) {
			m.addAttribute("jobs", jobs);
		} else {
			m.addAttribute("jobs", null);
		}
		return "job-list";
	}

	/* add new job by company */
	@GetMapping("/add-job")
	public String addJob(Model m) {
		for (int i = 1; i <= 2; i++) {
			Jobs jobs = new Jobs();
			jobs.setRole("Head Teacher".toLowerCase());
			jobs.setSalary("42342");
			jobs.setCompanydetail("som market sector 44, nearby main road,noida (31232)");
			jobs.setEducation("greadution mendatory");
			jobs.setEmployment("full time, part time,");
			jobs.setLocation("noida");
			jobs.setQualification("Dolor justo tempor duo ipsum accusam");
			jobs.setResponsiblities("Magna et elitr diam sed lorem.");
			jobs.setVacancy(12 * i);
			jobs.setCategories("teaching & education");
			this.jobService.createJob(jobs);
		}
		m.addAttribute("title", "successfully add jobs");
		commondata(m);
		return "index";

	}

	/* show job details by id */
	@GetMapping("/job-detail/{id}/{role}")
	public String getJobByid(@PathVariable("id") Long id, Model m) {
		m.addAttribute("title", new Title("Comany details show read carefully!", "Jobs", "/all-jobs"));
		if (id == 0) {
			m.addAttribute("msg", new ToastMessage("job id can't be zero!", "Error", "bg-danger", true));
			return "index";
		}
		Jobs jobs = this.jobService.getJob(id); /* System.out.println(jobs); */
		if (jobs != null) {
			User user = new User();
			m.addAttribute("appliedJobs", user);
			m.addAttribute("msg", new ToastMessage("Company details listed for you!", "Success", "bg-primary", true));
			m.addAttribute("jobs", jobs);
		} else {
			m.addAttribute("msg", new ToastMessage("Someting went wrong!!", "Error", "bg-danger", true));
			m.addAttribute("jobs", jobs);
		}

		return "job-detail";
	}

	/* show all jobs related with role and search by role */
	@GetMapping("/new-jobs/{title}")
	public String getJobByTitle(@PathVariable("title") String title, Model m) {
		m.addAttribute("title", new Title("searched jobs are listed!", "Jobs", "/all-jobs"));
		if (!title.equals("null") && title.length() != 0) {
			title = title.trim().replaceAll("-", " ");
			List<Jobs> jobs = this.jobService.getJobByCategory(title);
			if (jobs != null && jobs.size() != 0) {
				m.addAttribute("msg", new ToastMessage("All Jobs listed", "Success", "bg-primary", true));
				m.addAttribute("jobs", jobs);

			} else {
				m.addAttribute("msg", new ToastMessage("not match with " + title, "Success", "bg-danger", true));
				m.addAttribute("jobs", null);
			}
		} else {
			m.addAttribute("msg",
					new ToastMessage("You entered wrong keyword  " + title, "Success", "bg-danger", true));
		}

		return "job-list";

	}

	/* update job details by company with job id */
	@GetMapping("/update/{id}")
	public String updateJobByid(@PathVariable("id") Long id, Model m) {
		List<Jobs> list = new ArrayList<>();
		Jobs jobs = new Jobs();
		jobs.setRole("java");
		jobs.setSalary("434234");
		jobs.setCompanydetail("asdfa");
		jobs.setEducation("afsfda");
		jobs.setEmployment("asdf");
		jobs.setLocation("saharanpur");
		jobs.setQualification("fadf");
		jobs.setVacancy(12);
		try {
			if (id != 0) {
				Jobs j = this.jobService.updateJobs(jobs, id);
				if (j != null) {
					list.add(j);
					m.addAttribute("title", "successfully update job !");
					m.addAttribute("jobs", list);
				}
			}
		} catch (Exception e) {
			System.out.println("Error=" + e.getMessage());
			m.addAttribute("title", "not found!: " + id);
		}
		return "index";
	}

	/* delete job by job id */
	@GetMapping("/delete/{id}")
	public String deleteJobByid(@PathVariable("id") Long id, Model m) {
		try {
			if (id != 0) {
				this.jobService.deleteJob(id);
				m.addAttribute("title", "successfully deleted !");
				return "index";
			}
		} catch (Exception e) {
			System.out.println("Error=" + e.getMessage());
			m.addAttribute("title", "not found!:" + id);
		}

		return "index";

	}

	/* company can see all applied jobs by job id */
	@GetMapping("/applied-jobs/{id}")
	public String getAllAppliedJobs(@PathVariable("id") Long id, Model m) {
		try {
			if (id != 0) {
				List<User> aJobs = this.userService.getAllAppliedJobs(id);
				if (aJobs != null && aJobs.size() != 0) {
					m.addAttribute("title", "Your applied jobs !");
					m.addAttribute("applied", aJobs);
				} else {
					m.addAttribute("title", "No jobs applied yet!");
					m.addAttribute("applied", null);
				}

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			m.addAttribute("title", "something went wrong!" + e.getMessage());
		}
		return "index";
	}

	/* user create your new account */
	@PostMapping("/do-register")
	public String createUserAccount(@ModelAttribute("appliedJobs") User user, Model m,
			HttpSession session) {
//		List<User> list = new ArrayList<>();

		user.setFile("dummy.jpg");
		user.setJobs(null);
		user.setRole("ROLE_NORMAL");
		user.setPassword(pasEncoder.passwordEncoder().encode(user.getPassword()));
		User aa = this.userService.createUserProfile(user);

		if (aa == null) {
			logger.warn("Something went wrong. try again!");
		} else {
			logger.info("create account successfuly !", aa.getId());
		}
		return "redirect:/sign-up";

	}

	/* user create your new account */
	@PostMapping("/do-login")
	public String loginAccount(@ModelAttribute("appliedJobs") User user, Model m, Principal principal,
			HttpSession session) {
		List<User> list = new ArrayList<>();
		String username = principal.getName();
		System.out.println("account mails" + username);
		// appliedJobs.setFile("dummy.jpg");appliedJobs.setJobs(null);appliedJobs.setRole("NORMAL");
		user.setPassword(pasEncoder.passwordEncoder().encode(user.getPassword()));
		User aa = this.userService.checkUser(user);
		System.out.println(aa);
		if (aa != null) {
			list.add(aa);
			System.out.println(aa);
			m.addAttribute("title", "Successfuly create you account!");
			session.setAttribute("ajobid", aa.getId());
			m.addAttribute("applied", list);

			return "redirect:/user/dashboard";
		}
		m.addAttribute("appliedJobs", user);
		m.addAttribute("msg", "Account not found Please login!!");
		return "sign_in";

	}

	/* new user apply a job */
	@PostMapping("/apply-request/{role}")
	public String applyFormProcess(@ModelAttribute("appliedJobs") User user,
			@PathVariable("role") String role, @RequestParam("jobid") Long jobid, Model m, HttpSession session) {
		m.addAttribute("title", new Title("welcome !", "Jobs", "/all-jobs"));
		boolean f = false;
		Jobs jobs = this.jobService.getJob(jobid);
		User aJobs = new User();
		try {
			if (!user.getMultipartFile().isEmpty()) {
				f = fileUploadHelper.fileUploader(user.getMultipartFile());
				if (f) {
					user.setFile(user.getMultipartFile().getOriginalFilename());
					aJobs = this.userService.jobApplyByUser(user, jobid);
					if (aJobs != null) {
						session.setAttribute("ajobid", aJobs.getId());
						m.addAttribute("msg",
								new ToastMessage("Job applied  Successfuly!", "Success", "bg-primary", true));
						return "redirect:/user/profile";
					} else {
						m.addAttribute("msg", new ToastMessage("something went wrong!", "Error", "bg-danger", true));
					}
				} else {
					m.addAttribute("msg",
							new ToastMessage("something went wrong! File is not upload!", "Error", "bg-danger", true));
				}
			} else {
				m.addAttribute("msg", new ToastMessage("File Can't be Empty!!", "Error", "bg-danger", true));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		m.addAttribute("jobs", jobs);
		m.addAttribute("appliedJobs", aJobs);
		// commondata(m);
		return "job-detail";

	}
	/*
	 * @GetMapping("/apply/{jobid}") public String
	 * getApplyJob(@PathVariable("jobid") Long jobid,Model m) { List<AppliedJobs>
	 * list=new ArrayList<>(); AppliedJobs ajob=new AppliedJobs();
	 * ajob.setName("ajay");ajob.setEmail("bbbb@gmail.com");ajob.setPortfolio_url(
	 * "asdf"); ajob.setFile("newsite");ajob.setDescriptoin("fadfad");
	 * 
	 * AppliedJobs ajob2=this.userService.jobApplyByUser(ajob,jobid);
	 * list.add(ajob2); if (ajob2==null) {
	 * m.addAttribute("title","something went wrong"); }
	 * m.addAttribute("title","successfuly applied new job!");
	 * m.addAttribute("applied",list); return "index";
	 * 
	 * }
	 */

	/*
	 * existing user apply a job
	 * 
	 * @GetMapping("/update/{jobid}/appliedjob/{applyid}") public String
	 * updateAppliedJob(@PathVariable("jobid") Long jobid,@PathVariable("applyid")
	 * Long applyid,Model m) { try { List<AppliedJobs> list=new ArrayList<>();
	 * 
	 * AppliedJobs ajob=new AppliedJobs();
	 * ajob.setName("ajay rajput");ajob.setEmail("aafff@gmail.com");ajob.
	 * setPortfolio_url("asdf");
	 * ajob.setFile("newsite");ajob.setDescriptoin("fadfad");
	 * 
	 * 
	 * if (jobid!=0 && applyid!=0) { AppliedJobs aJobs=
	 * this.userService.updateAppliedJobs(jobid, applyid); list.add(aJobs);
	 * m.addAttribute("title","Job Applied successful ");
	 * m.addAttribute("applied",list); }
	 * 
	 * } catch (Exception e) {
	 * System.out.println("error update appliedjob is= "+e.getMessage());
	 * m.addAttribute("title","something went wrong!"+e.getMessage()); }
	 * 
	 * return "index";
	 * 
	 * }
	 */
	/* delete applied job by user id */
	@GetMapping("/delete/appliedjob/{id}")
	public String deleteApplyJobs(@PathVariable("id") Long id, Model m) {
		try {
			if (id != 0) {
				this.userService.deleteAppliedJob(id);
				m.addAttribute("title", "delete successful");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			m.addAttribute("title", "something went wrong!" + e.getMessage());
		}
		return "index";
	}

	

	/* user update your account by id */
	@GetMapping("/update/job/{applyid}")
	public String updateUserProfile(@PathVariable("applyid") Long applyid, Model m) {
		List<User> list = new ArrayList<>();
		if (applyid == 0) {
			m.addAttribute("title", "data not found !");
			m.addAttribute("applied", null);
		}
		User ajob = new User();
		ajob.setName("ajay");
		ajob.setEmail("ccc@gmail.com");
		ajob.setPortfolio_url("asdf");
		ajob.setFile("newsite");
		ajob.setDescriptoin("fadfad");
		User applied = this.userService.updateUserDetails(ajob, applyid);
		list.add(applied);
		if (applied != null) {
			m.addAttribute("title", "profile update succsssfuly!");
			m.addAttribute("applied", list);
		} else {
			m.addAttribute("title", "something went wrong!");
			m.addAttribute("applied", null);
		}
		return "index";
	}

}
