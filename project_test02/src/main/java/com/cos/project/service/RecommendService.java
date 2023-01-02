package com.cos.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Recommends;
import com.cos.project.model.Users;
import com.cos.project.repository.FreeboardRepository;
import com.cos.project.repository.RecommendRepository;

/*@RequiredArgsConstructor*/
@Service
public class RecommendService 
{
	@Autowired
	/* final */ RecommendRepository recommendRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	
	
	
	@Transactional
	public void 추천저장(int recommendfreenum,Recommends recommend, Users user) { // title, content
		FreeBoards freeBoards = freeboardRepository.findByFreenum(recommendfreenum).orElseThrow(() -> {
			return new IllegalArgumentException("추천등록 실패: 게시글 아이디를 찾을 수 없습니다.");
		}); 
		
			recommend.setExistnum(1);
			recommend.setRecommendfreeboard(freeBoards);
			recommend.setUsers(user);
			recommendRepository.save(recommend);

		
		
	}
	@Transactional
	public void 추천삭제(int recommendid) {
	
		recommendRepository.deleteById(recommendid);

	}
	@Transactional
	public Page<Recommends> 추천목록(Pageable pageable) {
		return recommendRepository.findAll(pageable);
	}

//	public Recommends 추천페이지(int recommendfreenum) {
//		return recommendRepository.findByRecommendfreeboard(recommendfreenum);
//	}
	
}

