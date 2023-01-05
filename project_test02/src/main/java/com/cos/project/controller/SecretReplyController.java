package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.service.SecretReplyService;

@Controller
public class SecretReplyController {
	@Autowired
	SecretReplyService secretreplyService;
	//댓글 목록
		@GetMapping({"/secretboard/{secretreplynum}/secretreply"})
		public String index(@PathVariable int secretreplynum,Model model,
			@PageableDefault(size=50,sort="secretreplynum",direction=Sort.Direction.DESC) Pageable pageable) {
			System.out.println("a");
			
			model.addAttribute("secretreplyboards", secretreplyService.일대일게시판댓글목록(pageable));	
			return "board/secretReplyBoard"; 
		}
		//댓글 작성
		/*
		 * @GetMapping({"/board/reply"}) public String replyBoard() {
		 * return"board/replyBoard"; }
		 */
		
		//리플라이 저장후
		@GetMapping({"/secretboard/secretreply"})
		public String replys() {
			return "board/secretDetail";
		
		}

}
