package com.cos.project.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.project.model.Users;
import com.cos.project.service.UserService;

@Controller
public class UsersController {
	

	@Autowired
	private UserService UserService;
	
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	@GetMapping("/auth/findId")
	public String findId() {
		return "user/findId";
	}
	@GetMapping("/auth/modifyPwd")
	public String modifyPwd() {
		return "user/modifyPwd";
	}

	

	
	
	//유저 수정 폼 jsp있으면
	
	/*
	 * @GetMapping("/user/updateForm") public String updateForm() {
	 * return"user/updateForm"; }
	 */
}
