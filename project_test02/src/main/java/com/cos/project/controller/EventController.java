package com.cos.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	
	@GetMapping({"/auth/event"})
	public String main() {
		return "news/event";
	}

}
