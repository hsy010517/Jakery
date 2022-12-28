package com.cos.project.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.project.config.auth.PrincipalDetail;
import com.cos.project.dto.ResponseDto;
import com.cos.project.model.Notices;
import com.cos.project.service.NoticeService;

@RestController
public class NoticeApiController {
	
	@Autowired
	private NoticeService noticeService;

	@PostMapping("/api/notice")
	public ResponseDto<Integer> save(@RequestBody Notices notice, @AuthenticationPrincipal PrincipalDetail principal){
		noticeService.글쓰기(notice, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@DeleteMapping("/api/notice/{noticenum}")
	public ResponseDto<Integer> deleteById(@PathVariable int noticenum){
		noticeService.글삭제하기(noticenum);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/api/notice/{noticenum}")
	public ResponseDto<Integer> update(@PathVariable int noticenum,@RequestBody Notices notice){
		System.out.println("수정후:"+notice);
		noticeService.글수정하기(noticenum, notice);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
}
