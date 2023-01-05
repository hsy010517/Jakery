package com.cos.project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.project.model.Products;

public interface ProductRepository extends JpaRepository<Products,Integer>{
	Optional<Products> findByPronum(int pronum);
	Optional<Products> findByCategories(Products categories);
}


