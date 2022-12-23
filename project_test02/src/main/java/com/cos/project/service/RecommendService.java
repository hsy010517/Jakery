package com.cos.project.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.RecommendLikes;
import com.cos.project.model.Users;
import com.cos.project.repository.FreeboardRepository;
import com.cos.project.repository.RecommendLikeRepository;


@Service
public class RecommendService {
	
	@Autowired 
	RecommendLikeRepository recommendLikeRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	
	@Transactional
	public void 추천저장(int freenum, Users user, RecommendLikes recommendLike) {
	  
	FreeBoards freeboard = freeboardRepository.findByFreenum(freenum).orElseThrow(() -> {
		return new IllegalArgumentException("추천누르기 실패: 게시글의 아이디를 찾을 수 없습니다.");
	}); 
	
	recommendLike.setUsers(user);
	recommendLike.setFreeboards(freeboard);
	
	Optional<RecommendLikes> byPostAndUser = recommendLikeRepository.findByFreeboardsAndUsers(freeboard, user);
	  
		byPostAndUser.ifPresentOrElse( // 좋아요 있을경우 삭제 
			postLike -> { 
				recommendLikeRepository.delete(recommendLike); 
				/*post.discountLike(recommendLike); */
				
			}, //좋아요가 없을 경우 좋아요 추가 
			() -> {  recommendLikeRepository.save(recommendLike); } 
		);
	}
	
	
	@Transactional
	public  RecommendLikes 추천출력(FreeBoards freeBoards, Users user) {
		return recommendLikeRepository.findByFreeboardsAndUsers(freeBoards, user).orElseThrow(() -> {
			return new IllegalArgumentException("추천출력 실패2: 게시판과 유저의 아이디를 찾을 수 없습니다.");
		});

	}
} 
/*
 * private Users getUserInService(String email) { // TODO Auto-generated method
 * stub return null; }
 * 
 * private Recommends getRecommendsInService(Long postId) { // TODO
 * Auto-generated method stub return null; }
 * 
 * }
 */

