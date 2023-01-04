package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.model.Users;
import com.cos.project.service.FreeReplyService;

@Controller
public class FreeReplyController {

		@Autowired
		FreeReplyService freereplyService;
		//댓글 목록
			@GetMapping({"/auth/freeboard/{freereplynum}/freereply"})
			public String index(@PathVariable int freereplynum,Model model,@PageableDefault(size=50,sort="freereplynum",direction=Sort.Direction.DESC) Pageable pageable) {
				System.out.println("a");
				
				model.addAttribute("freereplyboards", freereplyService.자유게시판댓글목록(pageable));	
				return "board/freeReplyBoard"; 
			}
			//댓글 작성
			/*
			 * @GetMapping({"/board/reply"}) public String replyBoard() {
			 * return"board/replyBoard"; }
			 */
			
			//리플라이 저장
			@GetMapping({"/auth/freeboard/freereply"})
			public String replys() {
				return "board/freeDetail";
			
			}
}