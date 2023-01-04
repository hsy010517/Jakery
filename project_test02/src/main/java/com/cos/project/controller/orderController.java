package com.cos.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class orderController {
	@GetMapping("/product/orderForm/{pronum}")
	public String orderForm() {
		return "product/orderForm";
	}
}
