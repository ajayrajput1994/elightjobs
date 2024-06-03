package com.naukari.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/author")
public class AuthorController {
	@GetMapping("/dash")
	public String dashboard() {
		return "author_dash";
	}
}
