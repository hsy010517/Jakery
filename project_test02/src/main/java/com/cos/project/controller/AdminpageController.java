package com.cos.project.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.project.model.Users;
import com.cos.project.service.AdminMemberListService;
import com.cos.project.service.ProductService;
import com.cos.project.service.UserService;

@Controller
public class AdminpageController {
	   @Autowired
	   private UserService userService;

	@Autowired
	private ProductService productService;
	@Autowired
	private AdminMemberListService adminMemberListService;
	
	@GetMapping({"/adminpage"})
	public String adminpage(Model model) {
		model.addAttribute("products",productService.상품목록());
		model.addAttribute("users", adminMemberListService.어드민회원목록());
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
	
	@GetMapping({"/adminpageProduct"})
	public String adminpageProduct() {
		return "adminpage/adminpageProduct";

	}
	
	@GetMapping({"/adminpageMemberList"})
	public String adminpageMemberList(Model model) {
		return "adminpage/adminpageMemberList";
	}


}
