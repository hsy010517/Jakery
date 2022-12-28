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


@Service
public class RecommendService {
	
	@Autowired 
	RecommendRepository recommendRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	
	@Transactional
	public void 추천저장(int freenum, Users user, Recommends recommend) {
	  
	FreeBoards freeboard = freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
		return new IllegalArgumentException("추천누르기 실패: 게시글의 아이디를 찾을 수 없습니다.");
	}); 
	
	recommend.setUsers(user);
	recommend.setRecommendfreeboards(freeboard);
	recommendRepository.save(recommend);
	}
	
	
	
	@Transactional
	public  Page<Recommends> 추천출력(Pageable pageable) {
		return recommendRepository.findAll(pageable);

	}
} 


