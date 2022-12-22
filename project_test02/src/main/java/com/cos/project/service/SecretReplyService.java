package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.SecretBoards;
import com.cos.project.model.SecretReplys;
import com.cos.project.model.Users;
import com.cos.project.repository.SecretBoardRepository;
import com.cos.project.repository.SecretReplyRepository;

@Service
public class SecretReplyService {
	@Autowired
	SecretReplyRepository secretreplyRepository;
	@Autowired
	SecretBoardRepository secretboardRepository;
	
	@Transactional
	public void 일대일게시판댓글쓰기(int secretreplynum, SecretReplys requestReplys, Users user) {
		SecretBoards secretboard = secretboardRepository.findBySecretnum(secretreplynum).orElseThrow(() -> {
			return new IllegalArgumentException("1:1댓글 쓰기 실패: 게시글 아이디를 찾을 수 없습니다.");
		}); 
		requestReplys.setUsers(user);
		requestReplys.setSecretboards(secretboard);
		secretreplyRepository.save(requestReplys);
	}
	@Transactional
	public void 일대일게시판댓글삭제(int replynum) {
		secretreplyRepository.deleteById(replynum);
	}
	
	@Transactional
	public Page<SecretReplys> 일대일게시판댓글목록(Pageable pageable) {
		return secretreplyRepository.findAll(pageable);
	}
}
