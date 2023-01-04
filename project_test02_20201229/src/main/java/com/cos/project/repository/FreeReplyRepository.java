package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.FreeReplys;
import com.cos.project.model.Users;

public interface FreeReplyRepository extends JpaRepository<FreeReplys, Integer> {

	Optional<FreeReplys> findByFreereplynum(int freereplynum);
	Optional<FreeReplys> findByUsers(Users users);
	Optional<FreeReplys> findByFreereplycontent(String freereplycontent);


}
