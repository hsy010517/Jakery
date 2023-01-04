package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Users;
import com.cos.project.repository.UserRepository;

public class FindIdService {
	
	@Autowired
	UserRepository userRepository;
	
	@Transactional
	public void 아이디찾기(String username) {
		Users user = userRepository.findByUsername(username).orElseThrow(() -> {
			return new IllegalArgumentException("이름 찾기 실패: 해당 이름은 없습니다.");
		});
		
	}
}
