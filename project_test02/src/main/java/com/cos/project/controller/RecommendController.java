package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Users;
import com.cos.project.service.RecommendService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class RecommendController {
	
	@Autowired
	private RecommendService recommendService;

//	자유게시판 상세창에 freenum과 userid 통해 자유게시판의 recommendcnt 출력
    @GetMapping("recommend/{freenum}")
    @ResponseStatus(value = HttpStatus.OK)
    public String getFreeboard(@PathVariable(name = "likenum") FreeBoards freenum, Users user, Model model) {
    	System.out.println("추천출력 호출 freenum :"+freenum+"Userid : "+user);
		model.addAttribute("recommendService",recommendService.추천출력(freenum,user));
		/* PostDTO post = recommendService.getPost(id); */

        return "board/freeDetail";
    }
}