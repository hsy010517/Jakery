package com.cos.project.service;

import java.util.Optional;

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
import com.cos.project.repository.UserRepository;

//@RequiredArgsConstructor
@Service
public class RecommendService {
	@Autowired
	RecommendRepository recommendRepository;
	@Autowired
	FreeboardRepository freeboardRepository;
	@Autowired
	UserRepository userRepository;

	@Transactional
	public void 추천저장(int recommendfreenum, Recommends recommend, Users user) { // title, content
		FreeBoards freeBoards = freeboardRepository.findByFreenum(recommendfreenum).orElseThrow(() -> {
			return new IllegalArgumentException("추천등록 실패: 게시글 아이디를 찾을 수 없습니다.");
		});

		recommend.setRecommendfreeboard(freeBoards);
		recommend.setUsers(user);
		recommendRepository.save(recommend);

	}

	@Transactional
	public void 추천삭제(int recommendid) {

		recommendRepository.deleteById(recommendid);

	}
	@Transactional
	public  void 추천삭제recommend(String recommenduserid, int recommendfreeboardnum ) {

		FreeBoards freeBoard = freeboardRepository.findByFreenum(recommendfreeboardnum).orElseThrow(() -> {
			return new IllegalArgumentException("게시글 찾기 실패: 게시글 아이디를 찾을 수 없습니다.");
		});
		Users user = userRepository.findByUserid(recommenduserid).orElseThrow(() -> {
			return new IllegalArgumentException("회원찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		
		System.out.println("추천userboard" + freeBoard);
		System.out.println("추천user" + user);
		recommendRepository.deleteByRecommendfreeboardAndUsers(freeBoard,user);
		}
	@Transactional
	public  boolean 추천존재확인(String recommenduserid, int recommendfreeboardnum ) {
		boolean result;
		FreeBoards freeBoard = freeboardRepository.findByFreenum(recommendfreeboardnum).orElseThrow(() -> {
			return new IllegalArgumentException("게시글 찾기 실패: 게시글 아이디를 찾을 수 없습니다.");
		});
		Users user = userRepository.findByUserid(recommenduserid).orElseThrow(() -> {
			return new IllegalArgumentException("회원찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		
		result=recommendRepository.existsByRecommendfreeboardAndUsers(freeBoard,user);
		return result;
		}


	@Transactional
	public Page<Recommends> 추천목록(Pageable pageable) {
		return recommendRepository.findAll(pageable);
	}

	@Transactional
	public Recommends 추천user(int Freenum, Users principaluser) {
		FreeBoards freeBoard = freeboardRepository.findByFreenum(Freenum).orElseThrow(() -> {
			return new IllegalArgumentException("게시글 찾기 실패: 게시글 아이디를 찾을 수 없습니다.");
		});
		Users user = userRepository.findByUserid(principaluser.getUserid()).orElseThrow(() -> {
			return new IllegalArgumentException("회원찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		System.out.println("추천userboard" + freeBoard);
		System.out.println("추천user" + user);
		

		return recommendRepository.findByRecommendfreeboardAndUsers(freeBoard, user).orElseThrow(() -> {	
			 return new IllegalArgumentException("fail to find recommend board");
		});
		

	}

	// public List<Recommends> 추천목록() {
	// return recommendRepository.findAll();
	// }
	@Transactional
	public Optional<Recommends> 추천페이지(int recommendid) {
		return recommendRepository.findByRecommendid(recommendid);
	}

}
