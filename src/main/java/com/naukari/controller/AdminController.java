package com.naukari.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naukari.helper.ToastMessage;
import com.naukari.model.Category;
import com.naukari.model.Jobs;
import com.naukari.model.Roles;
import com.naukari.model.User;
import com.naukari.service.CategoryService;
import com.naukari.service.JobService;
import com.naukari.service.RoleService;
import com.naukari.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger LOGGER=LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private UserService uService;
	@Autowired
	private JobService jobService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private RoleService roleService;
	@ModelAttribute
	public void commondata(Principal principal,Model m,HttpSession session) {
		String username=principal.getName();
		User aJob=this.uService.getprofile(username);
		List<Jobs> jobs=this.jobService.allJobs();
		List<Roles> roles=this.roleService.getRoles();
		m.addAttribute("ajobs",aJob);
		m.addAttribute("jobs",jobs);
		m.addAttribute("roles",roles);
	}
	@GetMapping({"/dash","/dashboard"})
	public String dashbaord(Principal principal,Model m,HttpSession session) {
		String username=principal.getName();
		User aJob=this.uService.getprofile(username);
		session.setAttribute("active", aJob.getName());
		return "admin/admin_dash";
	}
	@GetMapping("/account-portal/profile")
	public String adminAccountprofile() {
		return "admin/admin_profile";
	}
	
	@GetMapping("/account-portal/setting")
	public String adminAccountSetting() {
		return "admin/admin_account";
	}
	@GetMapping("/category-portal/create-category")
	public String adminCategoryCreate(Model m) {
		m.addAttribute("category",new Category());
		return "admin/add_category";
	}
	
	@GetMapping("/category-portal/all-categories")
	public String adminAllCategory(Model m) {
		List<Category> category=categoryService.getAllCategories();
		m.addAttribute("category", category);
		return "admin/all_category";
	}
	
	@GetMapping("/roles-portal/role")
	public String adminAllRoles(Model m) {
		m.addAttribute("role", new Roles());
		return "admin/create_role";
	}
	
	@PostMapping("/category-portal/create-category/creating")
	public String adminCategoryDoCreating(@ModelAttribute("category") Category category,Model m,HttpSession session) {
		if (category.getName().isEmpty()) {
			session.setAttribute("msg",new ToastMessage("Category can't be empty. try again!", "Error", "bg-danger",true));
			return "redirect:/admin/category-portal/create-category";
		}
		if (category.getId()==0) {
		Category category2=this.categoryService.addCategory(category);
		if (category2==null) {
			session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
		}else {
			session.setAttribute("msg", new ToastMessage("Create Category successfuly !", "Success", "bg-success",true));
		}}else {
			Category category2=this.categoryService.updateCategory(category, category.getId());
			if (category2==null) {
				session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
			}else {
				session.setAttribute("msg", new ToastMessage("update Category successfuly !", "Success", "bg-success",true));
			}
			return "redirect:/admin/category-portal/all-categories";
		}
		return "redirect:/admin/category-portal/create-category";
	}
	
	@GetMapping("/category-portal/delete/{catid}")
	public String deleteCatetory(@PathVariable("catid") Long catid,HttpSession session) {
		
		if (catid!=0L) {
			this.categoryService.deleteCategory(catid);
			session.setAttribute("msg", new ToastMessage("Delete Category successfuly !", "Success", "bg-success",true));
		}else {
			session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
		}
		
		return "redirect:/admin/category-portal/all-categories";
	}
	
	@GetMapping("/category-portal/update/{id}")
	public String getCategoryforUpdate(@PathVariable("id") long id,Model m,HttpSession session ) {
		if (id==0) {
			session.setAttribute("msg",new ToastMessage("Category id is not available . try again!", "Error", "bg-danger",true));
			return "redirect:/admin/category-portal/create-category";
		}
		Category category=this.categoryService.getCategory(id);
		m.addAttribute("category",category);
		return "admin/add_category";
	}
	
	@PostMapping("/roles-portal/role/creating")
	public String adminRoleCreating(@ModelAttribute("role") Roles role,Model m,HttpSession session) {
		LOGGER.info("createing role:{}",role);
		if (role.getName().isEmpty()) {
			session.setAttribute("msg",new ToastMessage("role can't be empty. try again!", "Error", "bg-danger",true));
			return "redirect:/admin/roles-portal/role";
		}
		if (role.getId()==0) {
		Roles role2=this.roleService.addRole(role);
		if (role2==null) {
			session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
		}else {
			session.setAttribute("msg", new ToastMessage("Create Role successfuly !", "Success", "bg-success",true));
		}}else {
			Roles role2=this.roleService.updateRole(role, role.getId());
			if (role2==null) {
				session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
			}else {
				session.setAttribute("msg", new ToastMessage("update role successfuly !", "Success", "bg-success",true));
			}
			return "redirect:/admin/roles-portal/role";
		}
		return "redirect:/admin/roles-portal/role";
	}
	
	@GetMapping("/roles-portal/role/delete/{id}")
	public String deleteRole(@PathVariable("id") Long id,HttpSession session) {
		
		if (id!=0L) {
			this.roleService.deleteRole(id);
			session.setAttribute("msg", new ToastMessage("Delete role successfuly !", "Success", "bg-success",true));
		}else {
			session.setAttribute("msg",new ToastMessage("Something went wrong. try again!", "Error", "bg-danger",true));
		}
		
		return "redirect:/admin/roles-portal/role";
	}
	
	@GetMapping("/roles-portal/role/update/{id}")
	public String getRoleforUpdate(@PathVariable("id") long id,Model m,HttpSession session ) {
		if (id==0) {
			session.setAttribute("msg",new ToastMessage("Category id is not available . try again!", "Error", "bg-danger",true));
			return "redirect:/admin/roles-portal/role";
		}
		Roles role=this.roleService.getRole(id);
		role.setName(role.getName().replaceAll("ROLE_", ""));
		m.addAttribute("role",role);
		return "admin/create_role";
	}

	/*show All jobs*/
	@GetMapping("/job-portal/all-jobs")
	public String showAlljobs(Model m) {
		
		return "admin/admin_all_jobs";
	}
	
	/*Open new create job form*/
	@GetMapping("/job-portal/create-job")
	public String createNewJobForm(Model m) {
		List<Category> category=categoryService.getAllCategories();
		m.addAttribute("category", category);
		m.addAttribute("job", new Jobs());
		return "admin/create_new_job";
	}
	
	/*Open  edit job form*/
	@GetMapping("/job-portal/edit-job/{id}")
	public String editJobForm(@PathVariable("id") Long id,Model m) {
		List<Category> category=categoryService.getAllCategories();
		Jobs job=jobService.getJob(id);
		m.addAttribute("category", category);
		m.addAttribute("job",job);
		return "admin/create_new_job";
	}
	
	/*Open new create job form*/
	@PostMapping("/job-portal/create-job/creating")
	public String creatingNewJob(@ModelAttribute("job") Jobs job,Model m,HttpSession session) {
		if(job.getId()==0) {
			LOGGER.info("creating new job ");
			job=jobService.createJob(job);
			session.setAttribute("msg",new ToastMessage("Creating new job !!", "Success", "bg-success",true));
			
		}else {
			LOGGER.info("updating job");
			job=jobService.updateJobs(job, job.getId());
			if (job==null) {
				session.setAttribute("msg",new ToastMessage("Something went wrong ! . try again!", "Error", "bg-danger",true));
				}else {
			session.setAttribute("msg",new ToastMessage("Update job !!", "Success", "bg-success",true));
				}
		}
		return "redirect:/admin/job-portal/create-job";
	}
	/*Open new create job form*/
	@GetMapping("/job-portal/job-details/{id}")
	public String getJobDetails(@PathVariable("id") long id,Model m) {
		Jobs job=jobService.getJob(id);
		int emp=uService.countEmp(id);
		m.addAttribute("jobdetail", job);
		m.addAttribute("empcount", emp);
		return "admin/job_details";
	}
	
}
