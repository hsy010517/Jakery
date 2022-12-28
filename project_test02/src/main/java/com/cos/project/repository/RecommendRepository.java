package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cos.project.model.Recommends;
import com.cos.project.model.Users;

@Repository
public interface RecommendRepository  extends JpaRepository<Recommends, Integer> {

	Optional<Recommends> findByRecommendfreenum(int recommendfreenum);
	Optional<Recommends> findByUsers(Users user);

}