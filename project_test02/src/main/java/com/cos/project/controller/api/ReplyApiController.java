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
import com.cos.project.model.Replys;
import com.cos.project.service.ReplyService;


@RestController
public class ReplyApiController {
	
	@Autowired
	ReplyService replyService;
	
	//댓글 작성
	
	@PostMapping("/api/freeboard/{freenum}/reply")
	public ResponseDto<Integer> replySave(@PathVariable int freenum, @RequestBody Replys reply, 
			@AuthenticationPrincipal PrincipalDetail principal) {
		
		System.out.println("post 댓글 작성 메소드 호출");
		System.out.println(freenum+" "+reply);
		
		replyService.댓글쓰기(freenum, reply, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
			//댓글 삭제
			@DeleteMapping("/api/freeboard/reply/{deletenum}")
			public ResponseDto<Integer> replyDelete(@PathVariable int deletenum){
				System.out.println("댓글 삭제1"+deletenum);
				replyService.댓글삭제(deletenum);
				return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
			}
}
