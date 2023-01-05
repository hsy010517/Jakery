package com.cos.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Recommends;
import com.cos.project.model.Users;

@Repository
public interface RecommendRepository  extends JpaRepository<Recommends, Integer> {

	Optional<Recommends> findByRecommendid(int recommendid);
	Optional<Recommends> findByUsers(Users user);
	Optional<Recommends> findByRecommendfreeboard(FreeBoards freeboard);
	Optional<Recommends> findByRecommendfreeboardAndUsers(FreeBoards freeboard,Users user);
	void deleteByRecommendfreeboardAndUsers(FreeBoards freeboard,Users user);
	boolean existsByRecommendfreeboardAndUsers(FreeBoards freeboard,Users user);
	/*
	 * static Optional<Recommends> findByPostAndUser(Recommends recommend, Users
	 * user) { // TODO Auto-generated method stub return null; }
	 */

}