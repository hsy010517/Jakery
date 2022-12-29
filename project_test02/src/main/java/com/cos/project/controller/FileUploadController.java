package com.cos.project.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FileUploadController {
	@GetMapping(value="/image")
	public ResponseEntity<Resource> display(@Param("filename") String filename){
		String path = "C:\\image\\";
		
		Resource resource = new FileSystemResource(path+filename);
		if(!resource.exists()) 
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
			HttpHeaders header = new HttpHeaders();
			Path filePath = null;
			
			try {
				filePath =Paths.get(path+filename);
				header.add("Content-Type", Files.probeContentType(filePath));
			} catch(IOException e) {
				e.printStackTrace();
			}
			return new ResponseEntity<Resource>(resource,header,HttpStatus.OK);
	}
	
}
