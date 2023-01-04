package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.Users;
import com.cos.project.model.SecretReplys;

public interface SecretReplyRepository extends JpaRepository<SecretReplys, Integer> {
	Optional<SecretReplys> findBySecretreplynum(int secretreplynum);
	Optional<SecretReplys> findByUsers(Users users);
	Optional<SecretReplys> findBySecretreplycontent(String secretreplycontent);
}
