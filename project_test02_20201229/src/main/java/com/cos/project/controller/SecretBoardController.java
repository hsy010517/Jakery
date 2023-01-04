package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.service.SecretBoardService;

@Controller
public class SecretBoardController {
	
	@Autowired
	SecretBoardService secretBoardService;
	
	//1:1게시판 목록
	@GetMapping({"/board/secretBoard"})
	public String secretBoard(Model model,@PageableDefault(size=3,sort="secretnum",direction=Sort.Direction.DESC) Pageable pageable) {
		System.out.println("a");
		
		model.addAttribute("secretboards", secretBoardService.일대일게시판글목록(pageable));	
		return "board/secretBoard"; 
	}
	
	//1:1 게시글 작성
			//USER 권한이 필요
			@GetMapping({"/secretboard/secretSaveForm"})
			public String secretSaveForm() {
				return "board/secretSaveForm";
			}
			
			//글 상세보기
			@GetMapping("/secretboard/{secretnum}")
			public String findBySecretnum(@PathVariable int secretnum, Model model) {
				System.out.println("글상세 호출"+secretnum);
				model.addAttribute("secretboard",secretBoardService.일대일게시판글상세보기(secretnum));
				return "board/secretDetail";
			}
			
			
			//일대일 게시판 수정하기
			@GetMapping("/secretboard/{secretnum}/secretUpdateForm")
			public String updateForm(@PathVariable int secretnum, Model model) {
				model.addAttribute("secretboard",secretBoardService.일대일수정글상세보기(secretnum));
				return "board/secretUpdateForm";
			}
			
}