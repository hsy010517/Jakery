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
		name= "REVIEW_SEQ_GENERATOR"
		, sequenceName= "REVIEW_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class Reviews {
	//시퀀스
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="REVIEW_SEQ_GENERATOR")
	private int reviewnum;
	
	//구매테이블연결 (상품 이름 / 구매 개수 / 구매 날짜)
	
	//평점(별점)
	@Column(nullable=false, length=20)
	private int reviewscore;
	
	//상품 연결
	@ManyToOne
	@JoinColumn(name="productsNum")
	private Products products;
	
	//유저 연결
	@ManyToOne
	@JoinColumn(name="usersNum")
	private Users users;
	
	//리뷰키워드
	@Column(length=50)
	private String reviewkeyword1;
	@Column(length=50)
	private String reviewkeyword2;
	@Column(length=50)
	private String reviewkeyword3;
	
	//리뷰내용
	@Column(nullable=false, length=200)
	private String reviewcontent;
	
	//리뷰 업로드 이미지 (product detail)
	private String review_imgName; //이미지 파일명
    private String review_oriImgName; //원본 이미지 파일명
    private String review_imgUrl; //이미지 조회 경로

	@CreationTimestamp
	private Timestamp procreateDate;
}
