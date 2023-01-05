package com.cos.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.Products;
import com.cos.project.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	@Transactional
	public void 상품업로드(Products product) {
		productRepository.save(product);
	}

	@Transactional(readOnly = true)
	public List<Products> 상품목록() {
		return productRepository.findAll();
	}
	
	@Transactional
	public void 상품삭제(int pronum) {
		productRepository.deleteById(pronum);
	}
	
//	@Transactional(readOnly = true)
//	public Products 카테고리별목록(Products categories) {
//		return productRepository.findByCategories(categories).orElseThrow(() -> {
//			return new IllegalArgumentException("카테고리를 찾을 수 없습니다.");
//		});
//	}

	@Transactional(readOnly = true)

	public Products 상품상세보기(int pronum) {
		return productRepository.findByPronum(pronum).orElseThrow(() -> {
			return new IllegalArgumentException("해당 상품을 찾을 수 없습니다.");
		});
	}
	
	@Transactional
	public void 상품수정(int pronum,Products requestproduct) {
		Products product = productRepository.findByPronum(pronum).orElseThrow(() -> {
			return new IllegalArgumentException("해당 상품을 찾을 수 없습니다.");
		});
	}
}
