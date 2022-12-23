package com.cos.project.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@SequenceGenerator(
		name="FREEBOARD_RECOMMENDLIKE_SEQ_GENERATOR"
		, sequenceName = "RECOMMEND_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)
public class RecommendLikes {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FREEBOARD_RECOMMENDLIKE_SEQ_GENERATOR") 
	private int recommendid;
		 
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userid", foreignKey = @ForeignKey(name = "fk_RecommendLike_Users")) 
	private Users users;
	 
	@ManyToOne(fetch = FetchType.EAGER)  
	@JoinColumn(name = "freenum", foreignKey = @ForeignKey(name = "fk_RecommendLike_Freeboards")) 
	private FreeBoards freeboards;
  

}
