package com.cos.project.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Table(name="secretboards")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name= "SECRETBOARD_SEQ_GENERATOR"
		, sequenceName= "SECRET_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class SecretBoards {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SECRETBOARD_SEQ_GENERATOR")
	private int secretnum;
	
	@Column(nullable=false, length=100)
	private String secrettitle;
	
	@Lob 
	private String secretcontent;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="username")
	private Users users;
	
	@OneToMany(mappedBy="secretboards", fetch=FetchType.EAGER,cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"secretboards"})
	private List<SecretReplys> secretreply;
	

	@CreationTimestamp
	private Timestamp createDate;
}