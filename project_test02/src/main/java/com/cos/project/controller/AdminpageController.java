package com.cos.project.controller;




import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminpageController {
	
	
	@GetMapping({"/adminpage"})
	public String adminpage() {
		return "adminpage/adminpage";
	}
	
	@GetMapping({"/adminpageBuy"})
	public String adminpageBuy() {
		return "adminpage/adminpageBuy";
	}
	@GetMapping({"/adminpageMember"})
	public String adminpageMember() {
		return "adminpage/adminpageMember";
	}
	@GetMapping({"/adminpageMemberList"})
	public String adminpageMemberList() {
		return "adminpage/adminpageMemberList";
	}
	@GetMapping({"/adminpageProduct"})
	public String adminpageProduct() {
		return "adminpage/adminpageProduct";
	}

}
