package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.cos.project.model.FreeBoards;
import com.cos.project.model.FreeReplys;
import com.cos.project.model.Users;
import com.cos.project.repository.FreeboardRepository;
import com.cos.project.repository.FreeReplyRepository;

@Service
public class FreeReplyService {

	@Autowired
	FreeReplyRepository replyRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	
	@Transactional
	public void 자유게시판댓글쓰기(int freenum, FreeReplys requestReplys, Users user) {
		FreeBoards freeboard = freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("댓글 쓰기 실패: 게시글 아이디를 찾을 수 없습니다.");
		}); 
		requestReplys.setUsers(user);
		requestReplys.setFreeboards(freeboard);
		replyRepository.save(requestReplys);
	}
	@Transactional
	public void 자유게시판댓글삭제(int replynum) {
		replyRepository.deleteById(replynum);
	}
	
	@Transactional
	public Page<FreeReplys> 자유게시판댓글목록(Pageable pageable) {
		return replyRepository.findAll(pageable);
	}

}
