package com.naukari.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.naukari.model.Roles;
import com.naukari.model.User;
import com.naukari.service.CategoryService;
import com.naukari.service.JobService;
import com.naukari.service.RoleService;
import com.naukari.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private JobService jobService;
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private RoleService roleService;
	
	
	/*this is about page */
	@GetMapping({"/about"})
	public String about(Model m) {
		m.addAttribute("title","Great opportunity to grow your career!");
		return "about";
	}
	
	/*this is contact page  */
	@GetMapping({"/contact"})
	public String contact(Model m) {
		m.addAttribute("title","Great opportunity to grow your career!");
		return "contact";
	}
	
	/*this is testimonial page and show all testimonials */
	@GetMapping({"/testimonial"})
	public String testimonials(Model m) {
		m.addAttribute("title","Great opportunity to grow your career!");
		return "testimonial";
	}

	/*this is testimonial page and show all testimonials */
	@GetMapping({"/post-job"})
	public String postjobform(Model m) {
		m.addAttribute("title","Great opportunity to grow your career!");
		return "job-form";
	}
	
	/*sign up form */
	@GetMapping({"/sign-up"})
	public String signupForm(Model m) {
		List<Roles> list=new ArrayList<>();
		m.addAttribute("title","Create your account and share Your edia with other people and  grow your career!");
		m.addAttribute("appliedJobs",new User());
		List<Roles> roles=this.roleService.getRoles();
		for (Roles r:roles) {
			r.setName(r.getName().replaceAll("ROLE_",""));
			list.add(r);
		}
		m.addAttribute("roles", list);
		return "sign_up";
	}
	@GetMapping({"/sign-in"})
	public String signinForm(Model m) {
		m.addAttribute("title","Create your account and share Your edia with other people and  grow your career!");
		//Sm.addAttribute("appliedJobs",new AppliedJobs());
		return "sign_in";
	}
	
	@GetMapping({"/reset-password"})
	public String resetPasswordForm(Model m) {
		m.addAttribute("title","Create your account and share Your edia with other people and  grow your career!");
		m.addAttribute("appliedJobs",new User());
		return "reset_password";
	}
	/* new user applied jon */
	@GetMapping("/logout")
	public String logoutprofile(Model m,HttpSession session) {
		session.removeAttribute("ajobid");
		return "redirect:/";
	}
	
	/*//get data from external api 
	 * @GetMapping("/demo") public String getLocalUser(Model m){ String
	 * url="https://jsonplaceholder.typicode.com/comments"; RestTemplate rt=new
	 * RestTemplate(); Object[] user=rt.getForObject(url, Object[].class);
	 * //System.out.println(Arrays.asList(user));
	 * m.addAttribute("demo",Arrays.asList(user)); return "demouser"; }
	 */
	
	/*
	 * @PostMapping("/do-register") public String
	 * doRegister(@ModelAttribute("appliedJobs") AppliedJobs appliedJobs,Model m) {
	 * System.out.println(appliedJobs); appliedJobs.setJobs(null);
	 * m.addAttribute("appliedJobs",appliedJobs); return "sign_up"; }
	 */
}
