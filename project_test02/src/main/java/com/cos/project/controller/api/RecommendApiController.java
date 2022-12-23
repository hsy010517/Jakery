package com.cos.project.controller.api;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cos.project.config.auth.PrincipalDetail;
import com.cos.project.dto.ResponseDto;
import com.cos.project.model.RecommendLikes;
import com.cos.project.service.RecommendService;


@Controller 
public class RecommendApiController {
	
	@Autowired
	private RecommendService recommendService;

 @PostMapping("/api/post/{freenum}/like")
 @PreAuthorize("isAuthenticated()") 
 public ResponseDto<Integer> postLike(@PathVariable(name = "likenum") int freenum
		,@RequestBody RecommendLikes recommendLike, @AuthenticationPrincipal PrincipalDetail principal) {
	 recommendService.추천저장(freenum, principal.getUser(),recommendLike); 
	 return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	 } 
 }

