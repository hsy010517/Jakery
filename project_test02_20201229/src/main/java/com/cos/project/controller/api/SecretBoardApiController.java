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
import com.cos.project.model.FreeBoards;
import com.cos.project.model.SecretBoards;
import com.cos.project.service.FreeBoardService;
import com.cos.project.service.SecretBoardService;

@RestController
public class SecretBoardApiController {

	@Autowired
	private SecretBoardService secretBoardService;	
	//자유게시판 글작성
	@PostMapping("/api/secretboard")
	public ResponseDto<Integer> save(@RequestBody SecretBoards secretboard, 
			@AuthenticationPrincipal PrincipalDetail principal ) {
		secretBoardService.일대일게시판글쓰기(secretboard,principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	//자유게시판 글삭제
	@DeleteMapping("/api/secretboard/{secretnum}")
	public ResponseDto<Integer> deleteById(@PathVariable int secretnum){
		System.out.println(secretnum);
		secretBoardService.일대일게시판글삭제하기(secretnum);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	//자유게시판 글수정
	@PutMapping("/api/secretboard/{secretnum}")
	public ResponseDto<Integer> update(@PathVariable int secretnum,@RequestBody SecretBoards secretboard){
		System.out.println("SecretBoardApiController:update id"+secretnum);
		System.out.println("SecretBoardApiController:update title"+secretboard.getSecrettitle());
		secretBoardService.일대일게시판글수정하기(secretnum,secretboard);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
