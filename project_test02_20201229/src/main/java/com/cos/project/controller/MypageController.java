package com.cos.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MypageController {

	
	@GetMapping({"/mypage"})
	public String mypage() {
		return "mypage/mypage";
	}
	
	@GetMapping({"/mypageCart"})
	public String mypageCart() {
		return "mypage/mypageCart";
	}
	@GetMapping({"/mypageMember"})
	public String mypageMember() {
		return "mypage/mypageMember";
	}
	@GetMapping({"/mypageBuylist"})
	public String mypageBuylist() {
		return "mypage/mypageBuylist";
	}

}