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
import com.cos.project.service.FreeBoardService;

@RestController
public class FreeBoardApiController {
		
		@Autowired
		private FreeBoardService freeBoardService;	
		//자유게시판 글작성
		@PostMapping("/api/freeboard")
		public ResponseDto<Integer> save(@RequestBody FreeBoards freeboard, 
				@AuthenticationPrincipal PrincipalDetail principal ) {
			freeBoardService.자유게시판글쓰기(freeboard,principal.getUser());
			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		}
		//자유게시판 글삭제
		@DeleteMapping("/api/freeboard/{freenum}")
		public ResponseDto<Integer> deleteById(@PathVariable int freenum){
			System.out.println(freenum);
			freeBoardService.자유게시판글삭제하기(freenum);
			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		}
		//자유게시판 글수정
		@PutMapping("/api/freeboard/{freenum}")
		public ResponseDto<Integer> update(@PathVariable int freenum,@RequestBody FreeBoards freeboard){
			System.out.println("FreeBoardApiController:update id"+freenum);
			System.out.println("FreeBoardApiController:update title"+freeboard.getFreetitle());
			freeBoardService.자유게시판글수정하기(freenum,freeboard);
			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		}
		
}

