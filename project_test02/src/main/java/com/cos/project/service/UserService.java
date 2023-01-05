package com.cos.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.Products;
import com.cos.project.model.RoleType;
import com.cos.project.model.Users;
import com.cos.project.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder encodeer;

	// 회원가입시 작동
	@Transactional
	public void 회원가입(Users user) {

		String rawPassword = user.getPassword(); // 원본
		String encPassword = encodeer.encode(rawPassword); // 암호화
		user.setPassword(encPassword);
		user.setRoles(RoleType.ADMIN);
		userRepository.save(user); // 하나의 트랙잭션
	}

	@Transactional
	public void 회원수정(Users user) {
		Users persistance = userRepository.findByUserid(user.getUserid()).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		persistance.setPassword(encPassword);
		persistance.setEmail(user.getEmail());
		persistance.setAddress(user.getAddress());
		persistance.setPostnum(user.getPostnum());
		persistance.setSubaddress(user.getSubaddress());

	}

	@Transactional(readOnly = true)
	public int idCheck(String userid) {
		int cnt = userRepository.countByUserid(userid);
		return cnt;
	}
 

	
	@Transactional
	public void 회원삭제(Users user) {
		Users persistance = userRepository.findByUserid(user.getUserid()).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		userRepository.delete(persistance);
	}

}