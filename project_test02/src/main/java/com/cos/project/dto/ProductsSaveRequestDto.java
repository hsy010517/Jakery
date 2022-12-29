package com.cos.project.dto;

import com.cos.project.model.CategoryType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductsSaveRequestDto {

	private CategoryType categories;
	private String proname;
	private int proprice;
	private int proamount;
	private String prodate;
	private String prosave;
	private String prodesc1;
	private String prodesc2;
	private String procontent;
	
}