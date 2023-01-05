package com.cos.project.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.project.config.auth.PrincipalDetail;
import com.cos.project.dto.ResponseDto;
import com.cos.project.model.Recommends;
import com.cos.project.service.RecommendService;

@RestController
public class RecommendApiController {
	@Autowired
	RecommendService recommendService;
	
	@PostMapping("/api/freeboard/{recommendfreeboardnum}/recommend")
	public ResponseDto<Integer> recommendSave(@PathVariable int recommendfreeboardnum, @RequestBody Recommends recommend, 
			@AuthenticationPrincipal PrincipalDetail principal) {
		
		System.out.println("추천클릭시 저장 메소드 호출");
		System.out.println(recommendfreeboardnum+" "+recommend);
		
		recommendService.추천저장(recommendfreeboardnum, recommend, principal.getUser());
		recommendService.추천user(recommendfreeboardnum,principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	//추천 삭제
	@DeleteMapping("/api/freeboard/{recommendfreeboardnum}/recommend")
	public ResponseDto<Integer> recommendDelete(@AuthenticationPrincipal PrincipalDetail principal, @PathVariable int recommendfreeboardnum){
		System.out.println("댓글 삭제1"+principal.getUser().getUserid());
		System.out.println("댓글 삭제1"+recommendfreeboardnum);
		recommendService.추천삭제recommend(principal.getUser().getUserid(),recommendfreeboardnum);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),0);
	}
}

