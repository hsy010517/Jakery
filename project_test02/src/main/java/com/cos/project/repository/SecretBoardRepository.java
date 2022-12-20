package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.SecretBoards;

public interface SecretBoardRepository extends JpaRepository<SecretBoards, Integer>{	
	
	Optional<SecretBoards> findBySecretnum(int secretnum);

}
