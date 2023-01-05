package com.cos.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.Users;
import com.cos.project.repository.UserRepository;

@Service
public class AdminMemberListService {
	
	@Autowired
	UserRepository userRepository;
	
	@Transactional(readOnly = true)
	public List<Users> 어드민회원목록() {
		return userRepository.findAll();
	}
}
