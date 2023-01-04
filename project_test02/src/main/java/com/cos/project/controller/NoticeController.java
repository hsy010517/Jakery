package com.cos.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.project.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@GetMapping({ "/auth/notice" })
	public String notice(Model model,
			@PageableDefault(size = 10, sort = "noticenum", direction = Sort.Direction.DESC) Pageable pageable) {

		model.addAttribute("notices", noticeService.글목록(pageable));
		return "news/notice";
	}

	@GetMapping({ "/notice/saveForm" })
	public String saveForm() {
		return "news/noticeSaveForm";
	}

	@GetMapping({ "/notice/{noticenum}/updateForm" })
	public String updateForm(@PathVariable int noticenum, Model model) {
		model.addAttribute("notice", noticeService.글상세보기(noticenum));
		return "news/noticeUpdateForm";
	}

	@GetMapping("/notice/{noticenum}")
	public String findBynoticenum(@PathVariable int noticenum, Model model) {
		model.addAttribute("notice", noticeService.글상세보기(noticenum));
		return "news/noticeDetail";
	}

}
