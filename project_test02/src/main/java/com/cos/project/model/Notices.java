package com.cos.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="notices")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name= "NOTICE_SEQ_GENERATOR"
		, sequenceName= "NOTICE_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class Notices {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="NOTICE_SEQ_GENERATOR")
	private int noticenum;
	
	@Column(nullable=false, length=100)
	private String noticetitle;
	
	@Lob 
	private String noticecontent;
	

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="username")
	private Users users;
	

	@CreationTimestamp
	private Timestamp createDate;
}
