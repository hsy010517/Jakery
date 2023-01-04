package com.cos.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name="SECRET_REPLY_SEQ_GENERATOR"
		, sequenceName = "SECREPL_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

@Entity
public class SecretReplys {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SECRET_REPLY_SEQ_GENERATOR")
	private int secretreplynum;
	

	@Column(nullable=false, length=200)
	private String secretreplycontent;
	
	@ManyToOne
	@JoinColumn(name="SecretBoardsNum")
	private SecretBoards secretboards;
	
	@ManyToOne
	@JoinColumn(name="usersNum")
	private Users users;
	
	@CreationTimestamp
	private Timestamp secretreplycreateDate;
	}