package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.Notices;
import com.cos.project.model.SecretBoards;

public interface NoticeRepository extends JpaRepository<Notices,Integer>{
	Optional<Notices> findByNoticenum(int noticenum);

}
