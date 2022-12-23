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
import org.hibernate.annotations.Formula;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="FreeBoards")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name= "FREEBOARD_SEQ_GENERATOR"
		, sequenceName= "FREE_SEQ2"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class FreeBoards {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FREEBOARD_SEQ_GENERATOR")
	private int freenum;
	
	@Column(nullable=false, length=100)
	private String freetitle;
	
	@Lob 
	private String freecontent;
	
	@Column
	private int count;
	
	@Formula("(SELECT count(1) FROM freereplys f WHERE f.Freeboardsnum = freenum)")
	private int freereplycnt;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="username")
	private Users users;
	
	@OneToMany(mappedBy="freeboards", fetch=FetchType.EAGER,cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"freeboards"})
	private List<FreeReplys> freereply;
	
	@OneToMany(mappedBy="freeboards", fetch=FetchType.EAGER,cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"freeboards"})
	private List<RecommendLikes> recommend;
	
	@Formula("(SELECT count(1) FROM recommendliks rec WHERE rec.Freeboardsnum = freenum)")
	private int recommendcnt;

	@CreationTimestamp
	private Timestamp freecreateDate;
}
