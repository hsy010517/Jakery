package com.cos.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import com.cos.project.model.FreeBoards;
import com.cos.project.model.Users;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name="FREEBOARD_REPLY_SEQ_GENERATOR"
		, sequenceName = "REVI_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

@Entity
public class FreeReplys {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FREEBOARD_REPLY_SEQ_GENERATOR")
	private int freereplynum;
	

	@Column(nullable=false, length=200)
	private String freereplycontent;
	
	@ManyToOne
	@JoinColumn(name="FreeBoardsNum")
	private FreeBoards freeboards;
	
	@ManyToOne
	@JoinColumn(name="usersNum")
	private Users users;
	
	@CreationTimestamp
	private Timestamp freereplycreateDate;
}
