package com.cos.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

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
		name= "CART_SEQ_GENERATOR"
		, sequenceName= "CART_SEQ"
		, initialValue= 1
		, allocationSize= 1
		)

@Entity
public class Carts {
	
	//시퀀스
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="CART_SEQ_GENERATOR")
	private int cartnum;
	
	//개수
	@Column(nullable=true, length=10)
	private int cartcount;
	
	@Column(nullable=true, length=10)
	private int cartprice;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="usernum")
	private Users users;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="pronum")
	private Products products;
	
	@CreationTimestamp
	private Timestamp createDate;
}
	



