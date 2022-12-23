package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.RecommendLikes;
import com.cos.project.model.Users;

@Repository
public interface RecommendLikeRepository  extends JpaRepository<RecommendLikes, Long> {

    Optional<RecommendLikes> findByFreeboardsAndUsers(FreeBoards freeboard, Users user);
}