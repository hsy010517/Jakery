package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.model.Products;
import com.cos.project.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping("/auth/product")
	public String productList(Model model) {
		model.addAttribute("products",productService.상품목록());
		return "product/productList";
	}
	
	@GetMapping("/product/{pronum}/updateForm")
	public String updateForm(@PathVariable int pronum,Model model) {
		System.out.println("호출");
		model.addAttribute("product",productService.상품상세보기(pronum));
		return "product/productUpdateForm";
	}
	
//	@GetMapping("/auth/product/{categories}")
//	public String productList(@PathVariable Products categories,Model model) {
//		model.addAttribute("product",productService.카테고리별목록(categories));
//		return "product/productList";
//	}
	
	
	@GetMapping("/product/saveForm")
	public String saveForm() {
		return "product/productForm";
	}
	
	@GetMapping("/auth/product/{pronum}")
	public String findByPronum(@PathVariable int pronum, Model model) {
		model.addAttribute("product",productService.상품상세보기(pronum));
		return "product/productDetail";
	}
	

}