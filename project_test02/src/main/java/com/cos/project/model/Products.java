package com.cos.project.model;

import java.sql.Timestamp;
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
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="Products")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@SequenceGenerator(
		name= "PRODUCT_SEQ_GENERATOR"
		, sequenceName= "PRODUCT_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class Products {
	
	//시퀀스
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PRODUCT_SEQ_GENERATOR")
	private int pronum;
	
	//분류 : bread, dessert, baking
	@Enumerated(EnumType.STRING)
	private CategoryType categories;
	
	//상품이름
	@Column(nullable=false, length=30)
	private String proname;
	
	//상품가격
	@Column(nullable=true, length=10)
	private int proprice;
	
	//상품재고
	@Column(nullable=true, length=10)
	private int proamount;
	
	//유통기한
	@Column(nullable=false, length=50)
	private String prodate;
	
	//보관방법
	@Column(nullable=false, length=50)
	private String prosave;
	
	//1줄설명
	@Column(nullable=false, length=50)
	private String prodesc1;
	
	//문단 설명
	@Column(nullable=false, length=200)
	private String prodesc2;
	
	//상세 정보(product detail sub설명란)
	@Lob 
	private String procontent;
	
	//상품 메인 이미지 (product detail)
	private String main_imgName; //이미지 파일명
    private String main_oriImgName; //원본 이미지 파일명
    private String main_imgUrl; //이미지 조회 경로

	//상품 리스트 이미지 (product list)
	private String list_imgName; //이미지 파일명
    private String list_oriImgName; //원본 이미지 파일명
    private String list_imgUrl; //이미지 조회 경로

	//상품 info 이미지 (product detail sub설명란)
	private String info_imgName; //이미지 파일명
    private String info_oriImgName; //원본 이미지 파일명
    private String info_imgUrl; //이미지 조회 경로

    
//	@Formula("(SELECT count(1) FROM reviews r WHERE r.pronum = reviewnum)")
//	private int reviewcnt;

	
	@OneToMany(mappedBy="products", fetch=FetchType.EAGER,cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"products"})
	private List<Reviews> review;


	@CreationTimestamp
	private Timestamp procreateDate;
}
