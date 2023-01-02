package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.service.RecommendService;

@Controller
public class RecommendController {
	
	@Autowired
	private RecommendService recommendService;

	//자유게시판 상세창에 freenum과 userid 통해 자유게시판의 recommendcnt 출력
    @GetMapping("/auth/freeboard/{recommendid}/recommend")
    public String recommendList(@PathVariable int recommendid, Model model,@PageableDefault (size=50,sort="recommendid",direction=Sort.Direction.DESC) Pageable pageable) {
    	System.out.println("추천출력 호출 recommendfreenum :"+recommendid);
		model.addAttribute("recommends",recommendService.추천목록(pageable));
        return "board/recommend";
    }
	//추천 페이지
	// @GetMapping("/auth/freeboard/{recommendfreeboard}/recommend")
  	//	public String findByRecommendid(@PathVariable int recommendfreeboard, Model model) {
  	//		System.out.println("추천페이지 호출 recommendfreeboard"+recommendfreeboard);
  	//		model.addAttribute("recommend",recommendService.추천페이지(recommendfreeboard));
  	//		return "board/freeDetail";
  	//	}
}