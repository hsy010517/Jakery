package com.cos.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindIdController {

	@GetMapping("/auth/idCheck")
	public String idcheck() {
		return "user/idCheck";
	}
}
