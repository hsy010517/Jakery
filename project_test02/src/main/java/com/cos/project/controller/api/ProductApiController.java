package com.cos.project.controller.api;


import java.io.File;
import java.io.IOException;


import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cos.project.dto.ProductsSaveRequestDto;
import com.cos.project.dto.ResponseDto;
import com.cos.project.model.Products;
import com.cos.project.service.ProductService;


@RestController
public class ProductApiController {

	@Autowired
	private ProductService productService;

	@PostMapping("/api/product")
	public ResponseDto<Integer> save(
			@RequestPart(value = "key") ProductsSaveRequestDto requestDto,
			@RequestPart(value = "file", required = false) MultipartFile file,
			@RequestPart(value = "file2", required = false) MultipartFile file2,
			@RequestPart(value = "file3", required = false) MultipartFile file3) {
		String mainFileName = file.getOriginalFilename();
		String changeMainFileNameExtension = FilenameUtils.getExtension(mainFileName).toLowerCase();
		String mainFileUrl = "C:\\image\\";
		File mainDestinationFile;
		String mainDestinationFileName;
		do {
			mainDestinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + changeMainFileNameExtension;
			mainDestinationFile = new File(mainFileUrl + mainDestinationFileName);
		} while (mainDestinationFile.exists());

		try {
			mainDestinationFile.getParentFile().mkdirs();
			file.transferTo(mainDestinationFile);
		} catch (IOException e) {
			System.out.println(e.toString());
		}
		
		String listFileName = file2.getOriginalFilename();
		String changeListFileNameExtension = FilenameUtils.getExtension(listFileName).toLowerCase();
		String listFileUrl = "C:\\image\\";
		File listDestinationFile;
		String listDestinationFileName;
		do {
			listDestinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + changeListFileNameExtension;
			listDestinationFile = new File(listFileUrl + listDestinationFileName);
		} while (listDestinationFile.exists());

		try {
			listDestinationFile.getParentFile().mkdirs();
			file2.transferTo(listDestinationFile);
		} catch (IOException e) {
			System.out.println(e.toString());
		}
		
		String infoFileName = file3.getOriginalFilename();
		String changeInfoFileNameExtension = FilenameUtils.getExtension(infoFileName).toLowerCase();
		String infoFileUrl = "C:\\image\\";
		File infoDestinationFile;
		String infoDestinationFileName;
		do {
			infoDestinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + changeInfoFileNameExtension;
			infoDestinationFile = new File(infoFileUrl + infoDestinationFileName);
		} while (infoDestinationFile.exists());

		try {
			infoDestinationFile.getParentFile().mkdirs();
			file3.transferTo(infoDestinationFile);
		} catch (IOException e) {
			System.out.println(e.toString());
		}
		
		
		Products product = new Products();
		product.setProname(requestDto.getProname());
		product.setCategories(requestDto.getCategories());
		product.setProprice(requestDto.getProprice());
		product.setProamount(requestDto.getProamount());
		product.setProdate(requestDto.getProdate());
		product.setProsave(requestDto.getProsave());
		product.setProdesc1(requestDto.getProdesc1());
		product.setProdesc2(requestDto.getProdesc2());
		product.setProcontent(requestDto.getProcontent());
		product.setMain_imgName(mainDestinationFileName);
		product.setMain_oriImgName(mainFileName);
		product.setMain_imgUrl(mainFileUrl);
		product.setList_imgName(listDestinationFileName);
		product.setList_oriImgName(listFileName);
		product.setList_imgUrl(listFileUrl);
		product.setInfo_imgName(infoDestinationFileName);
		product.setInfo_oriImgName(infoFileName);
		product.setInfo_imgUrl(infoFileUrl);

		System.out.println("----------------api 호출");
		System.out.println(requestDto);
		System.out.println(file);
		System.out.println(file2);
		System.out.println(file3);
		System.out.println(product);
		
		productService.상품업로드(product);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	

}


