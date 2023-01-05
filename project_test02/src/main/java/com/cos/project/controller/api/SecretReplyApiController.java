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
import com.cos.project.model.SecretReplys;
import com.cos.project.service.SecretReplyService;

@RestController
public class SecretReplyApiController {
	
 @Autowired
 SecretReplyService replyService;
 
 @PostMapping("/api/secretboard/{secretreplynum}/secretreply")
	public ResponseDto<Integer> replySave(@PathVariable int secretreplynum, @RequestBody SecretReplys secretreply, 
			@AuthenticationPrincipal PrincipalDetail principal) {
		
		System.out.println("post 댓글 작성 메소드 호출");
		System.out.println(secretreplynum+" "+secretreply);
		
		replyService.일대일게시판댓글쓰기(secretreplynum, secretreply, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
			//댓글 삭제
			@DeleteMapping("/api/scretboard/secretreply/{secretdeletenum}")
			public ResponseDto<Integer> replyDelete(@PathVariable int secretdeletenum){
				System.out.println("댓글 삭제1"+secretdeletenum);
				replyService.일대일게시판댓글삭제(secretdeletenum);
				return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
			}
}
