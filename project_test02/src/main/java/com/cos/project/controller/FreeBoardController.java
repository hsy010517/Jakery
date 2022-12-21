package com.cos.project.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.service.FreeBoardService;

@Controller
public class FreeBoardController {
	
		@Autowired
		FreeBoardService freeboardService;
	
		@GetMapping({"","/"})
		public String main() {
			return "main";
		}

		/*
		 * @GetMapping({"/auth/board/freeBoard"}) public String index1(Model
		 * model,@PageableDefault(size=3,sort="num",direction=Sort.Direction.DESC)
		 * Pageable pageable) { model.addAttribute("freeboards",
		 * freeboardService.글목록(pageable)); return "board/freeBoard"; //index파일 }
		 */
		//게시글 목록
		@GetMapping({"/auth/freeBoard"})
		public String index(Model model,@PageableDefault(size=3,sort="freenum",direction=Sort.Direction.DESC) Pageable pageable) {
			System.out.println("a");
			
			model.addAttribute("freeboards", freeboardService.자유게시판글목록(pageable));	
			return "board/freeBoard"; 
		}
		//게시글 작성
		//USER 권한이 필요
		@GetMapping({"/freeboard/freeSaveForm"})
		public String freeSaveForm() {
			return "board/freeSaveForm";
		}
		
		//글 상세보기
		@GetMapping("/auth/freeboard/{freenum}")
		public String findByFreenum(@PathVariable int freenum, Model model) {
			System.out.println("글상세 호출"+freenum);
			model.addAttribute("freeboard",freeboardService.자유게시판글상세보기(freenum));
			return "board/freeDetail";
		}
		
		
		//글수정하기
		@GetMapping("/board/{freenum}/freeUpdateForm")
		public String updateForm(@PathVariable int freenum, Model model) {
			model.addAttribute("freeboard",freeboardService.자유게시판수정글상세보기(freenum));
			return "board/freeUpdateForm";
		}
		
	
}
