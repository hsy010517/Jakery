package com.cos.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor

public class Recommends {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) 
	private int recommendid;
		 
	@ManyToOne(fetch = FetchType.LAZY,optional = true)
	@JoinColumn(name = "recommenduserid", foreignKey = @ForeignKey(name = "fk_RecommendLike_Users")) 
	private Users users;
	 
	@ManyToOne(fetch = FetchType.LAZY)  
	@JoinColumn(name = "recommendfreenum", foreignKey = @ForeignKey(name = "fk_RecommendLike_Freeboards")) 
	private FreeBoards recommendfreeboard;
	

}
