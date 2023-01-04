package com.cos.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	@GetMapping({"/auth/notice"})
	public String main() {
		return "board/notice";
	}

}
