package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.SecretBoards;
import com.cos.project.model.Users;
import com.cos.project.repository.SecretBoardRepository;

@Service
public class SecretBoardService {
	
	@Autowired
	SecretBoardRepository secretBoardRepository;
	
	@Transactional
	public void 일대일게시판글쓰기(SecretBoards secretboard, Users user) { // title, content
		secretboard.setUsers(user);
		secretBoardRepository.save(secretboard);
	}
	
	@Transactional(readOnly = true)
	public Page<SecretBoards> 일대일게시판글목록(Pageable pageable) {
		return secretBoardRepository.findAll(pageable);
	}
	
	public SecretBoards 일대일게시판글상세보기(int secretnum) {
		return secretBoardRepository.findBySecretnum(secretnum).orElseThrow(() -> {
			return new IllegalArgumentException("일대일 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}
	
	@Transactional(readOnly = true)
	public SecretBoards 일대일수정글상세보기(int secretnum) {
		return secretBoardRepository.findBySecretnum(secretnum).orElseThrow(() -> {
			return new IllegalArgumentException("일대일 수정글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
		
	}
	
	@Transactional
	public void 일대일게시판글수정하기(int secretnum, SecretBoards requestBoard) {
		SecretBoards secretboard = secretBoardRepository.findBySecretnum(secretnum).orElseThrow(() -> {
			return new IllegalArgumentException("일대일 글수정하기 시, 글 찾기 실패: 아이디를 찾을 수 없습니다.");
		}); 
		secretboard.setSecrettitle(requestBoard.getSecrettitle());
		secretboard.setSecretcontent(requestBoard.getSecretcontent());
	}
	
	@Transactional
	public void 일대일게시판글삭제하기(int secretnum) {
		secretBoardRepository.deleteById(secretnum);
	}
	
}
