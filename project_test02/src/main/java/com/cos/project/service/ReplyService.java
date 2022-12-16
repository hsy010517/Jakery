package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.cos.project.model.FreeBoards;
import com.cos.project.model.Replys;
import com.cos.project.model.Users;
import com.cos.project.repository.FreeboardRepository;
import com.cos.project.repository.ReplyRepository;

@Service
public class ReplyService {

	@Autowired
	ReplyRepository replyRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	
	@Transactional
	public void 댓글쓰기(int freenum, Replys requestReplys, Users user) {
		FreeBoards freeboard = freeboardRepository.findByNum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("댓글 쓰기 실패: 게시글 아이디를 찾을 수 없습니다.");
		}); 
		requestReplys.setUsers(user);
		requestReplys.setBoards(freeboard);
		replyRepository.save(requestReplys);
	}
	@Transactional
	public void 댓글삭제(int replynum) {
		replyRepository.deleteById(replynum);
	}
	
	@Transactional
	public Page<Replys> 댓글목록(Pageable pageable) {
		return replyRepository.findAll(pageable);
	}

}
