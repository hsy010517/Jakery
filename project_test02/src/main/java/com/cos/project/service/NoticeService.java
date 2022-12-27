package com.cos.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.project.model.Notices;
import com.cos.project.model.Users;
import com.cos.project.repository.NoticeRepository;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeRepository noticeRepository;
	
	@Transactional
	public void 글쓰기(Notices notice,Users user) {
		notice.setUsers(user);
		noticeRepository.save(notice);
	}
	
	@Transactional(readOnly=true)
	public Page<Notices> 글목록(Pageable pageable){
		return noticeRepository.findAll(pageable);
		
	}
	
	@Transactional(readOnly=true)
	public Notices 글상세보기(int noticenum) {
		return noticeRepository.findByNoticenum(noticenum).orElseThrow(() -> {
			return new IllegalArgumentException("해당 공지를 찾을 수 없습니다.");
		});
	}
	
	@Transactional
	public void 글삭제하기(int noticenum) {
		noticeRepository.deleteById(noticenum);
	}
	
	@Transactional
	public void 글수정하기(int noticenum, Notices requestnotice) {
		Notices notice = noticeRepository.findByNoticenum(noticenum).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패 : 공지 번호를 찾을 수 없습니다.");
		});
		notice.setNoticetitle(requestnotice.getNoticetitle());
		notice.setNoticecontent(requestnotice.getNoticecontent());
	}
}
