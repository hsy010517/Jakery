package com.cos.project.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name="USER_SEQ_GENERATOR"
		, sequenceName= "USER_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class Users {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_SEQ_GENERATOR")
	private int num;
	
	@Column(nullable=false, length=30, unique=true)
	private String userid;
	
	
	@Column(nullable=false, length=30, unique=true)
	private String username;
	
	@Column(nullable=false, length=100)
	private String password;
	
	@Column(nullable=false, length=50)
	private String email;
	
	@Column(nullable=false, length=100)
	private String address;
	
	@Column(nullable=false, length=100)
	private String postnum;
	
	@Column(length=100)
	private String subaddress;
	
	@ColumnDefault("'user'")
	@Enumerated(EnumType.STRING)
	private RoleType roles;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	@OneToMany(mappedBy="users", fetch=FetchType.EAGER,cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"users"})
	private List<Recommends> recommend;
	/*
	 * @OneToMany(fetch = FetchType.LAZY, mappedBy = "user", cascade =
	 * CascadeType.REMOVE) private List<RecommendLikes> postLikeList = new
	 * ArrayList<>();
	 * 
	 * public void mappingPostLike(RecommendLikes postLike) {
	 * this.postLikeList.add(postLike); }
	 */
	
}
