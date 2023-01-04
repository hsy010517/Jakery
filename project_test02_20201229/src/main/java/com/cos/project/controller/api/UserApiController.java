package com.cos.project.controller.api;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.project.dto.ResponseDto;
import com.cos.project.model.Users;
import com.cos.project.service.UserService;


@RestController
public class UserApiController {
	


	@Autowired //
	private UserService userService;

	@PostMapping("/auth/joinProc") // 회원가입 로직 실행
	public ResponseDto<Integer> save(@RequestBody Users user) {
		System.out.println("UserApiController 호출됨");
		userService.회원가입(user);
		System.out.println("회원가입 실행");
		return new ResponseDto<>(HttpStatus.OK.value(), 1);
	}

	
	@PostMapping("/idcheck.do") 
	public ResponseDto<Integer> idcheck(@RequestBody Users user) {
		System.out.println("idcheck실행");
		int count = 0;
		count = userService.idCheck(user.getUserid());
		System.out.println(count);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),count);
	}

	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody Users user) {
		userService.회원수정(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}