package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.project.service.RecommendService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class RecommendController {
	
	@Autowired
	private RecommendService recommendService;

//	자유게시판 상세창에 freenum과 userid 통해 자유게시판의 recommendcnt 출력
    @GetMapping("recommend/{freenum}")
    public String getFreeboard(@PathVariable(name = "likenum") int recommendfreenum, Model model,@PageableDefault (size=50,sort="freereplynum",direction=Sort.Direction.DESC) Pageable pageable) {
    	System.out.println("추천출력 호출 freenum :"+recommendfreenum);
		model.addAttribute("recommendPages",recommendService.추천출력(pageable));
		/* PostDTO post = recommendService.getPost(id); */

        return "board/freeDetail";
    }
}