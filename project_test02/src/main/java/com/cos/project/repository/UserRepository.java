package com.cos.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.Users;

public interface UserRepository extends JpaRepository<Users, Long> {
	Optional<Users> findByUsername(String username);
	Optional<Users> findByUserid(String userid);
	int countByUserid(String userid);
}