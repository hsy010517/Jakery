package com.cos.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Users;
import com.cos.project.repository.FreeboardRepository;

@Service
public class FreeBoardService {

	@Autowired
	private FreeboardRepository freeboardRepository;


	@Transactional
	public void 자유게시판글쓰기(FreeBoards freeboard, Users user) { // title, content
		freeboard.setCount(0);
		freeboard.setUsers(user);
		freeboardRepository.save(freeboard);
	}
	@Transactional(readOnly = true)
	public Page<FreeBoards> 글목록(Pageable pageable) {
		return freeboardRepository.findAll(pageable);
	}
	
	@Transactional
	/* (readOnly = true) 조회수 상승을 위해*/
	
	public FreeBoards 자유게시판글상세보기(int freenum) {
		FreeBoards fb=freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패1: 아이디를 찾을 수 없습니다.");
		});
		int count=fb.getCount();
		count=count+1;
		fb.setCount(count);
		return freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패2: 아이디를 찾을 수 없습니다.");
		});
	}
	
	
	@Transactional(readOnly = true)
	public FreeBoards 자유게시판수정글상세보기(int freenum) {
		return freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("수정글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}
	@Transactional
	public void 자유게시판글삭제하기(int freenum) {
		freeboardRepository.deleteById(freenum);
	}
	@Transactional
	public void 자유게시판글수정하기(int freenum, FreeBoards requestBoard) {
		FreeBoards freeboard = freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
		}); 
		freeboard.setFreetitle(requestBoard.getFreetitle());
		freeboard.setFreecontent(requestBoard.getFreecontent());
	}
	
	
}

