package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.config.auth.PrincipalDetail;
import com.cos.project.service.FreeBoardService;
import com.cos.project.service.RecommendService;

@Controller
public class RecommendController {
	
	@Autowired
	private RecommendService recommendService;

	@Autowired
	FreeBoardService freeBoardService;
	
	//자유게시판 상세창에 freenum과 userid 통해 자유게시판의 recommendcnt 출력
    @GetMapping("/auth/freeboard/{recommendfreeboardnum}/recommend")
    public String recommendList(@PathVariable int recommendfreeboardnum, Model model, @AuthenticationPrincipal PrincipalDetail principal  ) {
    	System.out.println("추천출력 호출 recommendfreenum :"+recommendfreeboardnum);
    	if(recommendService.추천user(recommendfreeboardnum,principal.getUser())==null) {
    	
    		model.addAttribute("freeboard",freeBoardService.자유게시판글상세보기(recommendfreeboardnum));
    		
    	}else {
    		model.addAttribute("recommend",recommendService.추천user(recommendfreeboardnum,principal.getUser()));
    	}
		//model.addAttribute("recommends",recommendService.추천페이지(recommendfreenum));
        return "board/recommend";
    }
	//추천 페이지
	// @GetMapping("/auth/freeboard/{recommendfreeboard}/recommendp")
  	//	public String findByRecommendid(@PathVariable int recommendfreeboard, Model model) {
  	//		System.out.println("추천페이지 호출 recommendfreeboard"+recommendfreeboard);
  	//		model.addAttribute("recommend",recommendService.추천페이지(recommendfreeboard));
  	//		return "board/freeDetail";
  	//	}
}