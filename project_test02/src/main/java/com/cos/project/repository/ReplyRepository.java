package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.Replys;
import com.cos.project.model.Users;

public interface ReplyRepository extends JpaRepository<Replys, Integer> {

	Optional<Replys> findByNum(int num);
	Optional<Replys> findByUsers(Users users);
	Optional<Replys> findByContent(String content);


}
